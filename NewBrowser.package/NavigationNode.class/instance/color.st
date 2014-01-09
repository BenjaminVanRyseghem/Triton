ui
color

	^ self isDirty
		ifTrue: [ Color fromHexString: 'ff3329' ]
		ifFalse: [ Color fromHexString: '5383b5' ]