initialization
initializeProtocolButton
	protocolButton
		label: 'Protocol';
		enabled: false;
		shortcut: shortcuts chooseProtocol;
		menu: self buildProtocolMenu;
		action: [ self popupProtocols ]