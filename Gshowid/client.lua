print('made by billy_ftw')
nocooldown = true

function showid()
    nocooldown = true
    ExecuteCommand('me *'..GetPlayerServerId(PlayerId())..'*')
    Wait(100)
end


Citizen.CreateThread(function()
    while nocooldown do
        Citizen.Wait(0)
		if IsControlJustPressed(0, Config.Key) then
            showid()
            nocooldown = false
            Wait(Config.Cooldown * 600)
            nocooldown = true
        end
    end
end)