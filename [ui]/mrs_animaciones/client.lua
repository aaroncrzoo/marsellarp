local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local IsMotorBike = {
	"sanchez",
	"sanchez2",
	"bf400",
	"enduro",
	"manchez",
	"bmx",
	"crfsm",
	"yzfsm",
	"ktmsm",
}

--Agacharse CTRL
local crouched = false
local knockeado = false
local wait = math.random(10,60)
local count = 60
local tiempo = 7000
local tasazo = false
local hurt = false
local ragdoll = false
ESX 			    			= nil
local PlayerData 				= {}
local scriptReady = false
local handsupL = false
local anim = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
		PlayerData = ESX.GetPlayerData()
		scriptReady = true
	end
end)
RegisterKeyMapping("cruzarbrazos", "Cruzarse de Brazos", "keyboard", "G")
RegisterKeyMapping("agacharse", "Agacharse", "keyboard", "LCONTROL")
RegisterKeyMapping("suelo", "/suelo", "keyboard", "H")


RegisterCommand("cruzarbrazos", function(source)
	if not handsupL then
		ExecuteCommand("e crossarms5")
		handsupL = true
	else
		handsupL = false
		ExecuteCommand("e c")
	end
end)

RegisterCommand("agacharse", function(source)
	RequestAnimSet("move_ped_crouched")
	while (not HasAnimSetLoaded("move_ped_crouched")) do
		Citizen.Wait(50)
	end
	if (crouched == true) then
		ResetPedMovementClipset(GetPlayerPed(-1), 0)
		crouched = false
		Citizen.Wait(4000)
		TriggerEvent("dpemotes:sync_walk")
	elseif (crouched == false) then
		SetPedMovementClipset(GetPlayerPed(-1), "move_ped_crouched", 0.25)
		crouched = true
	end
end)

Citizen.CreateThread(function()
	while true do
		N_0x4757f00bc6323cfe(-1553120962, 0.0) 
		Citizen.Wait(1)
		local ped = GetPlayerPed(-1)
		RequestAnimDict("random@mugging3")
		if (DoesEntityExist(ped) and not IsEntityDead(ped)) and IsPedOnFoot(ped) then
			DisableControlAction(0, 36, true) 
		end

		if IsPedInMeleeCombat(ped) then
			if GetEntityHealth(ped) < 125 then
				SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
				ESX.ShowNotification("~r~¡Estás inconsciente!~w~ Te han pegado una paliza tío...")
				wait = 15
				knockeado = true
				SetEntityHealth(ped, 126)
			end
		end
		if knockeado == true then
			DisablePlayerFiring(ped, true)
			SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
			ResetPedRagdollTimer(ped)
			if wait >= 0 then
				count = count - 1
				if count == 0 then
					count = 60
					wait = wait - 1
				end
			else
				ESX.ShowNotification("~r~¡Vuelves a estar consciente!")
				knockeado = false
			end
		end

		if IsPedBeingStunned(ped) then
			SetPedToRagdoll(ped, tiempo, tiempo, 0, 0, 0, 0)
			SetPedMinGroundTimeForStungun(ped, tiempo)
		end	

		if IsPedBeingStunned(ped) and not tasazo then
			tasazo = true
			SetTimecycleModifier("REDMIST_blend")
			ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE", 1.0)
		elseif not IsPedBeingStunned(ped) and tasazo then
			tasazo = false
			Wait(5000)
			SetTimecycleModifier("hud_def_desat_Trevor")
			Wait(10000)
  		    SetTimecycleModifier("")
			SetTransitionTimecycleModifier("")
			StopGameplayCamShaking()
		end

		if IsEntityPlayingAnim(GetPlayerPed(ped), "random@arrests@busted", "idle_a", 3) then
			DisableControlAction(1, 140, true)
			DisableControlAction(1, 141, true)
			DisableControlAction(1, 142, true)
			DisableControlAction(0,21,true)
		end
		-- Optimizado -0.04ms en vehicles
		if IsPedOnFoot(ped) then
			if not IsPedInAnyVehicle(ped, false) and not IsPedSwimming(ped) and not IsPedShooting(ped) and not IsPedClimbing(ped) and not IsPedCuffed(ped) and not IsPedDiving(ped) and not IsPedFalling(ped) and not IsPedJumping(ped) and not IsPedJumpingOutOfVehicle(ped) and not IsPedRunning(ped) and not IsPedUsingAnyScenario(ped) and not IsPedInParachuteFreeFall(ped) then
				if IsControlPressed(1, 323) then
					if DoesEntityExist(ped) then
						SetCurrentPedWeapon(ped, 0xA2719263, true)
						Citizen.CreateThread(function()
							RequestAnimDict("random@mugging3")
							while not HasAnimDictLoaded("random@mugging3") do
								Citizen.Wait(100)
							end

							if not handsup then
								handsup = true
								TaskPlayAnim(ped, "random@mugging3", "handsup_standing_base", 8.0, -8, -1, 49, 0, 0, 0, 0)
							end   
						end)
					end
				end
			end
		end

		if IsControlJustReleased(1, 323) then
			if DoesEntityExist(ped) then
				Citizen.CreateThread(function()
					RequestAnimDict("random@mugging3")
					while not HasAnimDictLoaded("random@mugging3") do
						Citizen.Wait(100)
					end
					if handsup then
						handsup = false
						ClearPedSecondaryTask(ped)
					end
				end)
			end
		end

		if GetEntityHealth(ped) <= 159 then
            setHurt()
        elseif hurt and GetEntityHealth(ped) > 160 then
            setNotHurt()
		end
		if IsPedRagdoll(ped) then 
			local prop_name = prop_name
			local secondaryprop_name = secondaryprop_name
			DeleteObject(prop)
			DeleteObject(secondaryprop)
		end
		if ragdoll then
            SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
        end
  	end
end)

