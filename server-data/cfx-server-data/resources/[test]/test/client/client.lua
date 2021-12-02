function ShowNotification( text )
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(text)
    DrawNotification(false, false)
end

RegisterCommand('teste', function()

	print('Entrou no comando de teste!')

	TriggerServerEvent('test:load')

end)

RegisterNetEvent('test:load_result', function()

	ShowNotification('Trouxe o resultado do backend')

end)