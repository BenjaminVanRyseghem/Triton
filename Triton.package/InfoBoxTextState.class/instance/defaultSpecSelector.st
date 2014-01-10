private
defaultSpecSelector

	^ self box isEditable
		ifTrue: [ #defaultSpec ]
		ifFalse: [ #notEditableSpec ]