accessing
size
	| count |
	count := 0.
	self nodesDo: [ :e | count := count + 1 ].
	
	^ count