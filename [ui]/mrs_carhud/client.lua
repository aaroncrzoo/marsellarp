ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local cinturon = false

local limitador = false

local maxSpeed = 0

local nuevaVelocidad = 0.0

local MinimaVelocidadEjeccion = 100

local seatbeltSpeedPedOut = 1.6

local speedBuffer = {}

local velBuffer = {}

local velEjeccion = 0

local fuel = 0

local reserva = true

local asiento = nil

local Heli = false
local Avion = false
local Barco = false 
local Bici = false 
local Coche = false
local Moto = false
local timeInGame = 0

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(150)
        local maslento = true
        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped)
        if IsPedInAnyVehicle(ped, false) then
            DisplayRadar(true)

            if GetPedInVehicleSeat(vehicle, -1) == ped then
                asiento = -1
            else
                asiento = 0
            end

            fuel = GetVehicleFuelLevel(vehicle)
            Heli = false
            Avion = false
            Barco = false 
            Bici = false 
            Coche = false
            Moto = false

            local vc = GetVehicleClass(vehicle)
            if( (vc >= 0 and vc <= 7) or (vc >= 9 and vc <= 12) or (vc >= 17 and vc <= 20)) then
                Coche = true
            elseif(vc == 8) then
                Moto = true
            elseif(vc == 13) then
                Bici = true
            elseif(vc == 14) then
                Barco = true
            elseif(vc == 15) then
                Heli = true
            elseif(vc == 16) then
                Avion = true
            end

            maslento = false

            local apagadas,luces,luceslargas  = GetVehicleLightsState(vehicle)

			local estadoluces = nil

			if luces == 1 and luceslargas == 0 then
				estadoluces = 'encendidas'
			elseif (luces == 1 and luceslargas == 1) or (luces == 0 and luceslargas == 1) then
				estadoluces = 'largas'
			else
				estadoluces = 'apagado'
            end

            speedBuffer[2] = speedBuffer[1]
            speedBuffer[1] = GetEntitySpeed(vehicle)
            
            velBuffer[2] = velBuffer[1]
            velBuffer[1] = GetEntityVelocity(vehicle)

            if ((speedBuffer[2] ~= nil and velBuffer[2] ~= nil) and ((speedBuffer[2] > (MinimaVelocidadEjeccion / 3.6) and (speedBuffer[2] - speedBuffer[1]) > (speedBuffer[1] * seatbeltSpeedPedOut)) or (speedBuffer[1] > (MinimaVelocidadEjeccion / 7.2) and (speedBuffer[1] - speedBuffer[2]) > (speedBuffer[2] * seatbeltSpeedPedOut)))) then
                if not cinturon then
                    if not Moto then
                        if not Bici then
                            TriggerEvent('mdn_carhud:fueraVehiculo')
                        end
                    end
                else
                    TriggerEvent('mdn_carhud:mareo')
                end
            else
                velEjeccion = GetEntityVelocity(vehicle)
            end

            SendNUIMessage({
                action = 'carhud',
                mostrar = true,
                velocidad = round(math.floor(GetEntitySpeed(ped) * 3.6 * 100)/100),
                marcha  = GetVehicleCurrentGear(vehicle),
                on = GetIsVehicleEngineRunning(vehicle),
                sirenas = IsVehicleSirenOn(vehicle),
                limitador = limitador,
                cinturon = cinturon,
                luces = estadoluces,
                fuel = round(fuel),
                vida = (round(GetVehicleEngineHealth(vehicle)/10)),
                rpm = (round(GetVehicleCurrentRpm(vehicle), 3) * 100),
                coche = Coche,
                bici = Bici,
                moto = Moto,
                heli = Heli,
                barco = Barco,
                avion = Avion,
                asiento = asiento,
                menuActive = IsPauseMenuActive(),
            })
        else
            DisplayRadar(false)
            cinturon = false
            limitador = false
            speedBuffer = {}
            velBuffer = {}

            SendNUIMessage({
                action = 'carhud',
                mostrar = false,
                bici = false,
                heli = false,
                barco = false,
                moto = false,
                avion = false,
            })
        end
        if maslento then Citizen.Wait(1000) end
    end
end)

Citizen.CreateThread(function()
    while true do
        if fuel < 20 and not reserva then
            reserva = true
            TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 4, 'advertenciareserva', 0.5)
            ESX.ShowNotification('~r~Queda poca gasolina, ¡has entrado en reserva!')
        elseif fuel > 20 then
            reserva = false
        end
        Citizen.Wait(1000)
    end
end)

Citizen.CreateThread(function()
    while true do
        local s = 1000
        if cinturon then
            s = 0
            DisableControlAction(0, 75, true)
        end
        Citizen.Wait(s)
    end
end)

