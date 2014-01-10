protocol
addMenuItemsToWindowMenu: aMenu

	aMenu
		addLine;
		add: 'Add a method info box' translated target: self action: #addMethodBox;
		add: 'Add a class info box' translated target: self action: #addClassBox