private
computeBlock
	| text block |
	
	text := textField getText.
	text := '[ ', self box argument, text, ' ]'.
	block := [ Smalltalk compiler 
		source: text;
		context: nil;
		receiver: nil;
		requestor: textField;
		evaluate ] on: Error do: [ ^ false ].
	self box computationBlock: block.
	
	^ true