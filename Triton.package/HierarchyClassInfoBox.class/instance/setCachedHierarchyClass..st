private
setCachedHierarchyClass: aClass
	| classesToBuild |

	classesToBuild := (aClass withAllSuperclasses, aClass allSubclasses) select: [ :class | class isClassSide not ].
 	hierarchy := SortHierarchically buildHierarchyForClasses: classesToBuild.
	^ hierarchy sortedElements.
	