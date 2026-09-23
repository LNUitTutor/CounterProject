Class {
	#name : 'FRectangleTest',
	#superclass : 'TestCase',
	#category : 'Learn-Project-Figures',
	#package : 'Learn-Project',
	#tag : 'Figures'
}

{ #category : 'tests' }
FRectangleTest >> testArea [

	self assert: FRectangle new area equals: 12.
	self assert: (FRectangle newA: 5 andB: 7) area equals: 35
]

{ #category : 'tests' }
FRectangleTest >> testPerimeter [
self assert: FRectangle new perimeter equals: 14.
self assert: (FRectangle newA: 5 andB: 7) perimeter equals: 24
]
