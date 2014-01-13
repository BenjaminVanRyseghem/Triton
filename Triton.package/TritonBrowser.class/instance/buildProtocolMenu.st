private-menu
buildProtocolMenu
	
	^ MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item 
					name: 'Remove protocol';
					shortcut: shortcuts removeProtocol;
					enabled: [ protocol value notNil and: [ self browsedClass notNil and: [ protocol value ~= AllProtocol defaultName ] ] ];
					action: [ abstractTool removeCategory: protocol value inClass: self browsedClass ] ] ] 