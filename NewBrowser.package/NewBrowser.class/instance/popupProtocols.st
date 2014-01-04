private
popupProtocols
	| menu |
	
	menu := MenuModel new
		addGroup: [ :g |
			g addItem: [ :item | 
				item 
					name: 'Add protocol';
					icon: Smalltalk ui icons smallAddIcon;
					action: [ self halt ] ] ];
		addGroup: [ :g |
			class value protocols sorted do: [ :e |
				g addItem: [ :item | 
					item 
						name: e;
						action: [ protocol value: e ] ] ] ].
			
	menu openWithSpecAt: protocolButton widget widget bottomLeft