
adsb_proto = Proto("adsb","ADS-B")

function adsb_proto.dissector(buffer,pinfo,tree)
    pinfo.cols.protocol = "Mode S"

    if buffer:len() == 31 then

    	local subtree = tree:add(adsb_proto, buffer(0,14),"Extended Squitter")

	    local control = subtree:add(buffer(0,1),"Control: " .. buffer(0,1))

        -- downlink format

        local df = buffer(0,1):bitfield(0,5)
        local df_desc = ""

        if(df == 1) then
            df_desc = "Acq squitter"
        elseif (df == 16) then
            df_desc = "lange Message Air to Air ACAS"
        elseif (df == 17) then
            df_desc = "ADS-B"
        elseif (df == 18) then
            df_desc = "TIS-B"
        elseif (df == 19) then
            df_desc = "Military Ext. Squitter"
        elseif (df == 20 or df == 21) then
            df_desc = "Comm. B Altitude, IDENT Reply"
        elseif (df == 22) then
            df_desc = "Military"
        elseif (df == 24) then
            df_desc = "Comm. D Extended Length Message (ELM)"
        else
            df_desc = "?"
        end

        pinfo.cols.info = "Extended Squitter (" .. df_desc .. ")"

        control:add(buffer(0,1),"Downlink Format: " .. df .. " (" .. df_desc .. ")")

        -- capabilities

        if(df == 17) then
            local ca = buffer(0,1):bitfield(5,3)
            local ca_desc = ""

            if(ca == 0x5) then
                ca_desc = "Ext. Squitter Airborne Position"
            elseif (ca == 0x6) then
                ca_desc = "Ext. Squitter Surface Position"
            elseif (ca == 0x7) then
                ca_desc = "Ext. Squitter Status"
            elseif (ca == 0x8) then
                ca_desc = "Ext. Squitter A/C Id & Category"
            elseif (ca == 0x9) then
                ca_desc = "Ext. Squitter Airborne Velocity"
            elseif (ca == 0x0A) then
                ca_desc = "Extended Squitter Event Report"
            elseif (ca == 0x61) then
                ca_desc = "Ext. Squitter Emergency/Priority Status"
            elseif (ca == 0x62) then
                ca_desc = "Target State and Status"
            elseif (ca == 0x65) then
                ca_desc = "Aircraft Operational Status"
            else
                ca_desc = "?"
            end


            control:add(buffer(0,1),"Capability: " .. ca .. " (" .. ca_desc .. ")")
        end

        subtree:add(buffer(1,3),"A/C Address: " .. buffer(1,3))
        local ads = subtree:add(buffer(4,7),"ADS Message: " .. buffer(4,7))
        subtree:add(buffer(4,3),"Parity: " .. buffer(4,3))

        local adsdata = buffer(4,7)

        if(df == 17) then
            local ca = buffer(0,1):bitfield(5,3)
            if(ca == 0x5) then
                ads:add(adsdata(0,1),"Format Type Code: " .. adsdata(0,1):bitfield(0,5))
                ads:add(adsdata(0,1),"Surveillance Status: " .. adsdata(0,1):bitfield(5,2))
                ads:add(adsdata(0,1),"Single Antenna Flag: " .. adsdata(0,1):bitfield(7,1))

                ads:add(adsdata(1,2),"Altitude: " .. adsdata(1,2):bitfield(0,12))
                ads:add(adsdata(2,1),"Time: " .. adsdata(1,6):bitfield(12,1))
                ads:add(adsdata(2,1),"CPR Format: " .. adsdata(1,6):bitfield(13,1))
                ads:add(adsdata(3,2),"CPR Encoded Latitude: " .. adsdata(1,6):bitfield(14,17))
                ads:add(adsdata(5,2),"CPR Encoded Longitude: " .. adsdata(1,6):bitfield(31,17))
            end
        end
    else

    	local subtree = tree:add(adsb_proto, buffer(0,7),"Short Squitter")

        local df = buffer(0,1):bitfield(5,3)
        local df_desc = ""

        if(df == 0) then
            df_desc = "Short air to air ACAS"
        elseif (df == 4) then
            df_desc = "Surveillance altitude"
        elseif (df == 5) then
            df_desc = "Surveillance identity"
        elseif (df == 11) then
            df_desc = "Mode-S only all call reply"
        else
            df_desc = "?"
        end

        pinfo.cols.info = "Short Squitter (" .. df_desc .. ")"

        local control = subtree:add(buffer(0,1),"Control: " .. buffer(0,1))

        control:add(buffer(0,1),"Downlink Format: " .. df .. " (" .. df_desc .. ")")


        subtree:add(buffer(1,3),"A/C Address: " .. buffer(1,3))
        subtree:add(buffer(4,3),"Parity: " .. buffer(4,3))
    end
end

tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(30002, adsb_proto)