--[[
Esx Core, feito por RenildoMarcio e DenisOPementinha
Alterar armas na lista negra em config.lua, não edite este arquivo, a menos que você saiba o que está fazendo.
]]
function ManageRestrictWeaps()
	local ped_l = PlayerPedId()

        if curAuthLvlRank < authLvlRank["Owner"] then
            for i = 1, #restrictedWeapsGen do
                local restrictedWeap = GetHashKey(restrictedWeapsGen[i])
                if HasPedGotWeapon(ped_l, rweap, false) then
                    RemoveWeaponFromPed(ped_l, restrictedWeap)
                    ShowInfo("~r~Modelo de Arma Restrita.")
                end
                local temp, currentWeap = GetCurrentPedWeapon(ped_l, true)
                if GetWeaponDamageType(currentWeap) == 5 then
                    RemoveWeaponFromPed(ped_l, currentWeap)
                    ShowInfo("~r~Modelo de Arma Restrita.")
                end
            end
        end

		if curAuthLvlRank < authLvlRank["M3"] then
			for i = 1, #restrictedWeapsM3 do
				local restrictedWeap = GetHashKey(restrictedWeapsM3[i])
				if HasPedGotWeapon(ped_l, rweap, false) then
                    RemoveWeaponFromPed(ped_l, restrictedWeap)
                    ShowInfo("~r~Modelo de Arma Restrita.")
				end
				local temp, currentWeap = GetCurrentPedWeapon(ped_l, true)
				if GetWeaponDamageType(currentWeap) == 5 then
                    RemoveWeaponFromPed(ped_l, currentWeap)
                    ShowInfo("~r~Modelo de Arma Restrita.")
				end
			end
		end

		if curAuthLvlRank < authLvlRank["M1"] then
			for i = 1, #restrictedWeapsM1 do
				local restrictedWeap = GetHashKey(restrictedWeapsM1[i])
				if HasPedGotWeapon(ped_l, rweap, false) then
                    RemoveWeaponFromPed(ped_l, restrictedWeap)
                    ShowInfo("~r~Modelo de Arma Restrita.")
				end
				local temp, currentWeap = GetCurrentPedWeapon(ped_l, true)
				if GetWeaponDamageType(currentWeap) == 5 then
                    RemoveWeaponFromPed(ped_l, currentWeap)
                    ShowInfo("~r~Modelo de Arma Restrita.")
				end
			end
		end
end

--[[
	Lista de tipos de dano de arma.
	https://runtime.fivem.net/doc/reference.html#_0x3BE0BB12D25FB305
]]--
