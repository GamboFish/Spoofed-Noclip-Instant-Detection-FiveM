-- I only added 1 local for PlayerPedId() because it is used many times so i will save some more performance
-- PlayerId() is used directly in the Climbing check because it is only used one time
-- Im sorry for my english haha

-- I will add some comments on what everything does for those who dont understand simple code :)
print("Made by Nxton") -- My Credits hehe
CreateThread(function()
    while true do 
        local playerPed = PlayerPedId() -- Setting a local so PlayerPedId() is only used once (Saving Performance)
        if IsPedRagdoll(playerPed) and IsPedFalling(playerPed) and not IsPedRunningRagdollTask(playerPed) then -- Checking if the Ped is Ragdolling and Falling but isnt running the RagdollTask which normally is active when you ragdoll. Cheats forgot to enable this one too (dumbasses).
            print("[NXTON] Spoofed Noclip Detected")
            -- ADD YOUR BAN TRIGGER
        end
        if IsPedClimbing(playerPed) and not IsPlayerClimbing(PlayerId()) then -- Checking if the Ped is Climbing and the Player is not marked as Climbing. This is a thing S*s@no forgot to implement.
            print("[NXTON] S*s@no Noclip Detected")
            -- ADD YOUR BAN TRIGGER
        end
        Wait(100) -- Waiting 100ms / 0.1 Seconds before running the checks again. You can change this Value.
    end
end)

-- I hope also the ones that know nothing about lua were able to understand my checks.
