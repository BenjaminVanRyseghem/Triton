protocol
initializeData

	self defaultTitle: 'Roassal'.
	self action: [ :evt | evt isMouse
		ifTrue: [ self triggerEvent: #changed with: evt element model ] ].
	self title: [ :class | class name, '''s comment' ].
	self computationBlock: [ :class | [ :v :c || shape classes |
		shape := RTBox new 
			width: [ :cls | (cls instVarNames size * 3) max: 5 ];
			height:  [ :cls | (cls numberOfMethods / 10) max: 5 ].
		
		classes := shape elementsOn: class withAllSubclasses.
		classes on: TRMouseClick do: [:ev |].
		classes @ RTDraggable @ RTPopup.
		v add: classes.

		RTEdge 
			buildEdgesFromObjects: class withAllSubclasses 
			from: #superclass 
			to: #yourself 
			using: (RTLine new  color: (Color blue alpha: 0.4)) 
			inView: v.
			
		RTClusterLayout  new  
			verticalGap: 15; 
			horizontalGap: 15; 
			on: classes edges: v edges.
		v edges do: [ :edge | edge trachelShape pushBack ].
		v @ RTDraggableView ] ]