-- /SUELO

function setRagdoll(flag)
  ragdoll = flag
end

ragdol = true
RegisterNetEvent("Ragdoll")
AddEventHandler("Ragdoll", function()
	if(ragdol)then
		setRagdoll(true)
		ragdol = false
	else
		setRagdoll(false)
		ragdol = true
	end
end)


function loadAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		RequestAnimDict(dict)
		Citizen.Wait(100)
	end
end

RegisterNetEvent('KneelHU')
AddEventHandler('KneelHU', function()
    local player = GetPlayerPed(-1)
	if (DoesEntityExist( player ) and not IsEntityDead( player )) then 
        loadAnimDict("random@arrests")
		loadAnimDict("random@arrests@busted")
		if (IsEntityPlayingAnim(player, "random@arrests@busted", "idle_a", 3)) then 
			TaskPlayAnim(player, "random@arrests@busted", "exit", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
			Wait(3000)
            TaskPlayAnim(player, "random@arrests", "kneeling_arrest_get_up", 8.0, 1.0, -1, 128, 0, 0, 0, 0)
        else
            TaskPlayAnim(player, "random@arrests", "idle_2_hands_up", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
			Wait(1000)
            TaskPlayAnim(player, "random@arrests", "kneeling_arrest_idle", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
			Wait(500)
			TaskPlayAnim(player, "random@arrests@busted", "enter", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
			Wait(1000)
			TaskPlayAnim(player, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 9, 0, 0, 0, 0)
        end     
    end
end)
---- MANOS ARRIBA

handsup = false

function getSurrenderStatus()
	return handsup
end

RegisterNetEvent('vk_handsup:getSurrenderStatusPlayer')
AddEventHandler('vk_handsup:getSurrenderStatusPlayer',function(event,source)
	if handsup then
		TriggerServerEvent("vk_handsup:reSendSurrenderStatus",event,source,true)
	else
		TriggerServerEvent("vk_handsup:reSendSurrenderStatus",event,source,false)
	end
end)

-- FACTION ANIMS

local mp_pointing = false

local keyPressed = false

local radioActive = false

local radioEmsActive = false

local broadcasting = false

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterCommand("suelo", function(source, args, raw) --change command here
	if not IsPedInAnyVehicle(PlayerPedId(), false) then
    	TriggerEvent("Ragdoll")
	end
end, false) --False, allow everyone to run it(thnx @Havoc)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)




--- Function for radio chatter function
Citizen.CreateThread( function()

	while true do
		Citizen.Wait(0)
		local ped = PlayerPedId()
		if (PlayerData.job ~= nil and PlayerData.job.name == 'police') or (PlayerData.job ~= nil and PlayerData.job.name == 'ambulance') and not IsEntityDead( ped ) then
			if not IsPauseMenuActive() then 
				loadAnimDict( "random@arrests" )
				if IsControlJustReleased(0, 82) then -- INPUT_CHARACTER_WHEEL (LEFT ALT)
					TriggerServerEvent('InteractSound_SV:PlayOnSource', 'mic_click_off', 0.2)
					ClearPedTasks(ped)
					--SetEnableHandcuffs(ped, false)
				else
					if IsControlJustPressed(0, 82) and not IsPlayerFreeAiming(PlayerId()) then -- INPUT_CHARACTER_WHEEL (LEFT ALT)
						TriggerServerEvent('InteractSound_SV:PlayOnSource', 'mic_click_on', 0.2)
						TaskPlayAnim(ped, "random@arrests", "generic_radio_enter", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0 )
						--SetEnableHandcuffs(ped, true)
					elseif IsControlJustPressed(0, 82) and IsPlayerFreeAiming(PlayerId()) then -- INPUT_CHARACTER_WHEEL (LEFT ALT)
						TriggerServerEvent('InteractSound_SV:PlayOnSource', 'mic_click_on', 0.2)
						TaskPlayAnim(ped, "random@arrests", "radio_chatter", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0 )
						--SetEnableHandcuffs(ped, true)
					end 
					if IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "random@arrests", "generic_radio_enter", 3) then
						DisableActions(ped)
					elseif IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "random@arrests", "radio_chatter", 3) then
						DisableActions(ped)
					end
				end
			end 
		else
			if (IsControlJustPressed(0,82)) then
	
				if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
					radioActive = true
					
					if radioActive then
	
						RequestAnimDict( "cellphone@" )

						while ( not HasAnimDictLoaded( "cellphone@" ) ) do 
							Citizen.Wait( 100 )
						end
	
						if playinganim == true then
							playinganim = false
							ExecuteCommand("e c")
							ClearPedSecondaryTask(ped)
						else
							playinganim = true
							ExecuteCommand("e phonecall")
							TaskPlayAnim(player, "cellphone@", "cellphone_call_in", 1.5, 2.0, -1, 50, 2.0, 0, 0, 0 )
							local prop_name = prop_name
							local secondaryprop_name = secondaryprop_name
							DeleteObject(prop)
							DeleteObject(secondaryprop)
						end
					end
				end
			end
		end 
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		local playerPed = PlayerPedId()
		local player = PlayerPedId()
		local vehicle = GetVehiclePedIsIn(player, false)
		local speed = GetEntitySpeed(vehicle) * 3.6

		if IsControlPressed(0, Keys["LEFTSHIFT"]) and IsControlJustReleased(0, 172) then
			if OnlyCanRideThisModel(vehicle) and speed <= 40 then
				RequestAnimDict('rcmextreme2atv')
				while not HasAnimDictLoaded('rcmextreme2atv') do
					Citizen.Wait(100)
				end
				TaskPlayAnim(playerPed, 'rcmextreme2atv', 'idle_e', -1, -1, -1, 32, 0, 0, 0, 0)
			end	
		end
		
		if IsControlPressed(0, Keys["LEFTSHIFT"]) and IsControlJustReleased(0, 173) then
			if OnlyCanRideThisModel(vehicle) and speed <= 60 then
				RequestAnimDict('rcmextreme2atv')
				while not HasAnimDictLoaded('rcmextreme2atv') do
					Citizen.Wait(100)
				end
				TaskPlayAnim(playerPed, 'rcmextreme2atv', 'idle_d', -1, -1, -1, 32, 0, 0, 0, 0)
			end	
		end

		if IsControlPressed(0, Keys["LEFTSHIFT"]) and IsControlJustReleased(0, 174) then
			if OnlyCanRideThisModel(vehicle) and speed <= 60 then
				RequestAnimDict('rcmextreme2atv')
				while not HasAnimDictLoaded('rcmextreme2atv') do
					Citizen.Wait(100)
				end
				TaskPlayAnim(playerPed, 'rcmextreme2atv', 'idle_b', -1, -1, -1, 32, 0, 0, 0, 0)
			end	
		end

		if IsControlPressed(0, Keys["LEFTSHIFT"]) and IsControlJustReleased(0, 175) then
			if OnlyCanRideThisModel(vehicle) and speed <= 60 then
				RequestAnimDict('rcmextreme2atv')
				while not HasAnimDictLoaded('rcmextreme2atv') do
					Citizen.Wait(100)
				end
				TaskPlayAnim(playerPed, 'rcmextreme2atv', 'idle_c', -1, -1, -1, 32, 0, 0, 0, 0)
			end	
		end

	end
end)


--===========================================================================================================================
-- 'Event Functions' You can use to trigger events/actions on your server/gamemode
--===========================================================================================================================
function OnPlayerBoardAnimal()
	-- You could use these calls to for example save stats of players on how many times they
	-- have ridden animals or so. 
	-- NOTE: I WILL NOT make such scripts or help with them, since those heavily depend on what
	-- YOU need or want, and also on your type of data(base) storage. 
end

function OnPlayerLeaveAnimal()
	-- You could use these calls to for example save stats of players on how many times they
	-- have ridden animals or so. 
	-- NOTE: I WILL NOT make such scripts or help with them, since those heavily depend on what
	-- YOU need or want, and also on your type of data(base) storage. 

	-- The reason I have a OnPlayerBOARDAnimal AND a OnPlayerLeaveAnimal is because we also
	-- keep track of riding time(s), and we do checks for when a farmer for example has 'exit' his
	-- cow to put it in the barn(s)
end

function OnPlayerRequestToRideAnimal()
	-- Check for 'own conditions' on our server if the player is allowed at that time to
	-- even ride/board animals. You could also use that function for example to 'exclude' wanted
	-- players from riding/boarding animals.
	
	-- We for example use it to check if the player has obtained a special perk which makes him/her able
	-- to ride these animals.
	return true
end

--===========================================================================================================================
-- ONE simple setting to allow other players to ride on other players IF they are animals
-- NOTE: you CAN NOT control the other player though!
--===========================================================================================================================
local AllowRidingAnimalPlayers = false

--===========================================================================================================================
-- Here you can set if you used certain mods to replace animal in the game
-- DO NOTE: that you OBVIOUSLY can only replace a certain animal with ONE mod at a time!
-- So you can not replace the deer with two other animals at the same time.
--
-- NOTE: I DO NOT offer support for these mods! I was just a bit more helpful in adding the correct
-- animations and offsets for you guys! You will need to install the mod your self, figure out how
-- to stream it and how to get it to work! These mods are NOT MINE and so I can't (and won't) afford the
-- time to give 'extra support' on mods from other people ;)
--
-- How ever I did decided to add "some mod support" for requested mods, BUT that I support one or two doesn'table
-- mean i will keep adding others endlessly! Since I will have to install them on MY server everytime to test and
-- get the offset right. So: EXTERNAL MOD SUPPORT IS: AS-IS with NO support for installation or whatever.
--
-- **********************************************************************************************
-- Supported Mod(s):
-- **********************************************************************************************
-- Mod Numer one (1):
-- https://www.gta5-mods.com/misc/horse-mod
-- This one replaces the Deer in game, to enable support for this replacement change:
-- IhaveReplacedMyDeerWithModNumber1 = false to: IhaveReplacedMyDeerWithModNumber1 = true
-- **********************************************************************************************
--===========================================================================================================================
IhaveReplacedMyDeerWithModNumber1 = true

