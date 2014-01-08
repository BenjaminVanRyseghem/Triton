initialization
initializePresenter

	package whenChangedDo: [ :p |
		p
			ifNil: [ packageButton label: 'Package' ]
			ifNotNil: [ packageButton label: p name asString ] ].
	
	class whenChangedDo: [ :c |
		protocol value: nil.
		c
			ifNil: [ 
				classButton 
					icon:self defaultClassIcon;
					label: 'Class'.
				protocol value: nil ]
			ifNotNil: [ 
				classButton 
					label: c name asString;
					icon: (self classIconFor:c).
				protocol value: AllProtocol defaultName asString ].
		text 
			behavior: c;
			doItReceiver: c ].

	protocol whenChangedDo: [ :p |
		method value: nil.
		 p
			ifNil: [ protocolButton label: 'Protocol' ]
			ifNotNil: [ protocolButton label: p ] ].
		
	method whenChangedDo: [ :item |
		item 
			ifNil: [
				text text: ''.
				methodButton label: 'Method' ]
			ifNotNil: [
				text text: self actualMethod sourceCode.
				methodButton label: item ] ]