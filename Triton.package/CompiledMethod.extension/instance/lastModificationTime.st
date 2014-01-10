*Triton
lastModificationTime
	| timeStamp list date time |
	
	timeStamp := self timeStamp.
	timeStamp isEmpty ifTrue: [ ^ DateAndTime new ].
	
	list := timeStamp splitOn: ' '.
	date := Date fromString: list second.
	time := Time fromString: list third.
	
	^ DateAndTime
		date: date
		time: time