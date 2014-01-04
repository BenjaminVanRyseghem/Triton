private
populateBar

	bar addBox: (
		MethodInfoBox new
			defaultTitle: 'Senders';
			title: [ :method | 'Senders of #', method selector ];
			computationBlock: [ :method | method senders ]).
			
	bar addBox: (
		MethodInfoBox new
			defaultTitle: 'Implementors';
			title: [ :method | 'Implementors of #', method selector ];
			computationBlock: [ :method | method implementors ])