reflective operations
doesNotUnderstand: aMessage
	| index |
	
	index := aMessage selector allButFirst.
	index := index asInteger.
	index ifNil: [ super doesNotUnderstand: aMessage ].
	(index <= 0 or: [ index > boxes size ]) ifTrue: [ super doesNotUnderstand: aMessage ].
	
	^ boxes at: index