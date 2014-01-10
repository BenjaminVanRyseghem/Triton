private-menu
buildPackageMenu
	
	^ MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item 
					name: 'Remove package';
					shortcut: $x command, $p command;
					enabled: [ package value notNil ];
					action: [ self inform: 'Remove package NOT YET IMPLEMENTED' ] ] ]