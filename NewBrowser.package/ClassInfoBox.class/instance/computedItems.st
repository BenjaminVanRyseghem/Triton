protocol
computedItems

	^ self inputClass
		ifNil: [ self defaultValue ]
		ifNotNil: [ :klass | self computationBlock cull: klass ]