--===========================================================================================================================
-- (Global) Script Declarations
--===========================================================================================================================
local HelperMessageID = 0
AnimalControlStatus =  0.05
XNL_IsRidingAnimal = false		-- This one is used so the script knows if it need to run the entire code in
								-- it's main thread or not (and thus performance increasing on idle (not riding))

local Animal = {
	Handle = nil,
	Invincible = false,
	Ragdoll = false,
	Marker = false,
	InControl = false,
	IsFleeing = false,
	Speed = {
		Walk = 2.0,
		Run = 3.0,
	},
}

--===========================================================================================================================
-- Enitiy Enumerator Section
--===========================================================================================================================
local entityEnumerator = {
	__gc = function(enum)
		if enum.destructor and enum.handle then
			enum.destructor(enum.handle)
		end
		enum.destructor = nil
		enum.handle = nil
	end
}

function EnumerateEntities(initFunc, moveFunc, disposeFunc)
	return coroutine.wrap(function()
		local iter, id = initFunc()
		if not id or id == 0 then
			disposeFunc(iter)
			return
		end
	
		local enum = {handle = iter, destructor = disposeFunc}
		setmetatable(enum, entityEnumerator)
	
		local next = true
		repeat
			coroutine.yield(id)
			next, id = moveFunc(iter)
		until not next
	
		enum.destructor, enum.handle = nil, nil
		disposeFunc(iter)
	end)
