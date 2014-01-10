private-actions
senderChanged: anItem
	| aClass | 
	
	aClass := anItem methodClass.
	package value: aClass package.
	class value: aClass theNonMetaClass.
	classSide value: aClass isMeta.
	protocol value: anItem protocol.
	method value: anItem selector.
	
	self registerSenderNavigation 