private-actions
addMethod
	| methodName actualProtocol |
	
	self okToChange ifFalse: [ ^ self ].
	
	methodName := UIManager default 
		request: 'Method signature'
		initialAnswer: 'selector: argument' 
		title: 'New method'.
		
	methodName ifNil: [ ^ self ].
	actualProtocol := protocol value.
	actualProtocol = AllProtocol defaultName
		ifTrue: [ actualProtocol := Protocol unclassified ].
	
	text text: methodName.
	text takeKeyboardFocus.
	timeline methodAdded