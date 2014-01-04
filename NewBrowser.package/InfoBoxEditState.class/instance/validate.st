private
validate

	self box defaultTitle: defaultTitle getText.

	self computeTitleBlock
		ifFalse: [ self inform: 'Error while evaluating "', title getText,'"' ].

	self computeBlock
		ifTrue: [ self box showView ]
		ifFalse: [ self inform: 'Error while evaluating "', textField getText,'"' ]