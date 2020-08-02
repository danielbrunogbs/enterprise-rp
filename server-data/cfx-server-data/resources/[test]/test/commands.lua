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

-- NÃO DEIXA O PLAYER ENTRAR EM UM VEICULO

-- Citizen.CreateThread(function()

-- 	while true do

-- 		local status = IsPedInAnyVehicle(ped, false)

-- 		if status then

-- 			local vehicle = GetVehiclePedIsUsing(ped)

-- 			SetVehicleEngineOn(vehicle, false, true, true)

-- 			ShowNotification('Seu carro foi alterado')

-- 		end

-- 		Citizen.Wait(1000)

-- 	end

-- end)