"
Es la piramide de arriba
-TERMINADO-LC
"
Class {
	#name : 'Piramide',
	#superclass : 'Object',
	#instVars : [
		'casillas',
		'cantidadFilas'
	],
	#category : 'SolitarioPiramide',
	#package : 'SolitarioPiramide'
}

{ #category : 'initialization' }
Piramide >> armarCon: unMazo [
	"Distribuye 28 cartas en 7 filas superpuestas (fila 1 tiene 1 carta, fila 7 tiene 7)"
	casillas removeAll.
	1 to: cantidadFilas do: [ :fila |
		1 to: fila do: [ :columna |
			| carta nuevaCasilla |
			carta := unMazo sacarCarta.
			nuevaCasilla := Casilla new
				carta: carta
				fila: fila
				columna: columna
				piramide: self.
			casillas add: nuevaCasilla.
		].
	].
]

{ #category : 'accessing' }
Piramide >> cantidadFilas [
	^ cantidadFilas.
]

{ #category : 'initialization' }
Piramide >> casillaEn: unaFila columna: unaColumna [
	"Busca y devuelve la casilla en esa posición, o nil si no existe"
	^ casillas 
		detect: [ :c | c fila = unaFila and: [ c columna = unaColumna ] ] 
		ifNone: [ nil ].
]

{ #category : 'accessing' }
Piramide >> casillas [
	^ casillas.
]

{ #category : 'initialization' }
Piramide >> casillasLibres [
	^ casillas select: [ :c | c esLibre ].
]

{ #category : 'initialization' }
Piramide >> estaVacia [
	^ casillas allSatisfy: [ :c | c estaEliminada ].
]

{ #category : 'initialization' }
Piramide >> hayCombinacionPosible [
	"Verifica si entre las casillas libres hay algún Rey o alguna pareja que sume 13"
	| libres |
	libres := self casillasLibres.
	(libres anySatisfy: [ :c | c carta esRey ]) ifTrue: [ ^ true ].
	
	libres do: [ :c1 |
		libres do: [ :c2 |
			(c1 ~= c2 and: [ c1 carta suma13Con: c2 carta ]) ifTrue: [ ^ true ].
		].
	].
	^ false.
]

{ #category : 'initialization' }
Piramide >> initialize [
	super initialize.
	cantidadFilas := 7.
	casillas := OrderedCollection new.
]
