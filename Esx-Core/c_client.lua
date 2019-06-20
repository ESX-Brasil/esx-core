--[[
Esx Core, feito por RenildoMarcio e DenisOPementinha
Alterar equipe na lista negra em config.lua, não edite este arquivo, a menos que você saiba o que está fazendo.
]]

-- Verifica se há perms ao entrar no servidor
AddEventHandler('onClientMapStart', function()
	TriggerServerEvent('Esx:CheckWhite')
end)

-- Equipes
plteam = "Convidado-da-equipe"

RegisterNetEvent('EsxCore:TeamYes')
AddEventHandler('EsxCore:TeamYes', function()
	plteam = "Administrador-da-equipe"
	ShowInfo('~y~Sistema de permissão ~n~~w~Sua equipe agora é: Administrador da equipe')
end)

-- Define a tabela de classificação, não edite
authLvlRank =
{
	["Guest"] = 0,
	["M1"] = 1,
	["M2"] = 2,
	["M3"] = 3,
	["Admin"] = 4,
	["Sadmin"] = 5,
	["Owner"] = 6,
}

---- Triggering Perms ----
Citizen.CreateThread(function()
	while true do

		local ped = PlayerPedId()
		if DoesEntityExist(ped) and not IsEntityDead(ped) then
			ManageRestrictVehicles()
			ManageRestrictWeaps()
			ManageRestrictPeds()
		end
		Citizen.Wait(500)
	end
end)

RegisterNetEvent("setPlayerGroup")
AddEventHandler("setPlayerGroup", function(group)
	curAuthLvlRank = authLvlRank[group]
end)

RegisterNetEvent("sendNotification")
AddEventHandler("sendNotification", function(string)
	ShowInfo(string)
end)

---- Funções ----
-- Notificação
function ShowInfo(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName(text)
	DrawNotification(false, false)
end
