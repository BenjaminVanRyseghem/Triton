initialization
initializeMethodButton
	methodButton
		label: 'Method';
		enabled: false;
		shortcut: shortcuts chooseMethod;
		menu: self buildMethodMenu;
		action: [ self popupMethods ]