end

function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function GetNearbyPeds(X, Y, Z, Radius)
	local NearbyPeds = {}
	for Ped in EnumeratePeds() do
		if DoesEntityExist(Ped) then
			local PedPosition = GetEntityCoords(Ped, false)
			if Vdist(X, Y, Z, PedPosition.x, PedPosition.y, PedPosition.z) <= Radius then
				table.insert(NearbyPeds, Ped)
			end
		end
	end
	return NearbyPeds
end

--===========================================================================================================================
-- Animal Related Fuctions
--===========================================================================================================================
function Animal.Attach()
	local Ped = PlayerPedId()

	FreezeEntityPosition(Animal.Handle, true)
	FreezeEntityPosition(Ped, true)

	local AnimalPosition = GetEntityCoords(Animal.Handle, false)
	SetEntityCoords(Ped, AnimalPosition.x, AnimalPosition.y, AnimalPosition.z)

	AnimalName = "Deer"
	AnimalType = 1
	XAminalOffSet = 0.0 -- Default DEER offset
	AnimalOffSet  = 0.2  -- Default DEER offset
	--if GetEntityModel(Animal.Handle) == GetHashKey('a_c_cow') then AnimalOffSet = 0.2 end

	if GetEntityModel(Animal.Handle) == GetHashKey('a_c_deer') and IhaveReplacedMyDeerWithModNumber1 then 
		AnimalName = "Caballo"
		AnimalType = 1
		AnimalOffSet  = 0.12
		XAminalOffSet = -0.2
	end
	
	
	if GetEntityModel(Animal.Handle) == GetHashKey('a_c_cow') then 
		AnimalName = "Vaca"
		AnimalType = 2
		AnimalOffSet  = 0.1
		XAminalOffSet = 0.1
	end
		
	if NetworkGetPlayerIndexFromPed(Animal.Handle) == -1 then
		if (HelperMessageID > 2 or HelperMessageID < 2) and not Animal.InControl then
			DisplayHelpText('Presiona repetidamente ~INPUT_VEH_ACCELERATE~ para controlar el ' .. AnimalName)
			HelperMessageID = 2
			AnimalControlStatus = 0.05
		end
	end
	
	SetCurrentPedWeapon(Ped, "weapon_unarmed", true)	-- Sets the player to unarmed (no weapons), 
														-- it could "freak out" Peds or Feds, and 'space the weapon' through the animal
	AttachEntityToEntity(Ped, Animal.Handle, GetPedBoneIndex(Animal.Handle, 24816), XAminalOffSet, 0.0, AnimalOffSet, 0.0, 0.0, -90.0, false, false, false, true, 2, true)

	if AnimalType == 1  then
		RequestAnimDict("amb@prop_human_seat_chair@male@generic@base")
		while not HasAnimDictLoaded("amb@prop_human_seat_chair@male@generic@base") do
			Citizen.Wait(250)
		end
		TaskPlayAnim(Ped, "amb@prop_human_seat_chair@male@generic@base", "base", 8.0, 1, -1, 1, 1.0, 0, 0, 0)
	elseif AnimalType == 2 or AnimalType == 3 then
		RequestAnimDict("amb@prop_human_seat_chair@male@elbows_on_knees@idle_a")
		while not HasAnimDictLoaded("amb@prop_human_seat_chair@male@elbows_on_knees@idle_a") do
			Citizen.Wait(250)
		end

		TaskPlayAnim(Ped, "amb@prop_human_seat_chair@male@elbows_on_knees@idle_a", "idle_a", 8.0, 1, -1, 1, 1.0, 0, 0, 0)
	end
	--TaskPlayAnim(Ped, "rcmjosh2", "josh_sitting_loop", 8.0, 1, -1, 2, 1.0, 0, 0, 0)

	
	FreezeEntityPosition(Animal.Handle, false)
	FreezeEntityPosition(Ped, false)
	OnPlayerBoardAnimal() -- Used to do some 'extra stuff' on our server when a player has boarded an animal
						  -- you can also use it to for example save stats like: Ridden Animals: [number of times]
	XNL_IsRidingAnimal = true
