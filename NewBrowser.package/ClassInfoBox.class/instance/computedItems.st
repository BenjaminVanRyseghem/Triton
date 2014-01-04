protocol
computedItems

	^ self inputClass
		ifNil: [ #() ]
		ifNotNil: [ :klass | self computationBlock cull: klass ]