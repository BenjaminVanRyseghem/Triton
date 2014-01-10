private
compileClassDefinition: text notifying: notifyier
	| newClass |
	
	newClass := AbstractTool new
		compileANewClassFrom: text asString
		notifying: notifyier
		startingFrom: self inputClass.
	
	newClass ifNil: [ ^ self ].	
		
	notifyier update: #clearUserEdits.
		
	newClass = self inputClass
		ifFalse: [ self triggerEvent: #changed with: newClass ].