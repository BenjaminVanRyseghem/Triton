private
popupMethods
	| menu |
	
	protocol value ifNil: [ ^ self ].
	menu := MenuModel new
		addGroup: [ :g |
			g addItem: [ :item | 
				item 
					name: 'Add method';
					icon: Smalltalk ui icons smallAddIcon;
					action: [ self halt ] ].
			g addItem: [ :item | 
				item 
					name: 'Add class side method';
					icon: Smalltalk ui icons smallAddIcon;
					action: [ self halt ] ] ];
		addGroup: [ :g |
			((class value methodsInProtocol: protocol value) sorted: [:a :b | a selector <= b selector ]) do: [ :e |
				g addItem: [ :item | 
					item 
						name: e selector;
						action: [ 
							method value: e selector.
							classSide value: false ] ] ] ];
		addGroup: [ :g |
			((class value theMetaClass methodsInProtocol: protocol value) sorted: [:a :b | a selector <= b selector ]) do: [ :e |
				g addItem: [ :item | 
					item 
						name: e selector;
						action: [ 
							method value: e selector.
							classSide value: true ] ] ] ].
			
	menu openWithSpecAt: methodButton widget widget bottomLeft.
	menu applyTo: self.