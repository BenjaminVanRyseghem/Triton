private-actions
findClass: aSearchInstance
	"select the class returned by the search block"
	| aClass |
	
	aClass := aSearchInstance chooseFromOwner: self window.

	aClass ifNil: [ ^ self ].

	self okToChange ifFalse: [ ^ self flashPackage ].
	self package: aClass packageTag.
	self browsedClass: aClass.
	self registerManualNavigation