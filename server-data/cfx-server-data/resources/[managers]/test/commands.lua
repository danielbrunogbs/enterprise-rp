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