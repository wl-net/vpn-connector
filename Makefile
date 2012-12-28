install:
	install 02-vpnup /etc/NetworkManager/dispatcher.d/

uninstall:
	rm /etc/NetworkManager/dispatcher.d/02-vpnup
