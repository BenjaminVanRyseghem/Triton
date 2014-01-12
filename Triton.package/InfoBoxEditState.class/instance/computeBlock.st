private
computeBlock
	| text compileblock |
	
	text := textField getText.
	text := '[ ', self box argument, text, ' ]'.
	compileblock := [ Smalltalk compiler 
		source: text;
		context: nil;
		receiver: nil;
		requestor: textField;
		evaluate ] on: Error do: [ ^ false ].
	self box computationBlock: compileblock.
	
	^ true