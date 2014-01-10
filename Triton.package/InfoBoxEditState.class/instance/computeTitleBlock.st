private
computeTitleBlock
	| text resultBlock |
	
	text := title getText.
	text := '[ ', self box argument, text, ' ]'.
	resultBlock := [ Smalltalk compiler 
		source: text;
		context: nil;
		receiver: nil;
		requestor: title;
		evaluate ] on: Error do: [ ^ false ].
	self box title: resultBlock.
	
	^ true