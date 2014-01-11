private
buildPackageExtensionHierarchyFor: aPackage
	| classes |

	classes := aPackage extensionClassesForTriton collect: #theNonMetaClass.
	
	^ SortHierarchically buildHierarchyForClasses: classes fromPackage: aPackage