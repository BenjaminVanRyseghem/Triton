system events
classRemoved: anAnnouncement

	self browsedClass = anAnnouncement classRemoved ifFalse: [ ^ self ].

	self browsedClass: nil