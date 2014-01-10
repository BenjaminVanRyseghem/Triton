protocol
actualClass

	^ (classSide value
			ifTrue: [ self browsedClass theMetaClass ]
			ifFalse: [ self browsedClass theNonMetaClass ])
	