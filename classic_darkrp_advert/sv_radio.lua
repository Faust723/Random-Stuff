function Radio(ply, args)
    if args == "" then
        DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
        return ""
    end
    local DoSay = function(text)
        if text == "" then
            DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
            return
        end
        for k,v in pairs(player.GetAll()) do
            local col = team.GetColor(ply:Team())
            DarkRP.talkToPerson(v, col, "[Comms] " .. ply:Nick(), Color(0, 200, 255, 255), text, ply)
        end
    end
    return args, DoSay
end
DarkRP.defineChatCommand("comms", Radio, 1.5)
DarkRP.defineChatCommand("coms", Radio, 1.5)