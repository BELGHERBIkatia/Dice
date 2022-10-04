Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #'as yet unclassified' }
DieTest >> testinitialise [
|d|
d:= Die new.
self assert: d faces equals:6
]

{ #category : #'as yet unclassified' }
DieTest >> testroll [
|d|
d:= Die new.
10 timesRepeat: 
[self assert:( d roll between:  1 and:  6 )]
]
