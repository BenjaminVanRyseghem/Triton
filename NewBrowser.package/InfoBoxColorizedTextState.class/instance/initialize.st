initialization
initialize

	super initialize.

	box whenChangedDo: [ :b | 
		text
			behavior: b inputClass;
			doItReceiver: b inputClass ]