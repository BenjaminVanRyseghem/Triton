private-menu
buildClassMenu
	
	^ MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item 
					name: 'Remove class';
					shortcut: shortcuts removeClass;
					enabled: [ self browsedClass notNil ];
					action: [ self removeClass: self browsedClass ] ] ]