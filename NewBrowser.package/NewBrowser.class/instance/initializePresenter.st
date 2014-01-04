initialization
initializePresenter

	package whenChangedDo: [ :p |
		p
			ifNil: [ packageButton label: '' ]
			ifNotNil: [ packageButton label: p name asString ] ].
	
	class whenChangedDo: [ :c |
		c
			ifNil: [ 
				classButton label: ''.
				protocol value: nil ]
			ifNotNil: [ 
				classButton label: c name asString.
				protocol value: AllProtocol defaultName asString ] ].
		
	protocol whenChangedDo: [ :p | 
		methods 
			items: ((class value methodsInProtocol: p) sorted: [ :a :b | a selector <= b selector ]);
			resetSelection ].
	
	protocol whenChangedDo: [ :p |
		p
			ifNil: [ protocolButton label: '' ]
			ifNotNil: [ protocolButton label: p ] ].
		
	methods whenSelectedItemChanged: [ :item | 
		bar inputMethod: item.
		item 
			ifNil: [ text text: '' ]
			ifNotNil: [ text text: item sourceCode ] ]