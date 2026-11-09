# Solitario de Pirámide (Pharo / Smalltalk)

Trabajo integrador — 5º Instancia de Evaluación, Paradigmas de Programación  
UTN FRRe · Ingeniería en Sistemas de Información · Grupo 2 · Comisión: _[1 o 2]_

## Descripción

Implementación en Smalltalk (Pharo) del juego **Solitario de Pirámide**: se debe eliminar
todas las cartas de una pirámide antes de que se agote el tiempo, combinando parejas de
cartas libres cuya suma sea 13 (J = 11, Q = 12, K = 13 se elimina sola). Cuando no hay
combinaciones posibles, se recurre al mazo auxiliar.

### Característica propia
_[Completar: descripción de la variante/aporte original del grupo]_

## Integrantes

| Integrante | Usuario GitHub | Responsabilidad de referencia |
|------------|----------------|-------------------------------|
| _Nombre_   | _@usuario_     | _Modelado / Pharo / Paper / Pruebas / Entregas_ |
| _Nombre_   | _@usuario_     |                               |
| _Nombre_   | _@usuario_     |                               |

## Requisitos

- Pharo **_[versión, ej. 12.0]_** (indicar la versión exacta; también va en el paper)
- No requiere conexión a internet ni paquetes externos _[confirmar]_

## Instalación

1. Clonar este repositorio.
2. En Pharo, abrir **Iceberg** → *Import* → *Existing repository from disk* y seleccionar la carpeta clonada.
   (Alternativa: *Clone from github.com* con la URL del repositorio.)
3. Cargar el paquete `PiramideSolitario` desde Iceberg (*Load package*).

## Ejecución

En un Playground de Pharo:

```smalltalk
"Ajustar el nombre de la clase de entrada según la implementación final"
PiramideSolitarioApp new open.
```

## Tests

Desde el Test Runner de Pharo, ejecutar los tests del paquete `PiramideSolitario-Tests`.

## Estructura del repositorio

```
src/
  PiramideSolitario/          Lógica del dominio (cartas, pirámide, reglas, puntaje)
  PiramideSolitario-UI/       Interfaz gráfica (Morphic), separada del dominio
  PiramideSolitario-Tests/    Pruebas unitarias (SUnit)
docs/
  bitacora.md                 Registro de reuniones, tareas y decisiones
  diagramas/                  Diagramas de clases (versión final y cambios relevantes)
README.md
```

## Reglas implementadas

- La pirámide se arma en filas superpuestas; una carta está **libre** si no está cubierta por otras.
- Se eliminan **parejas de cartas libres que suman 13**; el **K** se elimina individualmente.
- El **mazo auxiliar** permite descubrir nuevas cartas cuando no hay combinaciones.
- Hay **puntaje**, **límite de tiempo** y **mejor puntuación** registrada.
- _[Completar con la variante propia]_

## Flujo de trabajo del equipo

- Rama principal: `main`. Cada integrante trabaja en una rama propia (`feature/nombre-tema`) y se integra por Pull Request.
- Commits pequeños y frecuentes, con mensajes descriptivos (ej.: `Agrega clase Carta con tests`).
- Tablero de tareas: _[enlace a Trello / Notion / GitHub Projects]_

## Entregas

| Fecha | Entrega |
|-------|---------|
| 09/11 – 13/11 | Consultas con los profes de práctica |
| 15/11 | Avance: diseño inicial, decisiones y desarrollo hasta el momento |
| 24/11 23:59 | Entrega final (.zip: código + README, informe PDF, diapositivas) |
| 25/11 – 03/12 | Exposiciones |
