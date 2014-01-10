system events
classRenamed: anAnnouncement

	self browsedClass = anAnnouncement classRenamed ifFalse: [ ^ self ].

	classButton label: anAnnouncement newName