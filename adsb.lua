adsb_proto = Proto("adsb","ADS-B")

local f = adsb_proto.fields

f.typecode = ProtoField.uint8("adsb.typecode", "Format type code", base.DEC, {[1] = "Aicraft identification", [2] = "Aicraft identification", [3] = "Aicraft identification", [4] = "Aicraft identification",[5] = "Surface position", [6] = "Surface position", [7] = "Surface position", [8] = "Surface position", [9] = "Airborne position (Baro Alt)", [10] = "Airborne position (Baro Alt)", [11] = "Airborne position (Baro Alt)", [12] = "Airborne position (Baro Alt)", [13] = "Airborne position (Baro Alt)", [14] = "Airborne position (Baro Alt)", [15] = "Airborne position (Baro Alt)", [16] = "Airborne position (Baro Alt)", [17] = "Airborne position (Baro Alt)", [18] = "Airborne position (Baro Alt)", [19] = "Airborne velocity", [20] = "Airborne position (GNSS Height)", [21] = "Airborne position (GNSS Height)", [22] = "Airborne position (GNSS Height)", [23] = "Test message" }, 0xf8)
f.ident = ProtoField.string("adsb.ident", "Aircraft Identification")
f.i_first = ProtoField.uint8("adsb.ident.first", "First letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0xfc)
f.i_second = ProtoField.uint8("adsb.ident.second", "Second letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0x3f0)
f.i_third = ProtoField.uint8("adsb.ident.third", "Third letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0xfc0)
f.i_fourth = ProtoField.uint8("adsb.ident.fourth", "Fourth letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0x3f)
f.i_fifth = ProtoField.uint8("adsb.ident.fifth", "Fifth letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0xfc)
f.i_sixth = ProtoField.uint8("adsb.ident.sixth", "Sixth letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"},  0x3f0)
f.i_seventh = ProtoField.uint8("adsb.ident.seventh", "Seventh letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"},0xfc0)
f.i_eighth = ProtoField.uint8("adsb.ident.eightn", "Eighth letter", base.DEC, {[1] = "A", [2] = "B", [3] = "C", [4] = "D", [5] = "E", [6] = "F", [7] = "G", [8] = "H", [9] = "I", [10] = "J", [11] = "K", [12] = "L", [13] = "M", [14] = "N", [15] = "O", [16] = "P", [17] = "Q", [18] = "R", [19] = "S", [20] = "T", [21] = "U", [22] = "V", [23] = "W", [24] = "X", [25] = "Y", [26] = "Z", [32] = "_", [48] = "0", [49] = "1", [50] = "2", [51] = "3", [52] = "4", [53] = "5", [54] = "6", [55] = "7", [56] = "8", [57] = "9"}, 0x3f)

f.v_subtype = ProtoField.uint8("adsb.velocity.subtype", "Subtype", base.DEC, {[1] = "Subsonic ground speed", [2] = "Supersonic ground speed", [3] = "Subsonic air speed", [4] = "Supersonic air speed"}, 0x7)
f.v_intchange = ProtoField.bool("adsb.velocity.intentchange", "Intent change flag", 8, nil, 0x80)
f.v_uncertainty = ProtoField.uint8("adsb.velocity.uncertainty", "Velocity uncertainty", nil, nil, 0x38)
f.v_ewsign = ProtoField.bool("adsb.velocity.ewsign", "East-West velocity sign", 8, nil, 0x4)
f.v_ew = ProtoField.uint8("adsb.velocity.ew", "East-West velocity", nil, nil, 0x4ff)
f.v_nssign = ProtoField.bool("adsb.velocity.nssign", "North-South velocity sign", 8, nil, 0x80)
f.v_ns = ProtoField.uint8("adsb.velocity.ns", "North-South velocity", nil, nil, 0x7fe0)
f.v_vrate_source = ProtoField.uint8("adsb.velocity.vsrate_source", "Vertical rate source", base.DEC, {[0] = "Baro-pressure altitude", [1] = "Geometric altitude"}, 0x10)
f.v_vrate_sign = ProtoField.uint8("adsb.velocity.vrate_sign", "Vertical rate sign", base.DEC, {[0] = "Up", [1] = "Down"}, 0x8)
f.v_vrate = ProtoField.uint8("adsb.velocity.vrate", "Vertical rate", nil, nil, 0x7fc)
f.v_diff_baro_sign = ProtoField.bool("adsb.velocity.diff_baro_sign", "Diff from baro alt sign", 8, nil, 0x80)
f.v_diff_baro = ProtoField.uint8("adsb.velocity.diff_baro", "Diff from baro alt", nil, nil, 0x7f)

f.p_sstatus = ProtoField.uint8("adsb.position.sstatus", "Surveillance status", nil, nil, 0x6)
f.p_singleant = ProtoField.bool("adsb.position.singleant", "Single antenna flag", 8, {"Single", "Dual"}, 0x1)
f.p_alt = ProtoField.uint8("adsb.position.alt", "Altitude", nil, nil, 0xfff0)
f.p_alt_encoding = ProtoField.bool("adsb.position.alt.encoding", "Encoding", 8, {"Steps of 100ft", "Steps of 25 ft"}, 0x200)
f.p_alt_value = ProtoField.uint8("adsb.position.alt.value", "Value")
f.p_alt_calculted = ProtoField.uint8("adsb.position.alt.calculated", "Calculated altitude")
f.p_time = ProtoField.bool("adsb.position.time", "Time", 8, {"Non UTC", "UTC"}, 0x8)
f.p_odd = ProtoField.bool("adsb.position.odd", "CPR even/odd frame flag", 8, {"Odd", "Even"}, 0x4)
f.p_lat = ProtoField.uint8("adsb.position.lat", "Latitude", nil, nil, 0x3fffe)
f.p_lon = ProtoField.uint8("adsb.position.lon", "Longitude", nil, nil, 0x1ffff)

f.s_subtype = ProtoField.uint8("adsb.status.subtype", "Subtype", base.DEC, nil, 0x7)

function adsb_proto.dissector(buffer,pinfo,tree)
    pinfo.cols.protocol = "ADS-B"

    local adsb = tree:add(adsb_proto, buffer(0, buffer:len()-1), "ADS-B")

    -- extract typecode
    local tc = buffer(0,1):bitfield(0,5)
    adsb:add(f.typecode, buffer(0,1))

    --identification
    if(tc >= 1 and tc <= 4) then

        pinfo.cols.info = "Identification"

        local table = "#ABCDEFGHIJKLMNOPQRSTUVWXYZ#####_###############0123456789######"
        local ident_s = ""

        for i = 0, 5*8, 6 do
            local char = buffer(1,6):bitfield(i, 6)
            ident_s = ident_s .. string.sub(table, char+1, char+1)
        end

        local ident = adsb:add(f.ident, ident_s)

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

        pinfo.cols.info = "Position"

        adsb:add(f.p_sstatus, buffer(0,1))
        adsb:add(f.p_singleant, buffer(0,1))
        local alt = adsb:add(f.p_alt, buffer(1,2))
        alt:add(f.p_alt_encoding, buffer(1,2))

        local first = bit.lshift(buffer(1,1):bitfield(0,7),4)
        local second = buffer(2,1):bitfield(0,4)
        local value = bit.bor(first, second)
        alt:add(f.p_alt_value, buffer(1,1), value)

        local alt_ft = alt:add(f.p_alt_calculted, buffer(1,2), value*25, nil, "ft", "=", value*25*0.3048, "m")
        alt_ft:set_generated()

        adsb:add(f.p_time, buffer(2,1))
        adsb:add(f.p_odd, buffer(2,1))
        adsb:add(f.p_lat, buffer(2,3))
        adsb:add(f.p_lon, buffer(4,3))

    -- velocity
    elseif(tc == 19) then

        pinfo.cols.info = "Velocity"

        local subtype = buffer(0,1):bitfield(5,3)
        adsb:add(f.v_subtype, buffer(0,1))

        if(subtype == 1) then
          adsb:add(f.v_intchange, buffer(1,1))
          adsb:add(f.v_uncertainty, buffer(1,1))
          adsb:add(f.v_ewsign, buffer(1,1))
          adsb:add(f.v_ew, buffer(1,2))
          adsb:add(f.v_nssign, buffer(3,1))
          adsb:add(f.v_ns, buffer(3,2))
          adsb:add(f.v_vrate_source, buffer(4,1))
          adsb:add(f.v_vrate_sign, buffer(4,1))
          adsb:add(f.v_vrate, buffer(4,2))
          adsb:add(f.v_diff_baro_sign, buffer(6,1))
          adsb:add(f.v_diff_baro, buffer(6,1))
        end

    -- status
    elseif(tc == 28) then

        pinfo.cols.info = "Status"

        local subtype = buffer(0,1):bitfield(5,3)
        adsb:add(f.s_subtype, buffer(0,1))

    else

        -- unimplemented typecodes
        pinfo.cols.info = ""
    end
end
