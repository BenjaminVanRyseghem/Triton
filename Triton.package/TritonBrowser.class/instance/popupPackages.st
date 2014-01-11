private
popupPackages
	| menu |
	
	menu := MenuModel new
		addGroup: [ :g |
			g addItem: [ :item | 
				item 
					name: 'Add package';
					icon: Smalltalk ui icons smallAddIcon;
					action: [ self halt ] ] ];
		addGroup: [ :g |
			project packages do: [ :e |
				g addItem: [ :item | 
					item 
						name: e name asString;
						icon: Smalltalk ui icons packageIcon;
						action: [ 
							package value: e.
							self registerManualNavigation ] ] ] ].
			
	menu openWithSpecAt: packageButton widget widget bottomLeft.
	menu applyTo: self.