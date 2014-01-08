protocol
stringDescription

	^ (self isDirty
		ifTrue: [ '*' ]
		ifFalse: [ 'x' ])