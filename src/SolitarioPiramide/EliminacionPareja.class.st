"
Subclase de Eleminacion, usada para eliminar una pareja (2) de cartas.
"
Class {
	#name : 'EliminacionPareja',
	#superclass : 'Eliminacion',
	#category : 'SolitarioPiramide',
	#package : 'SolitarioPiramide'
}

{ #category : 'as yet unclassified' }
EliminacionPareja >> cantidadRequerida [
	^2.
]

{ #category : 'as yet unclassified' }
EliminacionPareja >> esValidaPara: unaColeccionDeCartas [
	^ (unaColeccionDeCartas size = self cantidadRequerida) 
		and: [ (unaColeccionDeCartas first valor + unaColeccionDeCartas second valor) = 13 ].
]
