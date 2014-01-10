initialize
updateViewFor: aBox
	| newText |

	newText := aBox 
		ifNil: [ '' ]
		ifNotNil: [ aBox computedItems ].
		
	text hasUnacceptedEdits 
		ifTrue: [ | pending |
			pending := text pendingText.
			text text: newText.
			text pendingText: pending.
			text hasEditingConflicts: true.
			^ self ].
		
	aBox
		ifNil: [ title text: '' ]
		ifNotNil: [ title text: aBox computedTitle ].
		
	text text: newText.