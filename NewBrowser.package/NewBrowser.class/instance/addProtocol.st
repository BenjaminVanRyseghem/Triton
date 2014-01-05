private-actions
addProtocol
	"Present a choice of categories or prompt for a new category name and add it before the current selection, or at the end if no current selection"
	| newName |
	
	self okToChange ifFalse: [^ self].
	class value ifNil: [^ self].

	newName := abstractTool 
		addCategoryIn: self actualClass 
		before: protocol value.

	newName ifNil: [ ^ self ].

	protocol value: newName.