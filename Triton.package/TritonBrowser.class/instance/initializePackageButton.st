initialization
initializePackageButton
	packageButton
		label: 'Package';
		icon: Smalltalk ui icons packageIcon;
		shortcut: shortcuts choosePackage;
		menu: self buildPackageMenu;
		action: [ self popupPackages ]