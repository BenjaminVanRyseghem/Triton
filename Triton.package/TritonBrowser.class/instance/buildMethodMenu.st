private-menu
buildMethodMenu
	
	^ MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item 
					name: 'Move method';
					enabled: [ method value notNil ];
					shortcut: shortcuts moveMethod;
					action: [ abstractTool categorizeMethods: { self actualMethod } of: class value from: self actualMethod protocol ] ].
			group addItem: [ :item |
				item 
					name: 'Remove method';
					enabled: [ method value notNil and: [ self browsedClass notNil ] ];
					shortcut: shortcuts removeMethod;
					action: [ abstractTool removeMethod: self actualMethod inClass: self browsedClass ] ] ]