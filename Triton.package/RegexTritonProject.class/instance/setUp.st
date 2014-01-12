initialize
setUp
	| view toolbar |
	
	view := DynamicComposableModel new
		instantiateModels: #(label LabelModel text TextInputFieldModel);
		extent: 300@90;
		title: 'Choose your project'
		yourself.
		
	toolbar := OkToolbar new
		okAction: [ regex := view text text ];
		yourself.
	view focusOrder add: view text.
	view text bindKeyCombination: Character cr asKeyCombination  toAction: [ toolbar triggerOkAction ].
	view label text: 'Packages:'.
	view text
		autoAccept: true;
		entryCompletion: nil;
		ghostText: '.*'.
	(view openDialogWithSpecLayout: (SpecLayout composed
		newRow: [ :r | r add: #label width: 75; add: #text ];
		yourself))
		toolbar: toolbar;
		centered;
		modalRelativeTo: World.