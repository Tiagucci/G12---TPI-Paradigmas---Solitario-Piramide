"
Suma puntos
-TERMINADO-LC
falta categorizar los metodos
"
Class {
	#name : 'Puntaje',
	#superclass : 'Object',
	#instVars : [
		'total',
		'rachaActual'
	],
	#category : 'SolitarioPiramide',
	#package : 'SolitarioPiramide'
}

{ #category : 'initialization' }
Puntaje >> initialize [
	super initialize.
	total := 0.
	rachaActual := 0.
]

{ #category : 'accessing' }
Puntaje >> rachaActual [
	^ rachaActual.
]

{ #category : 'as yet unclassified' }
Puntaje >> reiniciarRacha [
	rachaActual := 0.
]

{ #category : 'as yet unclassified' }
Puntaje >> sumarBonificacion: unosPuntos [
	"Aplica bonificaciones (como tiempo restante al ganar) o ajustes evitando puntajes negativos"
	total := (total + unosPuntos) max: 0.
]

{ #category : 'as yet unclassified' }
Puntaje >> sumarPorEliminacion: unaCantidadDeCartas [
	"Incrementa la racha de aciertos consecutivos y otorga puntos base más un bono por racha"
	| puntosBase bonusRacha |
	rachaActual := rachaActual + 1.
	puntosBase := unaCantidadDeCartas * 50.
	bonusRacha := (rachaActual - 1) * 15.
	total := total + puntosBase + bonusRacha.
]

{ #category : 'accessing' }
Puntaje >> total [
	^ total.
]