CreateThread(function()
    while true do
        Wait(0)
        local ped = PlayerPedId()
        if IsControlJustPressed(1,243) and IsPedInAnyVehicle(ped, false) then
            local vehicle = GetVehiclePedIsIn(ped)
            if GetPedInVehicleSeat(vehicle, -1) == ped then
                if not Bici then
                    if not Barco then
                        if not Heli then
                            if not limitador then
                                local speed = GetEntitySpeed(vehicle)
                                maxSpeed = round(GetVehicleEstimatedMaxSpeed(vehicle)* 3.6, 2)
                                ESX.ShowNotification('~g~Limitador puesto a: ' .. ESX.Math.Round(math.floor(GetEntitySpeed(ped) * 3.6 * 100)/100) .. ' km/h')
                                SetVehicleMaxSpeed(vehicle,  speed)
                                TriggerServerEvent('InteractSound_SV:PlayWithinDistance',  4,  'limitador', 0.5)
                                limitador = true
                            else
                                ESX.ShowNotification('~r~Limitador quitado')
                                SetVehicleMaxSpeed(vehicle, maxSpeed)
                                TriggerServerEvent('InteractSound_SV:PlayWithinDistance',  4,  'limitador', 0.5)
                                limitador = false
                            end
                        else
                            ESX.ShowNotification('~r~No puedes poner el limitador en un helicoptero')
                        end
                    else
                        ESX.ShowNotification('~r~No puedes poner el limitador en un barco')
                    end
                else
                    ESX.ShowNotification('~r~No puedes poner el limitador en un bici')
                end
            else
                ESX.ShowNotification('~r~No eres el conductor')
            end
        end
    end
end)

function PlaySound(src)
    SendNUIMessage({
        action == 'sound',
        src = src
    })
end

RegisterCommand('cinturon2', function()
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) then
        local vehicle = GetVehiclePedIsIn(ped)
        if not Moto then
            if not Bici then
                if not Barco then
                    if not Heli then
                        if not cinturon then
                            cinturon = true
                            ESX.ShowNotification('~g~Cinturón puesto')
                            TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 4, 'cinturonpuesto', 0.5)
                        else
                            cinturon = false
                            ESX.ShowNotification('~r~Cinturón quitado')
                            TriggerServerEvent('InteractSound_SV:PlayWithinDistance',4, 'cinturonquitado', 0.5)
                        end
                    else
                        ESX.ShowNotification('~r~No hay cinturón en este helicoptero')
                    end
                else
                    ESX.ShowNotification('~r~No hay cinturón en este barco')
                end
            else
                ESX.ShowNotification('~r~No hay cinturón en una bici')
            end
        else
            ESX.ShowNotification('~r~No hay cinturón en una moto')
        end
    end
end)

RegisterKeyMapping('cinturon2', 'Ponerte el cinturon (vehículo)', 'keyboard', 'b')

RegisterNetEvent('mdn_carhud:fueraVehiculo')
AddEventHandler('mdn_carhud:fueraVehiculo', function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId())
    local ped = PlayerPedId()
    
    if (IsVehicleWindowIntact(vehicle, 6)) then
        SmashVehicleWindow(vehicle, 6)
    end

    local coords = GetEntityCoords(ped)
    local heading = (GetEntityHeading(ped) + 90)
    if heading < 0 then
        heading = (360 + heading)
    end
    heading = heading * 0.0174533
    SetEntityCoords(ped, coords.x + (math.cos(heading) * 2.0), coords.y + (math.sin(heading) * 2.0), coords.z + 0.1, true, true, true)
    Citizen.Wait(10)
    print(velEjeccion)
    SetEntityVelocity(ped, velEjeccion.x, velEjeccion.y, velEjeccion.z)
    SetPedToRagdoll(ped, 5000, 5000, 0, 0, 0, 0)
    ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE", 1.0)
    Citizen.Wait(15000)
    StopGameplayCamShaking()
end)

RegisterNetEvent('mdn_carhud:mareo')
AddEventHandler('mdn_carhud:mareo', function()
    -- local vehicle = GetVehiclePedIsIn(PlayerPedId())
    -- DoScreenFadeOut(100)
    -- while not IsScreenFadedOut() do
    --     Citizen.Wait(0)
    -- end
    -- Citizen.Wait(4000)
    -- DoScreenFadeIn(250)
    -- SetTimecycleModifier('BarryFadeOut')
    -- SetTimecycleModifierStrength(math.min(0.1 / 10, 0.6))
    -- SetVehicleEngineOn(vehicle, false, false, true)
    -- SetVehicleUndriveable(vehicle, true)
    
    -- SetTimecycleModifier("REDMIST_blend")
    -- ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE", 1.0)
    -- Citizen.Wait(5000)
            
    -- SetTimecycleModifier("hud_def_desat_Trevor")
    
    -- Citizen.Wait(3000)
    
    -- SetTimecycleModifier("")
    -- SetTransitionTimecycleModifier("")
    -- StopGameplayCamShaking()
    -- SetVehicleUndriveable(vehicle, false)
    -- SetVehicleEngineOn(vehicle, true, false, true)
end)

function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end