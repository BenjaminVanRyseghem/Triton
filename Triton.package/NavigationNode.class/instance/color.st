ui
color

	^ self isDirty
		ifTrue: [ Color fromHexString: 'c92c16' ]
		ifFalse: [ Color fromHexString: '5383b5' ]