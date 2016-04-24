modes_proto = Proto("mode-s","Mode S")

local f = modes_proto.fields

f.icao = ProtoField.bytes("mode-s.icao", "ICAO Address", "Unique aircraft identifier")
f.df = ProtoField.uint8("mode-s.df", "Downlink Format", base.DEC, {[0] = "Short Air to Air ACAS", [4] = "Surveillance altitude", [5] = "Surveillance IDENT Reply", [11] = "Mode S Only All-Call Reply", [16] = "Long Air to Air ACAS", [17] = "ADS-B", [19] = "Military Extended Squitter",[20] = "Comm. B Altitude, IDENT Reply", [21] = "Comm. B Altitude, IDENT Reply", [22] = "Military", [24] = "Comm. D Extended Length Message"}, 0xf8, "The format of the payload")
f.ca = ProtoField.uint8("mode-s.ca", "Subtype", base.DEC, {[0] = "None", [5] = "Airborne Position", [6] = "Surface position", [7] = "Status", [8] = "Aircraft ID & Category", [0xa] = "Event Report", [0x61] = "Emergeny/Priority Status", [0x62] = "Target State and Status", [0x65] = "Aircraft Operational Status"}, 0x7, "The subtype of the message")
f.payload = ProtoField.bytes("mode-s.payload", "Payload")
f.parity = ProtoField.bytes("mode-s.parity", "Parity")

