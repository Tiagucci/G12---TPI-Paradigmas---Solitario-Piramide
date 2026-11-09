"
Representa el conjunto de cartas en la partida.
"
Class {
	#name : 'Mazo',
	#superclass : 'Object',
	#instVars : [
		'cartas'
	],
	#category : 'SolitarioPiramide',
	#package : 'SolitarioPiramide'
}

{ #category : 'initialize' }
Mazo >> initialize [ 
	super initialize.
	cartas := OrderedCollection new.
]
