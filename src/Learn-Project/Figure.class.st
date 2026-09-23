Class {
	#name : 'Figure',
	#superclass : 'Object',
	#category : 'Learn-Project-Figures',
	#package : 'Learn-Project',
	#tag : 'Figures'
}

{ #category : 'comparing' }
Figure >> > aFigure [

	^ self area > aFigure area
]

{ #category : 'calculating' }
Figure >> area [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
Figure >> max: aFigure [ 
	self > aFigure ifTrue: [ ^self ] ifFalse: [ ^ aFigure ] 
]

{ #category : 'calculating' }
Figure >> perimeter [

	^ self subclassResponsibility
]
