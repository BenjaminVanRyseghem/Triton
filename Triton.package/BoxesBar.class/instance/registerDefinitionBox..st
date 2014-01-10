registring
registerDefinitionBox: aBox

	aBox
		when: #changed
		send: #definitionChanged:
		to: self