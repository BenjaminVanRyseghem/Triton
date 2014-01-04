private
popupClasses
	| menu |
	
	menu := MenuModel new
		addGroup: [ :g |
			g addItem: [ :item | 
				item 
					name: 'Add class';
					icon: Smalltalk ui icons smallAddIcon;
					action: [ self halt ] ] ];
		addGroup: [ :g |
			package value classes do: [ :e |
				g addItem: [ :item | 
					item 
						name: e name asString;
						icon: Smalltalk ui icons classIcon;
						action: [ class value: e ] ] ] ].
			
	menu openWithSpecAt: classButton widget widget bottomLeft