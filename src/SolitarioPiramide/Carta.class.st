"
""Representa una carta del juego con su rango, palo y si está descubierta"".
"
Class {
	#name : 'Carta',
	#superclass : 'Object',
	#instVars : [
		'rango',
		'palo',
		'bocaArriba'
	],
	#category : 'SolitarioPiramide',
	#package : 'SolitarioPiramide'
}

{ #category : 'testing' }
Carta >> esRey [
	^rango.
]

{ #category : 'initialize' }
Carta >> initialize [ 
	super initialize .
	bocaArriba := false.
]
