private
popupClasses
	| menu |
	
	package value ifNil: [ ^ self ].
	menu := MenuModel new
		addGroup: [ :g |
			g addItem: [ :item | 
				item 
					name: 'Add class';
					icon: Smalltalk ui icons smallAddIcon;
					action: [ abstractTool addClassIn: package value ] ] ];
		addGroup: [ :g |
			(package value classes sorted: [ :a :b | a name < b name ]) do: [ :e |
				g addItem: [ :item | 
					item 
						name: e name asString;
						icon: Smalltalk ui icons classIcon;
						action: [ class value: e ] ] ] ].
			
	menu openWithSpecAt: classButton widget widget bottomLeft.
	menu applyTo: self.