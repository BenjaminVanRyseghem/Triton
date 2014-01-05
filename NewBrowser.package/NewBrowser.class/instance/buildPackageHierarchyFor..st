private
buildPackageHierarchyFor: aPackage
	| classes defined extensions |

	classes := aPackage definedClasses collect: #theNonMetaClass.

	defined := SortHierarchically buildHierarchyForClasses: classes fromPackage: aPackage.
	
	classes := aPackage extensionClasses collect: #theNonMetaClass.
	
	extensions := SortHierarchically buildHierarchyForClasses: classes fromPackage: aPackage.

	^ defined, extensions