accessing
items
	^ items sorted: [ :a :b | a methodClass name < b methodClass name ]