end

function Animal.Ride()
	local Ped = PlayerPedId()
	local PedPosition = GetEntityCoords(Ped, false)
	if IsPedSittingInAnyVehicle(Ped) or IsPedGettingIntoAVehicle(Ped) then
		return
	end

	local AttachedEntity = GetEntityAttachedTo(Ped)

	if (IsEntityAttached(Ped)) and (GetEntityModel(AttachedEntity) == GetHashKey("a_c_deer") or GetEntityModel(AttachedEntity) == GetHashKey("a_c_cow")) then
		local SideCoordinates = GetCoordsInfrontOfEntityWithDistance(AttachedEntity, 1.0, 90.0)
		local SideHeading = GetEntityHeading(AttachedEntity)

		SideCoordinates.z = GetGroundZ(SideCoordinates.x, SideCoordinates.y, SideCoordinates.z)

		Animal.Handle = nil
		Animal.InControl = false
		DetachEntity(Ped, true, false)
		ClearPedSecondaryTask(Ped)
		ClearPedTasksImmediately(Ped)

		AminD2 = "amb@prop_human_seat_chair@male@elbows_on_knees@react_aggressive"
		RequestAnimDict(AminD2)
		while not HasAnimDictLoaded(AminD2) do
			Citizen.Wait(0)
		end
		TaskPlayAnim(Ped, AminD2, "exit_left", 8.0, 1, -1, 0, 1.0, 0, 0, 0)
		Wait(100)
		SetEntityCoords(Ped, SideCoordinates.x, SideCoordinates.y, SideCoordinates.z)
		SetEntityHeading(Ped, SideHeading)
		ClearPedSecondaryTask(Ped)
		ClearPedTasksImmediately(Ped)
		RemoveAnimDict(AminD2)
		OnPlayerLeaveAnimal() -- Used on our server to do 'stuff' when the player got of the animal
		if HelperMessageID > 0 then
			HelperMessageID = 0
			ClearAllHelpMessages()				
		end

	else
		for _, Ped in pairs(GetNearbyPeds(PedPosition.x, PedPosition.y, PedPosition.z, 2.0)) do
			if not IsPedFalling(Ped) and not IsPedFatallyInjured(Ped) and not IsPedDeadOrDying(Ped) 
			   and not IsPedDeadOrDying(Ped) and not IsPedGettingUp(Ped) and not IsPedRagdoll(Ped) then
				if (GetEntityModel(Ped) == GetHashKey("a_c_deer") or GetEntityModel(Ped) == GetHashKey("a_c_cow")) then
					
					if NetworkGetPlayerIndexFromPed(Ped) > -1 and not AllowRidingAnimalPlayers then
						return
					end
					
					
					-- Here we do a simple scan to see if there are other Peds in the radius of the animal
					-- (although for 'all safety' I've made this scan a bit bigger)
					-- If it turns out if there is a player nearby it will then compare if that Entity (The other player)
					-- if attached to the 'just detected entity (the animal)'. If this is the case we will NOT allow the
					-- player to "also" board the animal
					for _, Ped2 in pairs(GetNearbyPeds(PedPosition.x, PedPosition.y, PedPosition.z, 4.0)) do
						if IsEntityAttachedToEntity(Ped2, Ped) then
							return
						end
					end

					-- Check for 'own conditions' on our server if the player is allowed at that time to
					-- even ride/board animals. You could also use that function for example to 'exclude' wanted
					-- players from riding/boarding animals
					if OnPlayerRequestToRideAnimal() then
						Animal.Handle = Ped
						Animal.Attach()
					end
					break
				end
			end
		end
	end
end

function DropPlayerFromAnimal()
	local Ped = PlayerPedId()
	Animal.Handle = nil
	DetachEntity(Ped, true, false)
	ClearPedTasksImmediately(Ped)
	ClearPedSecondaryTask(Ped)
	Animal.InControl = false
	AminD2 = "amb@prop_human_seat_chair@male@elbows_on_knees@react_aggressive"
	RequestAnimDict(AminD2)
	while not HasAnimDictLoaded(AminD2) do
		Citizen.Wait(0)
	end
	TaskPlayAnim(Ped, AminD2, "exit_left", 8.0, 1, -1, 0, 1.0, 0, 0, 0)
	Wait(100)
	ClearPedSecondaryTask(Ped)
	ClearPedTasksImmediately(Ped)
	Wait(100)
	SetPedToRagdoll(Ped, 1500, 1500, 0, 0, 0, 0)
	AnimalControlStatus = 0
	OnPlayerLeaveAnimal() -- Used on our server to do 'stuff' when the player got of the animal
	XNL_IsRidingAnimal = false
end

--===========================================================================================================================
-- Main 'Helper' functions
--===========================================================================================================================
function GetCoordsInfrontOfEntityWithDistance(Entity, Distance, Heading)
	local Coordinates = GetEntityCoords(Entity, false)
	local Head = (GetEntityHeading(Entity) + (Heading or 0.0)) * math.pi / 180.0
	return {x = Coordinates.x + Distance * math.sin(-1.0 * Head), y = Coordinates.y + Distance * math.cos(-1.0 * Head), z = Coordinates.z}
end

function GetGroundZ(X, Y, Z)
	if tonumber(X) and tonumber(Y) and tonumber(Z) then
		local _, GroundZ = GetGroundZFor_3dCoord(X + 0.0, Y + 0.0, Z + 0.0, Citizen.ReturnResultAnyway())
		return GroundZ
	else
		return 0.0
	end
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	EndTextCommandDisplayHelp(0, 0, true, 8000)
end

--===========================================================================================================================
-- Controling Threads
--===========================================================================================================================
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(50)
		if AnimalControlStatus > 0 then
			AnimalControlStatus = AnimalControlStatus - 0.001
		end
	end

end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		-- This is (BY DEFAULT HOWEVER!) the [E] key
		if IsControlJustPressed(1, 51) then
			Animal.Ride()
		end

		if XNL_IsRidingAnimal then
			local Ped = PlayerPedId()
			local AttachedEntity = GetEntityAttachedTo(Ped)
	
			if (not IsPedSittingInAnyVehicle(Ped) or not IsPedGettingIntoAVehicle(Ped)) and IsEntityAttached(Ped) and AttachedEntity == Animal.Handle then
			if DoesEntityExist(Animal.Handle) then
				AnimalChecksOkay = true 		-- We set the 'animal state' default to true
				
				-- Here we check if the animal is 'okay' (not dead, tripped, run over etc etc),
				-- if the animal is 'not okay' we'll make the player fall off/ragdoll.
				-- same goes for when the player is 'not okay' anymore 
				if IsPedFalling(AttachedEntity) or IsPedFatallyInjured(AttachedEntity) or IsPedDeadOrDying(AttachedEntity) 
				   or IsPedDeadOrDying(AttachedEntity) or IsPedDeadOrDying(Ped) or IsPedGettingUp(AttachedEntity) or IsPedRagdoll(AttachedEntity) then
					Animal.IsFleeing = false
					Animal.InControl = false
					AnimalChecksOkay = false
					DropPlayerFromAnimal()
				end
			
				-- If the animal checks out all okay, we'll resume riding it
				if AnimalChecksOkay then
					local LeftAxisXNormal, LeftAxisYNormal = GetControlNormal(2, 218), GetControlNormal(2, 219)
					local Speed, Range = Animal.Speed.Walk, 4.0
	
					-- Make the animal 'run', however this is 'kinda buggy' and not totally satisfactory,
					-- so you could disable the following four lines of code to 'disable animal running'
					if IsControlPressed(0, 21) then
						Speed = Animal.Speed.Run
						Range = 8.0
					end
	
					if Animal.InControl then
						Animal.IsFleeing = false
						local GoToOffset = GetOffsetFromEntityInWorldCoords(Animal.Handle, LeftAxisXNormal * Range, LeftAxisYNormal * -1.0 * Range, 0.0)
		
						TaskLookAtCoord(Animal.Handle, GoToOffset.x, GoToOffset.y, GoToOffset.z, 0, 0, 2)
						TaskGoStraightToCoord(Animal.Handle, GoToOffset.x, GoToOffset.y, GoToOffset.z, Speed, 20000, 40000.0, 0.5)
		
						if Animal.Marker then
							DrawMarker(6, GoToOffset.x, GoToOffset.y, GoToOffset.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 255, 0, 0, 2, 0, 0, 0, 0)
						end
					else
						if NetworkGetPlayerIndexFromPed(Animal.Handle) == -1 then
							-- Tapping (Default) the [W] key to gain control of the animal
							if IsControlJustPressed(1, 71) then
								if AnimalControlStatus < 0.1 then
									AnimalControlStatus = AnimalControlStatus + 0.005
									if AnimalControlStatus > 0.1 then 
										AnimalControlStatus = 0.1 
										if HelperMessageID > 4 or HelperMessageID < 4 then
											DisplayHelpText("Tienes el control del animal.")
											HelperMessageID = 4
											AnimalControlStatus = 0
											Animal.InControl = true
										end
									end
								end
							end
						
							if AnimalControlStatus <= 0.001 and not Animal.InControl then
								if HelperMessageID > 3 or HelperMessageID < 3 then
									DisplayHelpText("Te soltaste y te caíste.")
									HelperMessageID = 3
								end
								DropPlayerFromAnimal()
							end
							
							if not Animal.IsFleeing then
								Animal.IsFleeing = true
								TaskSmartFleePed(Animal.Handle, Ped, 9000.0, -1, false, false)
							end
						end
					end
				end
			end
		end
		end
	end
end)

