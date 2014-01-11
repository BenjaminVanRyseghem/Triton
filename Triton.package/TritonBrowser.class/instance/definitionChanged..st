private-actions
definitionChanged: aClass
	
	self browsedClass = aClass ifTrue: [ ^ self ].
	
	package value: aClass packageTag.
	self browsedClass: aClass theNonMetaClass.
	classSide value: aClass isMeta.

	self registerClassCreatedNavigation