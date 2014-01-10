system events
methodModified: anAnnouncement

	method value = anAnnouncement selector ifFalse: [ ^ self ].
	text hasUnacceptedEdits ifFalse: [ ^ method value: anAnnouncement selector ].
	text hasEditingConflicts: true