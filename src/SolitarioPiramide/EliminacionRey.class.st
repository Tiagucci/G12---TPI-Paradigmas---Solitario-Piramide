"
Subclase de Eliminacion, usada para eliminar una carta Rey (K), que vale 13
"
Class {
	#name : 'EliminacionRey',
	#superclass : 'Eliminacion',
	#category : 'SolitarioPiramide',
	#package : 'SolitarioPiramide'
}

{ #category : 'as yet unclassified' }
EliminacionRey >> cantidadRequerida [
	^1.
]

{ #category : 'as yet unclassified' }
EliminacionRey >> esValidaPara: unaColeccionDeCartas [
	^ (unaColeccionDeCartas size = self cantidadRequerida) 
		and: [ unaColeccionDeCartas first esRey ].
]
