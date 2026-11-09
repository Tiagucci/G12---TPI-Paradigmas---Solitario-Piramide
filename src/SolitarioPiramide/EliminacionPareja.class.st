"
Subclase de Eleminacion, usada para eliminar una pareja (2) de cartas.
"
Class {
	#name : 'EliminacionPareja',
	#superclass : 'Eliminacion',
	#category : 'SolitarioPiramide',
	#package : 'SolitarioPiramide'
}

{ #category : 'operation' }
EliminacionPareja >> cantidadRequerida [
	^2.
]

{ #category : 'operation' }
EliminacionPareja >> esValidaPara: unaColeccionDeCartas [
	^ (unaColeccionDeCartas size = self cantidadRequerida) 
		and: [ (unaColeccionDeCartas first valor + unaColeccionDeCartas second valor) = 13 ].
]