------------------------------------ FIN MONTAR ANIMALES --------------------------------------

function OnlyCanRideThisModel(vehicle)
	local model = GetEntityModel(vehicle)

	for i= 1, #IsMotorBike do 
		if model == GetHashKey(IsMotorBike[i]) then
			return true
		end
	end
	return false
end

function CheckSkin(ped)
	for i = 1, #skins do
		if GetHashKey(skins[i]) == GetEntityModel(ped) then
			return true
		end
	end
	return false
end

function CheckWeapon(ped)
	for i = 1, #weapons do
		if GetHashKey(weapons[i]) == GetSelectedPedWeapon(ped) then
			return true
		end
	end
	return false
end

function DisableActions(ped)
	DisableControlAction(1, 140, true)
	DisableControlAction(1, 141, true)
	DisableControlAction(1, 142, true)
end

function loadAnimDict( dict )
	while ( not HasAnimDictLoaded( dict ) ) do
		RequestAnimDict( dict )
		Citizen.Wait( 0 )
	end
end

function StopAnyAnim(noRemoveWeapon)

	local player = PlayerPedId()
	
	TriggerEvent('Radiant_Animations:StopAnimations')
	
	if(noRemoveWeapon == nil)then
	
		SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true)

	end

	if IsPedActiveInScenario(player) then

		ClearPedTasks(player)

	end

	if(mp_pointing)then

		stopPointing()

		keyPressed = true

		mp_pointing = false

	end

	if(piggyBackInProgress == true) then

		Espalda()

	end

	if(isRagdolling == true)then

		isRagdolling = false

	end

	if(restorepos ~= nil)then

		local coords      = GetEntityCoords(PlayerPedId())

		if(GetDistanceBetweenCoords(coords, restorepos.x,restorepos.y,restorepos.z-1, true) < 2) then

			SetEntityCoords(player, restorepos.x,restorepos.y,restorepos.z-1)

		end

		restorepos = nil

	end

end
function Notification(message)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(message)
	DrawNotification(0, 0)
end

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end

------ DAMAGE WALK

function setHurt()
    hurt = true
    RequestAnimSet("move_m@injured")
    SetPedMovementClipset(GetPlayerPed(-1), "move_m@injured", true)
end

function setNotHurt()
    hurt = false
    ResetPedMovementClipset(GetPlayerPed(-1))
    ResetPedWeaponMovementClipset(GetPlayerPed(-1))
    ResetPedStrafeClipset(GetPlayerPed(-1))
end