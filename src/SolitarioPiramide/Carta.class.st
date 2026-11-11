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

{ #category : 'initialize' }
Carta class >> rango: unRango palo: unPalo [
	^ self new
		rango: unRango palo: unPalo;
		yourself.
]

{ #category : 'accessing' }
Carta >> esRey [
	^ self valor = 13.
]

{ #category : 'initialize' }
Carta >> initialize [
	super initialize.
	bocaArriba := true.
]

{ #category : 'accessing' }
Carta >> palo [
	^ palo.
]

{ #category : 'initialize' }
Carta >> printOn: aStream [
	aStream nextPutAll: rango asString; nextPutAll: ' de '; nextPutAll: palo asString.
]

{ #category : 'accessing' }
Carta >> rango [
	^ rango.
]

{ #category : 'initialize' }
Carta >> rango: unRango palo: unPalo [
	rango := unRango.
	palo := unPalo.
]

{ #category : 'initialize' }
Carta >> suma13Con: otraCarta [
	^ (self valor + otraCarta valor) = 13.
]

{ #category : 'initialize' }
Carta >> valor [
	(#('J' 11) includes: rango) ifTrue: [ ^ 11 ].
	(#('Q' 12) includes: rango) ifTrue: [ ^ 12 ].
	(#('K' 13) includes: rango) ifTrue: [ ^ 13 ].
	rango = 'A' ifTrue: [ ^ 1 ].
	^ rango asInteger.
]
