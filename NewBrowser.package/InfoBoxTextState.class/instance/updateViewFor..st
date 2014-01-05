initialize
updateViewFor: aBox

	process ifNotNil: [ process terminate ].
	process := [ 
		aBox
			ifNil: [ 
				title text: ''.
				text text: '' ]
			ifNotNil: [ 
				title text: aBox computedTitle.
				text text: aBox computedItems ] ] fork.