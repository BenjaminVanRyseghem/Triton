accessing
browsedClass: aClass
	"Set the class. Returns if the class was actually changed or not"
	
	self okToChange ifFalse: [ ^ false ].
	class value: aClass.
	^ true