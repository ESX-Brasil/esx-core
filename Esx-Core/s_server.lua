--[[
	CONFIGURAÇÃO GERAL
]]
-- Você tem a extensão Whitelist? (Defina como "true" ou "false").
EsxcWhiteL = true

--[[
Esx Core, feito por RenildoMarcio e DenisOPementinha
Não edite esse arquivo. Por favor edite o config.lua
]]
-- Cheques para Perms Ace
RegisterServerEvent("Esx:CheckWhite")
AddEventHandler('Esx:CheckWhite', function()

    local source -- apenas add a fonte não que existe por qualquer motivo
    if IsPlayerAceAllowed(source, "owner") then
        TriggerClientEvent("setPlayerGroup", source, "Owner")
    elseif IsPlayerAceAllowed(source, "snradmin") then
        TriggerClientEvent("setPlayerGroup", source, "Sadmin")
    elseif IsPlayerAceAllowed(source, "fadmin") then
        TriggerClientEvent("setPlayerGroup", source, "Admin")
    elseif IsPlayerAceAllowed(source, "vip3") then
        TriggerClientEvent("setPlayerGroup", source, "M3")
    elseif IsPlayerAceAllowed(source, "vip2") then
        TriggerClientEvent("setPlayerGroup", source, "M2")
    elseif IsPlayerAceAllowed(source, "vip1") then
        TriggerClientEvent("setPlayerGroup", source, "M1")
    else
        TriggerClientEvent("setPlayerGroup", source, "Guest")
    end
end)

-- Comando ODA
RegisterCommand("oda", function(source, args, rawCommand)
    if IsPlayerAceAllowed(source, "owner") then
        TriggerClientEvent("EsxCore:TeamYes", source)
    -- Verificar perms de administrador sênior
    elseif IsPlayerAceAllowed(source, "snradmin") then
        TriggerClientEvent("EsxCore:TeamYes", source)
    -- Verificar perms de administrador
    elseif IsPlayerAceAllowed(source, "fadmin") then
        TriggerClientEvent("EsxCore:TeamYes", source)
	else
		print('EsxCore : Acesso negado após /ODA foi usado.')
	end
end)

-- Verificador de versão
PerformHttpRequest("https://raw.githubusercontent.com/DenisOPementinha/scripts-fivem-versoes/master/esx-core/versao.txt", function(err, serverVersion, headers)
    local version = "v1.0.0"
    if string.find(serverVersion, version) == nil then
        Wait(120)
        print("\n")
        print("------------------------- Esx-Core --------------------------")
        print("----- ALERTA: Sua versão do Esx-Core está desatualizada -----")
        print("--- Por favor, atualize sua versão o mais rápido possível ---")
        print("---------- https://github.com/ESX-Brasil/esx-core -----------")
        print("-------------------------------------------------------------")
        print("\n")
    else
        Wait(120)
        print("\n")
        print("---------------------- Esx-Core -----------------------")
        print("----------- Esx Core está na última versão ------------")
        print("-------------------------------------------------------")
    end
end)

Citizen.CreateThread(function ()
check = (GetConvar("Esx-Core", "false") == "true")
    if not check then
        Wait(140)
        print("\n")
        print("------------------------ Esx-Core -------------------------")
        print("- ALERTA: As permissões não estão definidas corretamente  -")
        print("- Por favor, leia o Wiki sobre como configurar permissões -")
        print("--------- https://github.com/ESX-Brasil/esx-core ----------")
        print("-----------------------------------------------------------")
        print("\n")
    end
end)
