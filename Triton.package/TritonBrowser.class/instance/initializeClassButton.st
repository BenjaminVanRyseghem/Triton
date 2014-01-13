initialization
initializeClassButton
	classButton
		label: 'Class';
		enabled: false;
		icon: self defaultClassIcon;
		shortcut: shortcuts chooseClass;
		menu: self buildClassMenu;
		action: [ self popupClasses ]