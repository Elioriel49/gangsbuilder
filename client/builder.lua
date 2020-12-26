ActualGang = nil
gangsKit = {
	Weapons = {
		[1] = {
			{name = 'WEAPON_KNIFE', price = 1500},
			{name = 'weapon_dagger', price = 1500},
			{name = 'weapon_bat', price = 1500},
			{name = 'weapon_crowbar', price = 1500},
			{name = 'weapon_golfclub', price = 1500},
			{name = 'weapon_hammer', price = 1500},
			{name = 'weapon_hatchet', price = 1500},
			{name = 'weapon_knuckle', price = 1500},
			{name = 'weapon_machete', price = 1500},
			{name = 'weapon_switchblade', price = 1500},
			{name = 'weapon_wrench', price = 1500},
			{name = 'weapon_battleaxe', price = 1500},
			{name = 'weapon_poolcue', price = 1500},
			{name = 'weapon_stone_hatchet', price = 1500},
			{name = 'WEAPON_PISTOL', price = 115000},
			{name = 'weapon_combatpistol', price = 115000},
			{name = 'weapon_pistol50', price = 115000},
			{name = 'weapon_heavypistol', price = 115000},
			{name = 'weapon_vintagepistol', price = 115000},
			{name = 'weapon_revolver', price = 115000},
			{name = 'weapon_navyrevolver', price = 115000},
			{name = 'WEAPON_MICROSMG', price = 170000},
			{name = 'weapon_smg', price = 170000},
			{name = 'weapon_combatpdw', price = 170000},
			{name = 'weapon_machinepistol', price = 170000},
			{name = 'weapon_minismg', price = 170000},
			{name = 'weapon_pumpshotgun', price = 375000},
			{name = 'weapon_sawnoffshotgun', price = 375000},
			{name = 'weapon_bullpupshotgun', price = 375000},
			{name = 'weapon_dbshotgun', price = 375000},
			{name = 'weapon_combatshotgun', price = 375000},
			{name = 'weapon_assaultrifle', price = 375000},
			{name = 'weapon_assaultrifle_mk2', price = 375000},
			{name = 'weapon_carbinerifle', price = 375000},
			{name = 'weapon_carbinerifle_mk2', price = 375000},
			{name = 'weapon_compactrifle', price = 375000},
			{name = 'weapon_rpg', price = 500000},
			{name = 'weapon_molotov', price = 1},
			{name = 'weapon_smokegrenade', price = 1},
			{name = 'weapon_flare', price = 1},
			{name = 'WEAPON_ASSAULTSMG', price = 375000}
		},
		[2] = {}
	}
}

RegisterNetEvent('::{korioz#0110}::GangsBuilder:SyncGang')
AddEventHandler('::{korioz#0110}::GangsBuilder:SyncGang', function(data)
	ActualGang = data
end)

function KeyboardInput(entryTitle, textEntry, inputText, maxLength)
	AddTextEntry(entryTitle, textEntry)
	DisplayOnscreenKeyboard(1, entryTitle, '', inputText, '', '', '', maxLength)

	while (UpdateOnscreenKeyboard() ~= 1) and (UpdateOnscreenKeyboard() ~= 2) do
		DisableAllControlActions(0)
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		return GetOnscreenKeyboardResult()
	else
		return nil
	end
end

function VectorToArray(vector)
	return {x = vector.x, y = vector.y, z = vector.z}
end