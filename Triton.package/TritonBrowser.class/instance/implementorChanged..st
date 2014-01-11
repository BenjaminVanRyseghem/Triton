private-actions
implementorChanged: anItem 
	| aClass | 
	
	aClass := anItem methodClass.
	self browsedClass = aClass ifTrue: [ ^ self ].
	
	package value: aClass packageTag.
	self browsedClass: aClass theNonMetaClass.
	classSide value: aClass isMeta.
	protocol value: anItem protocol.
	method value: anItem selector.
	
	self registerImplementorNavigation 