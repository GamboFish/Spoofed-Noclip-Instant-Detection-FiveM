CreateThread(function()
    while true do 
        local playerPed = PlayerPedId()
        if IsPedRagdoll(playerPed) and IsPedFalling(playerPed) and not IsPedRunningRagdollTask(playerPed) then
            print("[NXTON] Spoofed Noclip Detected")
            -- ADD YOUR BAN TRIGGER
        end
        Wait(100)
    end
end)
