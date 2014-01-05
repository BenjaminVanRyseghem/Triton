system events
methodRemoved: anAnnouncement

	method value = anAnnouncement methodRemoved ifFalse: [ ^ self ].
	text hasUnacceptedEdits ifFalse: [ ^ method value: nil ].
	text hasEditingConflicts: true