f.typecode = ProtoField.uint8("mode-s.adsb.typecode", "Format type code", base.DEC, {[1] = "Aicraft identification", [2] = "Aicraft identification", [3] = "Aicraft identification", [4] = "Aicraft identification",[5] = "Surface position", [6] = "Surface position", [7] = "Surface position", [8] = "Surface position", [9] = "Airborne position (Baro Alt)", [10] = "Airborne position (Baro Alt)", [11] = "Airborne position (Baro Alt)", [12] = "Airborne position (Baro Alt)", [13] = "Airborne position (Baro Alt)", [14] = "Airborne position (Baro Alt)", [15] = "Airborne position (Baro Alt)", [16] = "Airborne position (Baro Alt)", [17] = "Airborne position (Baro Alt)", [18] = "Airborne position (Baro Alt)", [19] = "Airborne velocity", [20] = "Airborne position (GNSS Height)", [21] = "Airborne position (GNSS Height)", [22] = "Airborne position (GNSS Height)", [23] = "Test message" }, 0xf8)
f.ident = ProtoField.string("mode-s.adsb.ident", "Aircraft Identification")
f.i_first = ProtoField.uint8("mode-s.adsb.ident.first", "First letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0xfc)
f.i_second = ProtoField.uint8("mode-s.adsb.ident.second", "Second letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0x3f0)
f.i_third = ProtoField.uint8("mode-s.adsb.ident.third", "Third letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0xfc0)
f.i_fourth = ProtoField.uint8("mode-s.adsb.ident.fourth", "Fourth letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0x3f)
f.i_fifth = ProtoField.uint8("mode-s.adsb.ident.fifth", "Fifth letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0xfc)
f.i_sixth = ProtoField.uint8("mode-s.adsb.ident.sixth", "Sixth letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"},  0x3f0)
f.i_seventh = ProtoField.uint8("mode-s.adsb.ident.seventh", "Seventh letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"},0xfc0)
f.i_eighth = ProtoField.uint8("mode-s.adsb.ident.eightn", "Eighth letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0x3f)

f.v_subtype = ProtoField.uint8("mode-s.adsb.velocity.subtype", "Subtype", base.DEC, {[1] = "Subsonic ground speed", [2] = "Supersonic ground speed", [3] = "Subsonic air speed", [4] = "Supersonic air speed"}, 0x7)
f.v_intchange = ProtoField.bool("mode-s.adsb.velocity.intentchange", "Intent change flag", 8, nil, 0x80)
f.v_uncertainty = ProtoField.uint8("mode-s.adsb.velocity.uncertainty", "Velocity uncertainty", nil, nil, 0x38)
f.v_ewsign = ProtoField.bool("mode-s.adsb.velocity.ewsign", "East-West velocity sign", 8, nil, 0x4)
f.v_ew = ProtoField.uint8("mode-s.adsb.velocity.ew", "East-West velocity", nil, nil, 0x4ff)
f.v_nssign = ProtoField.bool("mode-s.adsb.velocity.nssign", "North-South velocity sign", 8, nil, 0x80)
f.v_ns = ProtoField.uint8("mode-s.adsb.velocity.ns", "North-South velocity", nil, nil, 0x7fe0)
f.v_vrate_source = ProtoField.uint8("mode-s.adsb.velocity.vsrate_source", "Vertical rate source", base.DEC, {[0] = "Baro-pressure altitude", [1] = "Geometric altitude"}, 0x10)
f.v_vrate_sign = ProtoField.uint8("mode-s.adsb.velocity.vrate_sign", "Vertical rate sign", base.DEC, {[0] = "Up", [1] = "Down"}, 0x8)
f.v_vrate = ProtoField.uint8("mode-s.adsb.velocity.vrate", "Vertical rate", nil, nil, 0x7fc)
f.v_diff_baro_sign = ProtoField.bool("mode-s.adsb.velocity.diff_baro_sign", "Diff from baro alt sign", 8, nil, 0x80)
f.v_diff_baro = ProtoField.uint8("mode-s.adsb.velocity.diff_baro", "Diff from baro alt", nil, nil, 0x7f)

f.p_sstatus = ProtoField.uint8("mode-s.adsb.position.sstatus", "Surveillance status")
f.p_nicsupp_b = ProtoField.bool("mode-s.adsb.position.nicsupp_b", "NIC supplement-B")
f.p_alt = ProtoField.uint8("mode-s.adsb.position.alt", "Altitude")
f.p_time = ProtoField.bool("mode-s.adsb.position.time", "Time")
f.p_odd = ProtoField.bool("mode-s.adsb.position.odd", "CPR odd frame flag")
f.p_lat = ProtoField.uint8("mode-s.adsb.position.lat", "Latitude")
f.p_lon = ProtoField.uint8("mode-s.adsb.position.lon", "Longitude")

function decode_prefix(buffer, pinfo, tree)

  -- control bits
  local control = tree:add(modes_proto, buffer(0,1), "Control bits")
  control:add(f.df, buffer(0,1))
  control:add(f.ca, buffer(0,1))

  -- icao address
  tree:add(f.icao, buffer(1,3))

end

function decode_parity(buffer, pinfo, tree)
  local size = buffer:len()
  tree:add(f.parity, buffer(size-3,3))
end

function decode_adsb(buffer, pinfo, tree, subtype)

  local tc = buffer(0,1):bitfield(0,5)
  tree:add(f.typecode, buffer(0,1))

  --identification
  if(tc >= 1 and tc <= 4) then

      pinfo.cols.info:append(" (ADS-B Identification)")

      local table = "#ABCDEFGHIJKLMNOPQRSTUVWXYZ#####_###############0123456789######"
      local ident_s = ""

      for i = 0, 5*8, 6 do
          local char = buffer(1,6):bitfield(i, 6)
          ident_s = ident_s .. string.sub(table, char+1, char+1)
      end

      local ident = tree:add(f.ident, ident_s)

      ident:add(f.i_first, buffer(1,1))
      ident:add(f.i_second, buffer(1,2))
      ident:add(f.i_third, buffer(2,2))
      ident:add(f.i_fourth, buffer(3,1))

      ident:add(f.i_fifth, buffer(4,1))
      ident:add(f.i_sixth, buffer(4,2))
      ident:add(f.i_seventh, buffer(5,2))
      ident:add(f.i_eighth, buffer(6,1))

  -- position
  elseif(tc >= 9 and tc <= 18) then

      pinfo.cols.info:append(" (ADS-B Position)")

      tree:add(f.p_sstatus, buffer(0,1):bitfield(5,2))
      tree:add(f.p_alt, buffer(1,2):bitfield(0,12))
      tree:add(f.p_time, buffer(2,1):bitfield(4,1))
      tree:add(f.p_odd, buffer(2,1):bitfield(5,1))
      tree:add(f.p_lat, buffer(2,3):bitfield(6,17))
      tree:add(f.p_lon, buffer(4,3):bitfield(7,17))

  -- velocity
  elseif(tc == 19) then

      pinfo.cols.info:append(" (ADS-B Velocity)")

      local subtype = buffer(0,1):bitfield(5,3)
      tree:add(f.v_subtype, buffer(0,1))

      if(subtype == 1) then
        tree:add(f.v_intchange, buffer(1,1))
        tree:add(f.v_uncertainty, buffer(1,1))
        tree:add(f.v_ewsign, buffer(1,1))
        tree:add(f.v_ew, buffer(1,2))
        tree:add(f.v_nssign, buffer(3,1))
        tree:add(f.v_ns, buffer(3,2))
        tree:add(f.v_vrate_source, buffer(4,1))
        tree:add(f.v_vrate_sign, buffer(4,1))
        tree:add(f.v_vrate, buffer(4,2))
        tree:add(f.v_diff_baro_sign, buffer(6,1))
        tree:add(f.v_diff_baro, buffer(6,1))
      end
  end
end

function modes_proto.dissector(buffer,pinfo,tree)
    pinfo.cols.protocol = "Mode S"

    local modes

    -- different behaviour based on mode s message type
    if buffer:len() == 31 then
        modes = tree:add(modes_proto, buffer(0,14),"Mode S (Enhanced Surveillance)")
        pinfo.cols.info = "Enhanced Surveillance"

        decode_prefix(buffer(0,4), pinfo, modes)
        modes:add(f.payload, buffer(4,7))
        decode_parity(buffer(0,14), pinfo, modes)

        -- decode payload
        local df = buffer(0,4):bitfield(0,5)
        if df == 17 then
          local adsb = tree:add(modes_proto, buffer(4,7),"ADS-B")

          local subtype = buffer(0,1):bitfield(5,3)
          decode_adsb(buffer(4,7), pinfo, adsb, subtype)
        elseif df == 20 or df == 21 then
          pinfo.cols.info:append(" (Comm. B Altitude)")
        end

    else
        modes = tree:add(modes_proto, buffer(0,7),"Mode S (Elementary Surveillance)")
        pinfo.cols.info = "Elementary Surveillance"

        decode_prefix(buffer(0,4), pinfo, modes)
        decode_parity(buffer(0,7), pinfo, modes)
    end
end

function xor (a,b)
  local r = 0
  for i = 0, 31 do
    local x = a / 2 + b / 2
    if x ~= math.floor (x) then
      r = r + 2^i
    end
    a = math.floor (a / 2)
    b = math.floor (b / 2)
  end
  return r
end

tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(30002, modes_proto)
