Class {
	#name : 'MazoAuxiliar',
	#superclass : 'Mazo',
	#instVars : [
		'descarte',
		'reciclajesRestantes'
	],
	#category : 'SolitarioPiramide',
	#package : 'SolitarioPiramide'
}

{ #category : 'as yet unclassified' }
MazoAuxiliar >> cartaVisible [
	descarte isEmpty ifTrue: [ ^ nil ].
	^ descarte last.
]

{ #category : 'initialize' }
MazoAuxiliar >> initialize [
	super initialize.
	descarte := OrderedCollection new.
	reciclajesRestantes := 2.
]

{ #category : 'as yet unclassified' }
MazoAuxiliar >> puedeReciclar [
	^ reciclajesRestantes > 0 and: [ descarte isNotEmpty ].
]

{ #category : 'accessing' }
MazoAuxiliar >> reciclajesRestantes [
	^ reciclajesRestantes.
]

{ #category : 'as yet unclassified' }
MazoAuxiliar >> reciclar [
	self puedeReciclar ifFalse: [ ^ self ].
	cartas := descarte reversed asOrderedCollection.
	descarte removeAll.
	reciclajesRestantes := reciclajesRestantes - 1.
]

{ #category : 'as yet unclassified' }
MazoAuxiliar >> robarCarta [
	"Pasa la siguiente carta al pozo de descarte"
	| cartaRobada |
	self estaVacio ifTrue: [ 
		self puedeReciclar ifTrue: [ self reciclar ] ifFalse: [ ^ nil ].
	].
	cartaRobada := self sacarCarta.
	cartaRobada ifNotNil: [ descarte add: cartaRobada ].
	^ cartaRobada.
]

{ #category : 'as yet unclassified' }
MazoAuxiliar >> sacarCartaVisible [
	descarte isEmpty ifTrue: [ ^ nil ].
	^ descarte removeLast.
]
