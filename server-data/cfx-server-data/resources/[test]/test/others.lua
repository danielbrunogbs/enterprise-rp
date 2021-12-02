print("Está carregando meu script lua")

local player = PlayerId()
local ped = GetPlayerPed(player)
local pedId = PlayerPedId()

function ShowNotification( text )
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(text)
    DrawNotification(false, false)
end

RegisterCommand('arma', function(source, args, rawCommand)

	GiveWeaponToPed(
		PlayerPedId(),
		args[1],
		args[2],
		false,
		true
	)

	ShowNotification(rawCommand)

end)

RegisterCommand('test', function(source, args, rawCommand)

	hash = GetHashKey(args[1])
	pedId = PlayerPedId()
	id = PlayerId()
	ped = GetPlayerPed(id)

	ShowNotification(hash)
	ShowNotification(id)
	ShowNotification(ped)

	SetPlayerInvincible(id, true)
	SetPlayerMaxArmour(id, true)

end)

-- ALTERAR NÍVEL DE PROCURAOD

RegisterCommand('procurado', function(source, args, rawCommand)
	
	id = PlayerId()

	SetPlayerWantedLevel(id, tonumber(args[1]), false)

	ShowNotification('Seu nível de procurado foi alterado')

end)

-- EXPLODIR O CARRO QUE ESTÁ DENTRO

RegisterCommand('boom', function(source, args, rawCommand)

	vehicle = GetVehiclePedIsUsing(ped)

	ExplodeVehicleInCutscene(vehicle, 1)

	ShowNotification('Explodindo ...')

end)

RegisterCommand('repair', function(source, args, rawCommand)

	vehicle = GetVehiclePedIsUsing(ped)

	SetVehicleFixed(vehicle)

	ShowNotification('Seu veículo foi modificado!')

end)

exports('ShowNotification', ShowNotification)