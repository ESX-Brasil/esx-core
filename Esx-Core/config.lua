--[[

 Please note. When adding cars, weapons or peds that all characterization is uppercase (A, B, C not a, b, c)
 Also when making separate lines you are required to place a comma (,) on all lines except the last, as seen below.
 Links for lists of vehicles, weapons and peds can be found at the very bottom of this file.

 Configs in this file include
 - Vehicle blacklists
 - Weapon blacklists
 - Ped models blacklists
 - Extra Information

]]

--[[
	SEÇÃO DO VEÍCULO

	NOTAS

	x Não adicione veículos militares! Eles são adicionados como uma classe de veículo para tornar sua vida melhor!
	x Os veículos forçarão as pessoas a sair deles, exceto os veículos em "restrictedVehsGen"
	x Todos os Super carros já estão na lista negra para convidados por padrão
]]
-- Veículos restritos para todos, exceto os administradores
vehModelsAdmin =
{
	"ADMIN",
	"ADMIN2",
}

-- Veículos que são restritos para pessoas abaixo do Proprietário (Administrador do Snr, Admin, M3, M2, M1, Convidado)
restrictedVehsGen =
{
	"APC",
	"BALLER5",
	"BALLER6",
	"BLIMP",
	"BLIMP2",
	"BLAZER4",
	"BLAZER5",
	"BRICKADE",
	"BUZZARD",
	"BOXVILLE5",
	"CARGOPLANE",
	"COG552",
	"COGNOSCENTI2",
	"DUKES2",
	"DUNE2",
	"DUNE3",
	"DUNE4",
	"DUNE5",
	"DUMP",
	"HYDRA",
	"INSURGENT",
	"INSURGENT2",
	"INSURGENT3",
	"JET",
	"KURUMA2",
	"LAZER",
	"LIMO2",
	"MARSHALL",
	"MONSTER",
	"RHINO",
	"SAVAGE",
	"SCHAFTER5",
	"SCHAFTER6",
	"SHEAVA",
	"SHOTARO",
	"SKYLIFT",
	"TECHNICAL",
	"TECHNICAL2",
	"TECHNICAL3",
	"TROPHYTRUCK",
	"TROPHYTRUCK2",
	"TUG",
	"VALKYRIE",
	"VALKYRIE2",
	"XLS2",
	"OPPRESSOR",
	"TAMPA3",
	"TRAILERSMALL2",
	"ARDENT",
	"HALFTRACK",
	"PHANTOM2",
	"RUINER2",
	"VOLTIC2",
	"WASTELANDER",
	"NIGHTSHARK",
	"CARTRAILER",
	"RAMPTRUCK",
	"HUNTER",
    "VIGILANTE",
    "BOMBUSHKA",
    "ROGUE",
    "ALPHAZ1",
    "STARLING",
    "TULA",
    "RIOT2",
    "AKULA",
    "AVENGER",
    "AVENGER2",
    "BARRAGE",
    "CHERNOBOG",
    "KHANJALI",
    "STROMBERG",
    "VOLATOL",
    "THRUSTER",
    "PYRO",
    "MOGUL",
    "NOKOTA",
    "BOMBUSHKA",
    "MOLOTOK",
    "MICROLIGHT",
    "REVOLTER",
	"DELUXO",
	"SEABREEZE",
	"CARACARA",
}

-- Veículos restritos para pessoas abaixo de Proprietário (Admin, M3, M2, M1, Convidado)
restrictedVehsSnrAdmin =
{
	"CAR1",
	"CAR2",
}

-- Veículos restritos a pessoas abaixo do proprietário (M3, M2, M1, Convidado)
restrictedVehsAdmin =
{
	"CAR3",
	"CAR4",
}

-- Veículos restritos para pessoas abaixo do proprietário (M2, M1, Convidado)
restrictedVehsM3 =
{
	"CAR5",
	"CAR6",
}

