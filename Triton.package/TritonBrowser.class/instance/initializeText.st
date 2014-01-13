initialization
initializeText

	text
		aboutToStyle: true;
		bindKeyCombination: shortcuts choosePackage toAction: [ packageButton performAction ];
		acceptBlock: [ :newText :notifyier | self compileNewMethodFrom: newText notifying: notifyier ].
	
	text whenBuiltDo: [ :w | w widget widget textMorph removeKeyCombination: $f command ]