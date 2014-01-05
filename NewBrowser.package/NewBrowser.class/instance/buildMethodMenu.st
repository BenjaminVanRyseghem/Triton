private
buildMethodMenu
	
	^ MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item 
					name: 'Move method';
					shortcut: $m command, $m command;
					action: [ self moveMethod ] ] ]