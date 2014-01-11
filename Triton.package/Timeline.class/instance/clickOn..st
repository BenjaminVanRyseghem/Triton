protocol
clickOn: aNode

	last value: aNode.

	self 
		triggerEvent: #nodeClicked
		with: aNode