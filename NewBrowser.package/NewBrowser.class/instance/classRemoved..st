system events
classRemoved: anAnnouncement

	class value = anAnnouncement classRemoved ifFalse: [ ^ self ].

	class value: nil