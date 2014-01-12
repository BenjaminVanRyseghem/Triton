initialization
initialize

	super initialize.

	box whenChangedDo: [ :b |
		text
			behavior: (b inputMethod
				ifNil: [ nil ]
				ifNotNil: [ b inputClass ]);
			doItReceiver: b inputClass ]