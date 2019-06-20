--[[
Esx Core, feito por RenildoMarcio e DenisOPementinha
Alterar carros na lista negra em config.lua, não edite este arquivo, a menos que você saiba o que está fazendo.
]]
-- Função para veículos de pessoal
function isStaffVeh(veh)
	local model = GetEntityModel(veh)
	for i = 1, #vehModelsAdmin do
		local model2 = GetHashKey(vehModelsAdmin[i])
		if model == model2 then
			return true
		end
	end
	return false
end

-- Gerenciar veículos restritos
function ManageRestrictVehicles()
	local ped = PlayerPedId()
	local veh = nil

	if IsPedInAnyVehicle(ped, false) then
		veh = GetVehiclePedIsUsing(ped)
	else
		veh = GetVehiclePedIsTryingToEnter(ped)
	end

	if veh and DoesEntityExist(veh) then
		local model = GetEntityModel(veh)
		local driver = GetPedInVehicleSeat(veh, -1)
		if driver == ped then

			if curAuthLvlRank < authLvlRank["Admin"] and plteam ~= "Team-Admin" then
				if isStaffVeh(veh) then
					ShowInfo("~r~Modelo de veículo restrito.")
					ClearPedTasksImmediately(ped)
				end
			end

			if curAuthLvlRank < authLvlRank["Owner"] then
				for i = 1, #restrictedVehsGen do
					local restrictedModel = GetHashKey(restrictedVehsGen[i])
					if (model == restrictedModel) or (GetVehicleClass(veh) == 19) then -- Militares
						ShowInfo("~r~Modelo de veículo restrito.")
						DeleteEntity(veh)
						ClearPedTasksImmediately(ped)
					end
				end
			end

			if curAuthLvlRank < authLvlRank["Sadmin"] then
				for i = 1, #restrictedVehsSnrAdmin do
					local restrictedModel = GetHashKey(restrictedVehsSnrAdmin[i])
					if model == restrictedModel then
						ShowInfo("~r~Modelo de veículo restrito.")
						ClearPedTasksImmediately(ped)
					end
				end
			end

			if curAuthLvlRank < authLvlRank["Admin"] then
				for i = 1, #restrictedVehsAdmin do
					local restrictedModel = GetHashKey(restrictedVehsAdmin[i])
					if model == restrictedModel then
						ShowInfo("~r~Modelo de veículo restrito.")
						ClearPedTasksImmediately(ped)
					end
				end
			end

			if curAuthLvlRank < authLvlRank["M3"] then
				for i = 1, #restrictedVehsM3 do
					local restrictedModel = GetHashKey(restrictedVehsM3[i])
					if model == restrictedModel then
						ShowInfo("~r~Modelo de veículo restrito.")
						ClearPedTasksImmediately(ped)
					end
				end
			end

			if curAuthLvlRank < authLvlRank["M2"] then
				for i = 1, #restrictedVehsM2 do
					local restrictedModel = GetHashKey(restrictedVehsM2[i])
					if model == restrictedModel then
						ShowInfo("~r~Modelo de veículo restrito.")
						ClearPedTasksImmediately(ped)
					end
				end
			end

			if curAuthLvlRank < authLvlRank["M1"] then
				if GetVehicleClass(veh) == 7 or GetVehicleClass(veh) == 15 or GetVehicleClass(veh) == 16 then -- Motos
					ShowInfo("~r~Modelo de veículo restrito.")
					ClearPedTasksImmediately(ped)
				end
			end
		end
	end
end

--[[
	Lista de tipos de classes de veículos.
	https://runtime.fivem.net/doc/reference.html#_0x29439776AAA00A62
]]--
