private
sortDataFor: method with: methods
	|  temp  |
	
	queryResult := MethodsSortingResult new.
		
	methods sort: [ :a :b | a lastModificationTime > b lastModificationTime ].
	methods size <= 3 ifTrue: [ 
		queryResult addGroup: (MethodsSortingGroup new
			items: methods;
			color: self lastModifiedColor).
		^ queryResult allItems ].
	
	queryResult addGroup: (MethodsSortingGroup new
			items: (methods removeFirst: 3);
			color: self lastModifiedColor).
			
	temp := MethodsSortingGroup new
		start: 4;
		color: self classColor;
		yourself.
	methods copy
		do: [ :e | 
			e methodClass = self inputClass
				ifTrue: [ 
					temp addItem: (methods remove: e) ] ].
	
	queryResult addGroup: temp.	
	temp :=  MethodsSortingGroup new
		start: 1 + temp last;
		color: self packageColor;
		yourself.
			
	methods copy
		do: [ :e |
			e package name = self inputPackage name
				ifTrue: [ 
					temp addItem: (methods remove: e) ] ].
			
	queryResult addGroup: temp.	
	temp :=  MethodsSortingGroup new
		start: 1 + temp last;
		color: self allColor;
		yourself.
		
	methods do: [ :e | temp addItem: e ].
	queryResult addGroup: temp.
	
	^ queryResult allItems