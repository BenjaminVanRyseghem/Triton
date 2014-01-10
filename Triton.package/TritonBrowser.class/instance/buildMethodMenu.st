private-menu
buildMethodMenu
	
	^ MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item 
					name: 'Move method';
					enabled: [ method value notNil ];
					shortcut: $m command, $m command;
					action: [ abstractTool categorizeMethods: { self actualMethod } of: class value from: self actualMethod protocol ] ].
			group addItem: [ :item |
				item 
					name: 'Remove method';
					enabled: [ method value notNil and: [ self browsedClass notNil ] ];
					shortcut: $x command, $m command;
					action: [ abstractTool removeMethod: self actualMethod inClass: self browsedClass ] ] ]