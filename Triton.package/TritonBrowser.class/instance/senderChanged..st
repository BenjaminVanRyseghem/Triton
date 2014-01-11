private-actions
senderChanged: anItem
	| aClass | 
	
	aClass := anItem methodClass.
	(self browsedClass = aClass and: [ anItem selector = method value ])
		ifTrue: [ ^ self ].
	
	package value: aClass packageTag.
	self browsedClass: aClass theNonMetaClass.
	classSide value: aClass isMeta.
	protocol value: anItem protocol.
	method value: anItem selector.
	
	self registerSenderNavigation 