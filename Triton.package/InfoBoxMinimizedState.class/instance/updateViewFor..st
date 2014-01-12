initialize
updateViewFor: aBox

	aBox
		ifNil: [ title text: '' ]
		ifNotNil: [ title text: aBox computedTitle ]