world menu
menuCommandOn: aBuilder
	<worldMenu>

	(aBuilder item: #'TritonBrowser')
		order: 0.1; 
		label: 'Triton Easel';
		icon: Smalltalk ui icons trident_16Icon; 
		action: [ TritonBrowser new openWithSpec ]