"
Cronometro que al terminar se pierde, se puede pausar y reanudar y modificar con el uso de las K
-TERMINAR-LC
"
Class {
	#name : 'Cronometro',
	#superclass : 'Object',
	#instVars : [
		'tiempoLimite',
		'tiempoTranscurrido',
		'corriendo'
	],
	#category : 'SolitarioPiramide',
	#package : 'SolitarioPiramide'
}

{ #category : 'initialization' }
Cronometro >> agregarTiempo: unosSegundos [
	"Soporta valores positivos (bonus de K) y negativos (penalización de K).
	Reduce o aumenta el tiempo transcurrido manteniendo los límites válidos."
	tiempoTranscurrido := ((tiempoTranscurrido - unosSegundos) max: 0) min: tiempoLimite.
]

{ #category : 'initialization' }
Cronometro >> avanzar: unosSegundos [
	"Incrementa el tiempo solo si el reloj está activo y no se agotó"
	(corriendo and: [ self seAgoto not ]) ifTrue: [
		tiempoTranscurrido := (tiempoTranscurrido + unosSegundos) min: tiempoLimite.
	].
]

{ #category : 'accessing' }
Cronometro >> corriendo [
	^ corriendo.
]

{ #category : 'initialization' }
Cronometro >> iniciar [
	tiempoTranscurrido := 0.
	corriendo := true.
]

{ #category : 'initialization' }
Cronometro >> initialize [
	super initialize.
	tiempoLimite := 300. "5 minutos por defecto (300 segundos)"
	tiempoTranscurrido := 0.
	corriendo := false.
]

{ #category : 'initialization' }
Cronometro >> pausar [
	corriendo := false.
]

{ #category : 'initialization' }
Cronometro >> reanudar [
	corriendo := true.
]

{ #category : 'initialization' }
Cronometro >> seAgoto [
	^ self tiempoRestante <= 0.
]

{ #category : 'accessing' }
Cronometro >> tiempoLimite [
	^ tiempoLimite.
]

{ #category : 'accessing' }
Cronometro >> tiempoLimite: unosSegundos [
	tiempoLimite := unosSegundos.
]

{ #category : 'initialization' }
Cronometro >> tiempoRestante [
	^ (tiempoLimite - tiempoTranscurrido) max: 0.
]

{ #category : 'accessing' }
Cronometro >> tiempoTranscurrido [
	^ tiempoTranscurrido.
]
