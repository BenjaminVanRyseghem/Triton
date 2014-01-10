protocol
computedTitle

	^ self inputMethod
		ifNil: [ self defaultTitle ]
		ifNotNil: [ :method | self title cull: method ]