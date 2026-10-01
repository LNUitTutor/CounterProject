"
Абстрактний клас ""Плоска геометрична фігура"".
Усі фігури вміють повідомляти свої площу та периметр
"
Class {
	#name : 'Figure',
	#superclass : 'Object',
	#category : 'Learn-Project-Figures',
	#package : 'Learn-Project',
	#tag : 'Figures'
}

{ #category : 'constants' }
Figure class >> minimalSize [

	^ 0.1
]

{ #category : 'comparing' }
Figure >> < aFigure [

	^ aFigure > self
]

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
