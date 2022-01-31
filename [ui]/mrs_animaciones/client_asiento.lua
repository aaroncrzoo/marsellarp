local disableShuffle = true

function disableSeatShuffle(flag)
	disableShuffle = flag
end

Citizen.CreateThread(function()
  	while true do
		Citizen.Wait(0)
		local playerPed = GetPlayerPed(-1)
		if IsPedInAnyVehicle(playerPed, false) and disableShuffle then
            local vehicle = GetVehiclePedIsIn(playerPed, false)
			if GetPedInVehicleSeat(GetVehiclePedIsIn(playerPed, false), 0) == playerPed then
				if GetIsTaskActive(playerPed, 165) then
                    SetPedIntoVehicle(playerPed, GetVehiclePedIsIn(playerPed, false), 0)
				end
			end
		end
	end
end)

RegisterNetEvent("SeatShuffle")
AddEventHandler("SeatShuffle", function()
	if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
		disableSeatShuffle(false)
		Citizen.Wait(5000)
		disableSeatShuffle(true)
	else
		CancelEvent()
	end
end)

RegisterCommand("conducir", function(source, args, raw)
    TriggerEvent("SeatShuffle")
end, false)

RegisterCommand("c", function(source, args, raw)
    TriggerEvent("SeatShuffle")
end, false)