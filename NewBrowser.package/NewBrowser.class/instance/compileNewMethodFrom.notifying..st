private
compileNewMethodFrom: newText notifying: notifyier
	| selector |

	selector :=  abstractTool
		compileANewMethodInClass: self actualClass
		categorized: self actualMethod protocol
		from: newText asString
		notifyng: notifyier.
		
	selector ifNil: [ 
		text hasUnacceptedEdits: true.
		^ false ].
	text changed: #clearUserEdits.