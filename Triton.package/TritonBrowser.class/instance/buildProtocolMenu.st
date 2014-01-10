private-menu
buildProtocolMenu
	
	^ MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item 
					name: 'Remove protocol';
					shortcut: $x command, $t command;
					enabled: [ protocol value notNil and: [ self browsedClass notNil and: [ protocol value ~= AllProtocol defaultName ] ] ];
					action: [ abstractTool removeCategory: protocol value inClass: self browsedClass ] ] ] 