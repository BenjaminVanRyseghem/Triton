protocol
actualClass

	^ (classSide value
			ifTrue: [ class value theMetaClass ]
			ifFalse: [ class value theNonMetaClass ])
	