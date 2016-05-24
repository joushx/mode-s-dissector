modes_proto = Proto("modes","Mode S")

local f = modes_proto.fields

f.icao = ProtoField.bytes("modes.icao", "ICAO Address", "Unique aircraft identifier")
f.df = ProtoField.uint8("modes.df", "Downlink Format", base.DEC, {[0] = "Short Air to Air ACAS", [4] = "Surveillance, Altitude", [5] = "Surveillance, Identity", [11] = "Mode S Only All-Call Reply", [16] = "Long Air to Air ACAS", [17] = "ADS-B", [19] = "Military Extended Squitter",[20] = "Comm. B Altitude, IDENT Reply", [21] = "Comm. B Altitude, IDENT Reply", [22] = "Military", [24] = "Comm. D Extended Length Message"}, 0xf8, "The format of the payload")
f.ca = ProtoField.uint8("modes.ca", "Subtype", base.DEC, {[0] = "None", [5] = "Airborne Position", [6] = "Surface position", [7] = "Status", [8] = "Aircraft ID & Category", [0xa] = "Event Report", [0x61] = "Emergeny/Priority Status", [0x62] = "Target State and Status", [0x65] = "Aircraft Operational Status"}, 0x7, "The subtype of the message")
f.parity = ProtoField.bytes("modes.parity", "Parity")
f.fs = ProtoField.uint8("modes.fs", "Flight status", nil, {[0] = "No alert, No SPI, Airborne", [1] = "No alert, No SPI, Ground", [2] = "Alert, No SPI, Airborne", [3] = "Alert, No SPI, Ground", [4] = "Alert, SPI", [5] = "No alert, SPI"}, 0x7)
f.dr = ProtoField.uint8("modes.dr", "Downlink request", nil, {[0] = "No request", [1] = "Request to send Comm-B message"}, 0xf8)
f.um = ProtoField.uint8("modes.um", "Utility Message", nil, nil, 0xfe0)
f.ac = ProtoField.uint8("modes.ac", "Altitude", nil, nil, 0x1fff)
f.id = ProtoField.uint8("modes.id", "Identity (Squawk)", base.DEC, nil, 0x1fff)

function decode_parity(buffer, pinfo, tree)
  local size = buffer:len()
  tree:add(f.parity, buffer(size-3,3))
end

function modes_proto.dissector(buffer,pinfo,tree)

    -- set protocol text
    pinfo.cols.protocol = "Mode S"

    -- check if enhanced or elementary surveillance
    local modes
    if buffer:len() == 31 then

        modes = tree:add(modes_proto, buffer(0,14),"Mode S (Enhanced Surveillance)")
        pinfo.cols.info = "Enhanced Surveillance"

        local df = buffer(0,4):bitfield(0,5)

        -- control bits
        local control = modes:add(buffer(0,1), "Control bits")
        control:add(f.df, buffer(0,1))
        control:add(f.ca, buffer(0,1))

        if df ~= 4 then
          -- icao address
          modes:add(f.icao, buffer(1,3))
        end

        -- checksum
        decode_parity(buffer(0,14), pinfo, modes)

        -- call payload dissectors
        if df == 17 then
          Dissector.get("adsb"):call(buffer(4,7):tvb(), pinfo, tree)

        elseif df == 20 or df == 21 or df==24 then
          Dissector.get("commb"):call(buffer(4,7):tvb(), pinfo, tree)

        end

    else
        modes = tree:add(modes_proto, buffer(0,7),"Mode S (Elementary Surveillance)")
        pinfo.cols.info = "Elementary Surveillance"

        local df = buffer(0,1):bitfield(0,5)

        modes:add(f.df, buffer(0,1))

        if df == 4 or df == 5 then
          modes:add(f.fs, buffer(0,1))
          modes:add(f.dr, buffer(1,1))
          modes:add(f.um, buffer(1,2))

          if df == 4 then
            pinfo.cols.info = "Altitude"
            modes:add(f.ac, buffer(2,2))
          elseif df == 5 then
            pinfo.cols.info = "Identity"
            modes:add(f.id, buffer(2,2))
          end

        end

        decode_parity(buffer(0,7), pinfo, modes)
    end
end

tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(30002, modes_proto)
