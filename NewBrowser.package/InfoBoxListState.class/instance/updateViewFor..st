initialize
updateViewFor: aBox

	process ifNotNil: [ process terminate ].
	process := [ 
		aBox
			ifNil: [ 
				title text: ''.
				list items: #() ]
			ifNotNil: [ 
				title text: aBox computedTitle.
				list items: aBox computedItems ] ] fork.