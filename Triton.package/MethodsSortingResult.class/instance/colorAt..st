protocol
colorAt: anInteger 
	| group |
	
	group := groups 
		detect: [ :e | e range includes: anInteger ]
		ifNone: [ ^ Color white ].
	
	^ group color