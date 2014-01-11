private
buildPackageHierarchyFor: aPackage
	| classes |

	classes := aPackage definedClasses collect: #theNonMetaClass.

	^ SortHierarchically buildHierarchyForClasses: classes fromPackage: aPackage