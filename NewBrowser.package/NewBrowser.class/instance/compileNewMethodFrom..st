private
compileNewMethodFrom: newText
	| selector |

	selector :=  abstractTool
		compileANewMethodInClass: self actualClass
		categorized: self actualMethod protocol
		from: newText asString
		notifyng: text.
		
	selector ifNil: [ 
		text hasUnacceptedEdits: true.
		^ false ].
	text changed: #clearUserEdits.