Citizen.CreateThread(function()
	while true do
        if not exports.mrs_interfaz:getCustomMenuState() and not exports.mrs_interfaz:getInventoryState() then
            Citizen.Wait(60)
            if IsControlPressed(0, Config.control_buttons.open_menu) then
                TriggerEvent('esx_custom_menu:show', Config.animation_menu, Config.control_buttons)
            end
        else
            Citizen.Wait(1000)
        end
	end
end)