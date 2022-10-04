Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #initialization }
DieHandle >> addDie: aDie [
dice add: aDie

]

{ #category : #initialization }
DieHandle >> dice [
^dice 

]

{ #category : #initialization }
DieHandle >> diceNumber [
^dice size 

]

{ #category : #initialization }
DieHandle >> initialize [ 
super  initialize.
 dice :=OrderedCollection new.
]

{ #category : #initialization }
DieHandle >> maxValue [
"retourner nombre des faces de toutes les die de la collection"
|res|
res:=0.
dice do: [ :each| res:= res+each faces ].
^res

]

{ #category : #initialization }
DieHandle >> roll [ 
"retourner le resultat de lancer de tout les die qui existe dans la collection die"
|res|
res:=0.
dice do: [ :each| res:= res+ each roll ].
^ res

]
