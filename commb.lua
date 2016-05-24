commb_proto = Proto("commb","Comm. B")

local f = commb_proto.fields

function commb_proto.dissector(buffer,pinfo,tree)
    pinfo.cols.protocol = "Comm. B"
    pinfo.cols.info = ""

    local commb = tree:add(commb_proto, buffer(0, buffer:len()-1), "Comm. B")
end
