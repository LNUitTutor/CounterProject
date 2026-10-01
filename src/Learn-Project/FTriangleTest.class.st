Class {
	#name : 'FTriangleTest',
	#superclass : 'TestCase',
	#category : 'Learn-Project-Figures',
	#package : 'Learn-Project',
	#tag : 'Figures'
}

{ #category : 'tests' }
FTriangleTest >> testArea [

	| t |
	t := FTriangle new.
	self assert: t area equals: 6.
]

{ #category : 'tests' }
FTriangleTest >> testC [

	| t |
	t := FTriangle new.
	self assert: t c equals: 5.
]

{ #category : 'tests' }
FTriangleTest >> testDefaultCreation [

	| t |
	t := FTriangle new.
	self assert: t a equals: 3.
	self assert: t b equals: 4.
	self assert: t gamma equals: 90
]

{ #category : 'tests' }
FTriangleTest >> testPerimeter [

	| t |
	t := FTriangle new.
	self assert: t perimeter equals: 12.
]

{ #category : 'tests' }
FTriangleTest >> testPrintOn [

	| str |
	str := String streamContents: [ :stream | FTriangle new printOn: stream].
	self assert: str equals: 'Triangle<3;4;90>'.
]
