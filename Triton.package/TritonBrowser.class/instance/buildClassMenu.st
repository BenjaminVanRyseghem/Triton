private-menu
buildClassMenu
	
	^ MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item 
					name: 'Remove class';
					shortcut: $x command, $c command;
					enabled: [ self browsedClass notNil ];
					action: [ self removeClass: self browsedClass ] ] ]