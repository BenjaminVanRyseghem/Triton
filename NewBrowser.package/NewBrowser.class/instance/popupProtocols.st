private
popupProtocols
	| menu |

	class value ifNil: [ ^ self ].
	menu := MenuModel new
		addGroup: [ :g |
			g addItem: [ :item | 
				item 
					name: 'Add protocol';
					icon: Smalltalk ui icons smallAddIcon;
					shortcut: $n command, $t command;
					action: [ self addProtocol ] ] ];
		addGroup: [ :g |	| protocols |
			protocols := Set new.
			class value hasMethods ifTrue: [ 
				protocols addAll: class value protocols ].
			class value theMetaClass hasMethods ifTrue: [ 
				protocols addAll: class value theMetaClass protocols ].
			protocols asArray sorted do: [ :e |
				g addItem: [ :item | 
					item 
						name: e;
						action: [ 
							protocol value: e.
							self registerManualNavigation ] ] ] ].
			
	menu openWithSpecAt: protocolButton widget widget bottomLeft.
	menu applyTo: self.