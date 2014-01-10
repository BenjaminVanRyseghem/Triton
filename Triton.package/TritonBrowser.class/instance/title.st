protocol
title

	^ self browsedClass
		ifNil: [ 'Triton Browser' ]
		ifNotNil: [ :klass | method value
			ifNil: [ klass name ]
			ifNotNil: [ :selector |
				klass name, ' >> ', selector ] ]