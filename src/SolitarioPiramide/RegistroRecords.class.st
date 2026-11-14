"
Registra los puntajes mas altos
-TERMINADO-LC
falta categorizar los metodos
"
Class {
	#name : 'RegistroRecords',
	#superclass : 'Object',
	#instVars : [
		'mejorPuntaje',
		'archivo'
	],
	#category : 'SolitarioPiramide',
	#package : 'SolitarioPiramide'
}

{ #category : 'accessing' }
RegistroRecords >> archivo [
	^ archivo.
]

{ #category : 'accessing' }
RegistroRecords >> archivo: unFileReference [
	"Permite cambiar la ruta del archivo (útil para aislar pruebas unitarias en SUnit)"
	archivo := unFileReference.
]

{ #category : 'as yet unclassified' }
RegistroRecords >> cargar [
	"Lee el puntaje histórico desde el archivo si existe; caso contrario inicia en 0"
	archivo exists
		ifTrue: [
			| contenido |
			contenido := archivo contents trimBoth.
			mejorPuntaje := contenido asInteger ifNil: [ 0 ] ]
		ifFalse: [
			mejorPuntaje := 0 ].
]

{ #category : 'as yet unclassified' }
RegistroRecords >> guardar [
	"Sobrescribe el archivo con el nuevo mejor puntaje"
	archivo ensureDelete.
	archivo writeStreamDo: [ :stream |
		stream nextPutAll: mejorPuntaje asString ].
]

{ #category : 'initialization' }
RegistroRecords >> initialize [
	super initialize.
	mejorPuntaje := 0.
	archivo := 'solitario_piramide_record.txt' asFileReference.
]

{ #category : 'accessing' }
RegistroRecords >> mejorPuntaje [
	^ mejorPuntaje.
]

{ #category : 'as yet unclassified' }
RegistroRecords >> registrar: unPuntaje [
	"Actualiza el récord y lo persiste en disco solo si el puntaje actual lo supera"
	unPuntaje > mejorPuntaje ifTrue: [
		mejorPuntaje := unPuntaje.
		self guardar.
	].
]
