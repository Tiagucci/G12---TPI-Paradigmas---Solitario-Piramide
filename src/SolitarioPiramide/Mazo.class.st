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

{ #category : 'initialization' }
Mazo class >> crearCompleto [
	"Instancia una baraja estándar de 52 cartas + 4 reyes extra (total 8 K)"
	| nuevoMazo palos rangos |
	nuevoMazo := self new.
	palos := #(corazones diamantes picas treboles).
	rangos := #( 'A' 2 3 4 5 6 7 8 9 10 'J' 'Q' 'K' ).
	
	"Generar la baraja base de 52 cartas"
	palos do: [ :p |
		rangos do: [ :r |
			nuevoMazo agregarCarta: (Carta rango: r palo: p).
		].
	].

	"Característica propia: Agregar 4 reyes extra al azar de los palos"
	palos do: [ :p |
		nuevoMazo agregarCarta: (Carta rango: 'K' palo: p).
	].

	^ nuevoMazo.
]

{ #category : 'initialize' }
Mazo >> agregarCarta: unaCarta [
	cartas add: unaCarta.
]

{ #category : 'as yet unclassified' }
Mazo >> barajar [
	cartas := cartas shuffled asOrderedCollection.
]

{ #category : 'as yet unclassified' }
Mazo >> cantidadCartas [
	^ cartas size.
]

{ #category : 'accessing' }
Mazo >> cartas [
	^ cartas.
]

{ #category : 'as yet unclassified' }
Mazo >> estaVacio [
	^ cartas isEmpty.
]

{ #category : 'initialize' }
Mazo >> initialize [ 
	super initialize.
	cartas := OrderedCollection new.
]

{ #category : 'as yet unclassified' }
Mazo >> sacarCarta [
	cartas isEmpty ifTrue: [ ^ nil ].
	^ cartas removeLast.
]
