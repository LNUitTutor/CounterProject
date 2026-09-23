Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'Learn-Project',
	#package : 'Learn-Project'
}

{ #category : 'tests' }
CounterTest >> testCreation [

	| a b |
	a := Counter new.
	b := Counter new: 5.
	self assert: a count equals: 0.
	self assert: b count equals: 5
]
