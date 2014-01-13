private-actions
compileNewMethodFrom: newText notifying: notifyier
	| selector actualProtocol |

	actualProtocol := method value 
		ifNil: [ protocol value ]
		ifNotNil: [ self actualMethod protocol ].

	selector :=  abstractTool
		compileANewMethodInClass: self actualClass
		categorized: actualProtocol
		from: newText asString
		notifyng: notifyier.
		
	selector ifNil: [ 
		text hasUnacceptedEdits: true.
		^ false ].
	
	selector = method value ifFalse: [ method value: selector ].
	
	text changed: #clearUserEdits.
	timeline methodModified