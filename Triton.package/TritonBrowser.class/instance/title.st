protocol
title

	^ class value
		ifNil: [ 'New Browser' ]
		ifNotNil: [ :klass | method value
			ifNil: [ klass name ]
			ifNotNil: [ :selector |
				klass name, ' >> ', selector ] ]