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
		addGroup: [ :g | self addDefinedClassesIn: g ];
		addGroup: [ :g | self addExtensionClassesIn: g ].
		
	menu openWithSpecAt: classButton widget widget bottomLeft.
	menu applyTo: self