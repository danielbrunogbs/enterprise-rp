console.log('Esse script é do cliente!');

function ShowNotification(text)
{
	SetNotificationTextEntry("STRING");
    AddTextComponentSubstringPlayerName(text);
    DrawNotification(false, false);
}

RegisterCommand('teste', () => {

	emit('test:log');

});

onNet('test:log_result', () => {

	ShowNotification('Ele deu retorno do backend!');

});