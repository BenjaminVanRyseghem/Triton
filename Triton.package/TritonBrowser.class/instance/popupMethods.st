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
					action: [ self addMethod ] ].
			g addItem: [ :item | 
				item
					name: 'Add class side method';
					icon: Smalltalk ui icons smallAddIcon;
					action: [ self halt ] ] ];
		addGroup: [ :g | self addInstanceSideMethodsIn: g ];
		addGroup: [ :g | self addClassSideMethodsIn: g ].
	menu applyTo: self.
	menu openWithSpecAt: methodButton widget widget bottomLeft.
	text takeKeyboardFocus