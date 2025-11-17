# Métodos cuantitativos de evaluación

## Encuestas de evaluación

Diseñadas específicamente para medir resultados del programa en beneficiarios y contrafactuales. Incluyen:
- Variables de resultado (outcomes)
- Características sociodemográficas
- Participación en el programa
- Otras intervenciones recibidas

## Análisis de registros administrativos

Muchos programas mantienen bases de datos de beneficiarios con información longitudinal. Ventajas: bajo costo, cobertura completa. Limitaciones: variables limitadas a registros administrativos, calidad variable.

## Técnicas econométricas básicas

### Regresión lineal múltiple
Estima efectos de tratamiento controlando por covariables observables. Asume selección en observables.

### Propensity Score Matching
Empareja tratados con controles de probabilidad similar de participar según características observables.

### Diferencias en diferencias
Y_impacto = (Y_tratados,post - Y_tratados,pre) - (Y_control,post - Y_control,pre)

### Regresión discontinua
Compara individuos inmediatamente por encima y debajo de umbral de elegibilidad.

## Software estadístico

R, Stata, Python son herramientas estándar. Requieren conocimientos estadísticos sólidos y comprensión de supuestos de cada técnica.

## Limitaciones de métodos cuantitativos

- Reducen fenómenos complejos a variables medibles
- No capturan procesos ni mecanismos causales
- Requieren muestras grandes
- Dependientes de disponibilidad y calidad de datos
- Supuestos técnicos no siempre verificables

## Caso: Análisis de impacto del Programa Ingreso Ético Familiar

[DESARROLLAR: Diseño cuasi-experimental con PSM. Resultados en ingresos laborales y pobreza]

## Referencias

DIPRES (2015); Banco Mundial (2005)
