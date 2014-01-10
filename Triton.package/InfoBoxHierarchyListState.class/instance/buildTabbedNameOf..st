private
buildTabbedNameOf: anElement
			
	| tab result size |
	
	tab := '   '.
	size := self box hierarchy indentationFor: anElement.
	
	result := String new: (size * (tab size)) streamContents: [ :s|
		1 to: size do: [:i | s nextPutAll: tab ]].

	^ self box inputPackage 
		ifNil: [result, anElement name]
		ifNotNil: [:package | 
			(package includesClass: anElement)
				ifTrue: [ (result, anElement name) asStringMorph ]
				ifFalse: [ (result , anElement name) asStringMorph 
					color: self extensionColor;
					yourself ] ]