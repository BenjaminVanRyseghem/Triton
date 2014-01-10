private
popupFor: node event: event
	| element offset size position newView morph |
	
	node model isClickable ifFalse: [ ^ self ].
	
	size := 200.
	newView := RoassalModel new
		script: [ :v :c | 
			c color: Color transparent.
			element := RTElement new + (RTBoxWithBeak new size: size; color: Color red).
			v add: element ].
	morph := newView buildWithSpec.
	morph extent: size@size.
	morph openInWorld.

	position := node positionInWorld.
	offset := (self sizeFor: node) // 2 + 4.
	morph center: (position) - (0@((size // 2) + offset)).
	
	node on: TRMouseClick do: [ self clickOn: node model ].
	node on: TRMouseLeave do: [ morph delete ]