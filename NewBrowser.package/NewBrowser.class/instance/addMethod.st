private-actions
addMethod
	| methodName actualProtocol |
	
	methodName := UIManager default 
		request: 'Method signature'
		initialAnswer: 'selector: argument' 
		title: 'New method'.
		
	methodName ifNil: [ ^ self ].
	actualProtocol := protocol value.
	actualProtocol = AllProtocol defaultName
		ifTrue: [ actualProtocol := Protocol unclassified ].
	
	method value: (class value
		compile: methodName
		classified: actualProtocol
		notifying: text)
	