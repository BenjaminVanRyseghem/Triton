private-actions
findClass: aSearchInstance
	"select the class returned by the search block"
	| aClass |
	
	self okToChange ifFalse: [^ self flashPackage ].
	aClass := aSearchInstance chooseFromOwner: self window.

	aClass ifNil: [ ^ self ].

	self package: aClass package.
	self browsedClass: aClass