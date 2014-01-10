private
retrieveBlockText
	| string index |
	
	string := self box computationBlock asString.
	index := string indexOf: $|.
	index isZero ifTrue: [ index := 1 ].
	^ (string copyFrom: index+1 to: string size -1) trimBoth