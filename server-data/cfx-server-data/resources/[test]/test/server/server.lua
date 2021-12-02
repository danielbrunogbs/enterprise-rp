print('Está carregando o script do servidor!')

RegisterServerEvent('test:load')

AddEventHandler('test:load', function()

	TriggerClientEvent('test:load_result', source)

end)