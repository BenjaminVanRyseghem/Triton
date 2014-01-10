private-actions
historyNodeClicked: aNode

	self okToChange ifFalse: [ ^ self ].
	self adoptContext: aNode context