-- Veículos restritos para pessoas abaixo de Proprietário (M1, Convidado)
restrictedVehsM2 =
{
	"CAR7",
	"CAR8",
}
--[[
SEÇÃO DE ARMA

NOTAS

x armas explosivas são adicionados em weaps.lua. Para desabilitar isso edite o arquivo ou assista ao vídeo feito por RenildoMarcio e DenisOPementinha.
]]
-- Armas que são restritas para pessoas abaixo do proprietário (Administrador do Snr, Admin, M3, M2, M1, Convidado)
restrictedWeapsGen =
{
	"WEAPON_AIRSTRIKE_ROCKET",
	"WEAPON_ASSAULTSHOTGUN",
	"WEAPON_COMBATMG",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_GRENADE",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_MG",
	"WEAPON_MINIGUN",
	"WEAPON_MOLOTOV",
	"WEAPON_PASSENGER_ROCKET",
	"WEAPON_PIPEBOMB",
	"WEAPON_PROXMINE",
	"WEAPON_RAILGUN",
	"WEAPON_REVOLVER",
	"WEAPON_RPG",
	"WEAPON_SMG",
	"WEAPON_SMG_MK2",
	"WEAPON_STICKYBOMB",
	"WEAPON_ASSAULTRIFLE_MK2",
	"WEAPON_CARBINERIFLE_MK2",
	"WEAPON_HEAVYSNIPER_MK2",
	"WEAPON_COMBATMG_MK2",
	"WEAPON_PISTOL_MK2",
}

-- Armas que são restritas para pessoas abaixo de M3 (M2, M1, Convidado)
restrictedWeapsM3 =
{
	"WEAPON_HEAVYSNIPER",
	"WEAPON_RIFLE_HEAVY",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_SNOWBALL",
	"WEAPON_FLAREGUN",
}

-- Armas que são restritas para pessoas abaixo de M1 (Convidado)
restrictedWeapsM1 =
{
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_MARKSMANRIFLE",
	"WEAPON_SPECIALCARBINE",
}

--[[
	SEÇÃO MODELO PED
]]
-- Alterna de volta para abaixo quando um usuário está em uma lista negra.
newModel = GetHashKey("a_m_y_hipster_01")

-- Definir funcionários / admin peds. Estes estão na lista negra. Use / oda para ir de plantão como administrador.
restrictedPedsStaff =
{
	"s_m_y_seb_01",
	"s_m_y_seb_02",
}

-- Peds que são restritos para pessoas abaixo do proprietário (administrador do Snr, Admin, M3, M2, M1, Convidado)
restrictedPedsAll =
{
	"a_c_dolphin",
	"a_c_pigeon",
	"a_c_seagull",
	"a_c_killerwhale",
	"a_c_sharkhammer",
	"a_c_sharktiger",
	"a_c_stingray",
	"a_c_humpback",
	"a_c_fish",
	"a_c_chickenhawk",
}

-- Peds que são restritos para pessoas abaixo de M3 (M2, M1, Convidados)
restrictedPedsM3 =
{
	"a_c_chimp",
	"a_c_cormorant",
	"a_c_coyote",
	"a_c_hen",
	"a_c_rabbit_01",
	"a_c_rat",
	"a_c_rhesus",
	"a_c_mtlion",
	"ap_sp_dick",
	"ap_fra_ped",
	"S_M_M_MovAlien_01",
	"S_M_M_MovSpace_01",
	"U_M_Y_RSRanger_01",
	"U_M_Y_Zombie_01",
	"a_m_m_og_boss_01",
	"a_m_m_soucent_04",
}

-- Peds que são restritos para pessoas abaixo de M2 (M1, Convidados)
restrictedPedsM2 =
{
	"a_c_chimp",
	"a_c_cormorant",
	"a_c_coyote",
	"a_c_hen",
	"a_c_rabbit_01",
	"a_c_rat",
	"a_c_rhesus",
	"a_c_mtlion",
	"ap_sp_dick",
	"ap_fra_ped",
	"S_M_M_MovAlien_01",
	"S_M_M_MovSpace_01",
	"U_M_Y_RSRanger_01",
	"U_M_Y_Zombie_01",
	"a_m_m_og_boss_01",
	"a_m_m_soucent_04",
}

-- Peds que são restritos para pessoas abaixo de M1 (Convidado)
restrictedPedsM1 =
{
	"a_c_chop",
	"a_c_cat_01",
	"a_c_shepherd",
	"a_c_cow",
	"a_c_crow",
	"a_c_deer",
	"a_c_husky",
	"a_c_pig",
	"a_c_boar",
	"a_c_poodle",
	"a_c_pug",
	"a_c_retriever",
	"a_c_rottweiler",
	"a_c_westy",
}

--[[
Links para listas de veículos, peds e armas:

Os links abaixo mudaram! Eles não vão funcionar!
Vehicles: https://wiki.fivem.net/wiki/Vehicles
Modelos Ped: https://wiki.fivem.net/wiki/Peds
Modelos de Arma: https://wiki.fivem.net/wiki/Weapons


Obter RPG e RAIGUNS BLACKLISTED! USE O SEGUINTE!
WEAPON_RAILGUN
WEAPON_MINIGUN
WEAPON_RPG

Certifique-se de que todos estão em maiúsculas ao colocá-los neste arquivo.
]]--
