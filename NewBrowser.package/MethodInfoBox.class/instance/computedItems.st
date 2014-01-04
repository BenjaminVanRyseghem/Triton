protocol
computedItems

	^ self inputMethod
		ifNil: [ #() ]
		ifNotNil: [ :method | self computationBlock cull: method ]