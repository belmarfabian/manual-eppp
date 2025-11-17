# Evaluación de impacto: Fundamentos

## Concepto de evaluación de impacto

La evaluación de impacto busca determinar los **efectos causalmente atribuibles** a una intervención pública. A diferencia de la evaluación de resultados (que mide cambios en beneficiarios), la evaluación de impacto establece que esos cambios fueron **causados por el programa**.

**Pregunta fundamental**: ¿Qué habría ocurrido a los beneficiarios **si no hubieran participado** en el programa?

Esta pregunta se refiere al **contrafactual**: la situación hipotética de los beneficiarios sin el programa.

**Definición formal de impacto**:

Impacto = Resultado observado (con programa) - Contrafactual (sin programa)

## El problema fundamental del contrafactual

**Problema**: No podemos observar simultáneamente a la misma persona con y sin tratamiento. Cada individuo solo puede estar en una de dos condiciones:

- **Tratado** (participa en el programa): observamos Y₁
- **No tratado** (no participa): observamos Y₀

**Pero nunca observamos ambos** para la misma persona al mismo tiempo.

### Ejemplo del problema

María participó en un programa de capacitación laboral y consiguió empleo.

- **Resultado observado**: María tiene empleo
- **Pregunta causal**: ¿El empleo se debe a la capacitación o lo habría conseguido de todos modos?
- **Contrafactual no observable**: ¿Qué le habría pasado a María sin la capacitación?

### Soluciones al problema del contrafactual

Dado que no podemos observar el contrafactual individual, construimos **grupos de comparación** que se asemejen a los beneficiarios:

1. **Método experimental (RCT)**: Asignación aleatoria garantiza que tratados y control son **estadísticamente idénticos** antes del programa
2. **Métodos cuasi-experimentales**: Construyen contrafactuales plausibles usando variación no aleatoria pero sistemática en la exposición al programa

## Sesgo de selección

**Sesgo de selección**: Error en la estimación del impacto cuando tratados y control difieren en características que afectan el resultado.

**Ejemplo**: Comparar beneficiarios de capacitación laboral con población general.

- Beneficiarios probablemente tienen **mayor motivación** y **mejores redes** que llevaron a postular
- Si beneficiarios tienen mayor empleabilidad, comparación sobrestimará impacto del programa

**Tipos de sesgo de selección**:

1. **Por características observables**: Diferencias en edad, educación, ingresos (controlables mediante matching o regresión)
2. **Por características no observables**: Diferencias en motivación, habilidades no medidas (requieren diseños más robustos)

## Métodos experimentales: Experimentos Controlados Aleatorizados (RCT)

### Principio fundamental

La **asignación aleatoria** a tratamiento y control garantiza que los grupos son **estadísticamente idénticos** en todas las características (observables y no observables) antes del programa.

Por lo tanto, cualquier diferencia post-intervención es atribuible al programa.

### Diseño básico de RCT

1. **Definir población elegible**: Identificar beneficiarios potenciales
2. **Aleatorización**: Sorteo para asignar quién recibe el programa (tratamiento) y quién no (control)
3. **Línea base**: Medir indicadores antes del programa en ambos grupos
4. **Implementación**: Solo el grupo tratado recibe el programa
5. **Seguimiento**: Medir indicadores post-programa en ambos grupos
6. **Estimación de impacto**: Comparar resultados entre tratados y control

**Estimador de impacto**:

Impacto = E[Y₁ | Tratado] - E[Y₀ | Control]

Donde E[·] denota valor esperado (promedio).

### Ventajas de RCT

- **Estándar de oro** para inferencia causal
- Elimina sesgo de selección (observado y no observado)
- Estimación simple y directa del impacto
- Permite análisis de heterogeneidad de efectos

### Limitaciones de RCT

**1. Consideraciones éticas**

- ¿Es ético negar beneficios a grupo control cuando el programa es claramente beneficioso?
- Solución: Aleatorización en fases (control accede después) o lotería cuando demanda excede oferta

**2. Restricciones políticas y administrativas**

- Resistencia a "sortear" beneficios en contexto de derechos sociales
- Programas universales (todos son elegibles) no permiten aleatorización

**3. Costos y tiempos**

- RCT requiere seguimiento longitudinal costoso
- Resultados tardan años en materializarse

**4. Validez externa limitada**

- Resultados de RCT en contexto piloto pueden no replicarse a escala masiva
- Efectos de equilibrio general no capturados

**5. Contaminación y desgaste**

- **Spillovers**: Grupo control recibe efectos indirectos del programa
- **Atrición**: Pérdida de participantes en seguimiento
- **No cumplimiento**: Tratados no participan, control accede al programa

### Ejemplo de RCT: Progresa/Oportunidades (México)

**Programa**: Transferencias monetarias condicionadas a asistencia escolar y controles de salud.

**Diseño RCT**:
- 506 localidades rurales elegibles
- Aleatorización: 320 recibieron programa en 1998, 186 en 2000 (control temporal)
- Mediciones: 1997 (línea base), 1998, 1999, 2000

**Resultados**:
- Aumento de 3.4% en asistencia escolar primaria
- Reducción de 12% en enfermedades infantiles
- Impacto mayor en niñas y zonas más pobres

**Ventaja del diseño**: Control eventualmente recibe programa (éticamente aceptable)

## Métodos cuasi-experimentales

Cuando la aleatorización no es factible o ética, los métodos cuasi-experimentales construyen contrafactuales plausibles explotando variación **no aleatoria pero sistemática** en la exposición al programa.

### 1. Diferencias en Diferencias (DiD)

**Idea**: Comparar el **cambio** en el grupo tratado con el **cambio** en el grupo control.

**Supuesto clave**: **Tendencias paralelas** - Sin el programa, tratados y control habrían evolucionado de manera similar.

**Estimador DiD**:

Impacto = [Y_tratado(post) - Y_tratado(pre)] - [Y_control(post) - Y_control(pre)]

**Ventaja**: Controla por diferencias fijas entre grupos que no varían en el tiempo.

**Ejemplo**: Evaluación de programa de mejoramiento de barrios

- **Tratados**: 50 barrios que recibieron mejoramiento en 2018
- **Control**: 50 barrios similares sin mejoramiento
- **Mediciones**: 2017 (pre) y 2020 (post)
- **Variable**: Percepción de seguridad (escala 1-10)

| Grupo | 2017 (pre) | 2020 (post) | Cambio |
|-------|------------|-------------|--------|
| Tratados | 4.2 | 6.8 | **+2.6** |
| Control | 5.0 | 6.2 | **+1.2** |

**Impacto DiD**: 2.6 - 1.2 = **+1.4 puntos**

Interpretación: El programa causó un aumento de 1.4 puntos en percepción de seguridad, más allá de la tendencia general.

**Test del supuesto de tendencias paralelas**: Verificar que tratados y control tenían tendencias similares en períodos pre-tratamiento.

### 2. Regresión Discontinua (RD)

**Idea**: Explotar **umbrales** de elegibilidad. Comparar individuos justo por encima y debajo del umbral (similares excepto en elegibilidad).

**Supuesto**: Individuos cerca del umbral son similares; la asignación es "como si fuera aleatoria" en la vecindad del umbral.

**Ejemplo**: Beca Indígena (Chile)

- Elegibilidad: Estudiantes indígenas con promedio ≥ 5.0
- Comparación: Estudiantes con promedio 4.95-4.99 (no elegibles) vs 5.01-5.05 (elegibles)
- Variable de resultado: Años de escolaridad alcanzados

**Estimación**: Discontinuidad (salto) en resultado en el umbral indica impacto causal.

**Ventajas**:
- No requiere aleatorización
- Estimador creíble si diseño es riguroso

**Limitaciones**:
- Solo estima impacto para individuos cerca del umbral (validez externa limitada)
- Requiere muestra grande en vecindad del umbral
- Vulnerable a manipulación (individuos manipulan puntaje para ser elegibles)

### 3. Variables Instrumentales (VI)

**Idea**: Utilizar una variable (**instrumento**) que afecta la participación en el programa pero NO afecta directamente el resultado.

**Requisitos del instrumento**:
1. **Relevancia**: Instrumento afecta participación
2. **Exogeneidad**: Instrumento no afecta resultado excepto a través de participación

**Ejemplo**: Evaluación de impacto de educación superior en ingresos

- **Problema**: Estudiantes universitarios difieren en habilidades no observadas (sesgo)
- **Instrumento**: Distancia a universidad más cercana
  - Afecta probabilidad de estudiar (relevancia)
  - No afecta ingresos directamente (exogeneidad)

**Estimación**: Impacto de educación superior usando solo variación en educación causada por distancia.

**Limitación**: Difícil encontrar instrumentos válidos.

### 4. Matching (Emparejamiento)

**Idea**: Construir grupo control emparejando beneficiarios con no-beneficiarios de características observables similares.

**Métodos**:

1. **Exact matching**: Emparejar individuos idénticos en características observadas
2. **Propensity Score Matching (PSM)**: Emparejar según probabilidad estimada de participar (propensity score)
3. **Coarsened Exact Matching (CEM)**: Emparejar en categorías de características

**Ejemplo PSM**: Evaluación de capacitación laboral

1. Estimar probabilidad de participar en función de edad, educación, experiencia
2. Emparejar cada capacitado con no-capacitado de propensity score similar
3. Comparar tasas de empleo entre capacitados y sus pares emparejados

**Limitación crítica**: Solo controla por características **observables**. Sesgo persiste si hay diferencias en factores no observados (motivación, habilidades).

## Comparación de métodos

| Método | Supuesto clave | Ventajas | Limitaciones | Cuándo usar |
|--------|---------------|----------|--------------|-------------|
| RCT | Ninguno (aleatorización) | Estándar de oro | Costos, ética, política | Programas piloto, lotería natural |
| DiD | Tendencias paralelas | Controla diferencias fijas | Requiere datos panel | Rollout gradual, shocks exógenos |
| RD | Continuidad en umbral | No requiere aleatorización | Validez local | Programas con umbrales |
| VI | Instrumento válido | Controla no observables | Difícil encontrar IV válido | Variación exógena disponible |
| Matching | Selección en observables | Datos transversales suficientes | No controla no observables | Datos ricos, selección observable |

## Requerimientos para evaluación de impacto

### 1. Teoría de cambio clara

- ¿Qué impactos se esperan? ¿En quiénes?
- ¿En qué plazo se materializarán?
- ¿Cuáles son los mecanismos causales?

### 2. Datos longitudinales de calidad

- **Línea base**: Medición antes del programa
- **Seguimiento(s)**: Mediciones post-programa
- Datos de tratados y control

### 3. Variación en exposición al programa

- Algunos reciben el programa, otros no (al menos temporalmente)
- Variación debe ser **exógena** (no determinada por características de beneficiarios)

### 4. Tamaño muestral suficiente

- **Poder estadístico**: Capacidad de detectar efectos reales
- Muestras pequeñas generan estimaciones imprecisas

**Cálculo de poder**: Depende de:
- Tamaño del efecto esperado
- Varianza del indicador
- Nivel de significancia deseado

### 5. Tiempo suficiente para que impactos se materialicen

- Programas educativos: Impactos en ingresos tardan años
- Programas de salud: Efectos en morbilidad requieren seguimiento prolongado

## Caso: Evaluación de impacto de la Subvención Escolar Preferencial (SEP)

La Ley SEP (2008) entrega recursos adicionales a escuelas por cada estudiante vulnerable matriculado, condicionado a implementación de planes de mejoramiento educativo.

### Desafío de evaluación

- Programa universal (todas las escuelas elegibles)
- No hubo aleatorización ni grupo control natural

### Diseño cuasi-experimental: DiD con variación en timing

**Explotación de variación**: Escuelas se incorporaron gradualmente entre 2008-2011

**Estrategia**:
- **Tratados tempranos**: Escuelas que ingresaron en 2008
- **Tratados tardíos** (control temporal): Escuelas que ingresaron en 2010-2011
- **Comparación**: Evolución de rendimiento académico (SIMCE) antes y después de recibir SEP

**Datos**:
- SIMCE 2006-2013
- Registros administrativos de incorporación a SEP
- Características de escuelas y estudiantes

### Resultados

**Impacto en puntajes SIMCE** (Matemáticas 4° básico):

- **Tratados tempranos** (SEP desde 2008):
  - 2006: 240 puntos
  - 2013: 252 puntos (+12 puntos)

- **Tratados tardíos** (SEP desde 2011):
  - 2006: 238 puntos
  - 2013: 244 puntos (+6 puntos)

**Impacto DiD**: 12 - 6 = **+6 puntos en SIMCE**

**Interpretación**: SEP causó un aumento de 6 puntos en puntajes SIMCE de matemáticas, equivalente a ~0.15 desviaciones estándar.

### Heterogeneidad de impactos

- **Mayor impacto** en escuelas rurales (+9 puntos)
- **Menor impacto** en escuelas urbanas grandes (+4 puntos)
- **Hipótesis**: Escuelas pequeñas usan recursos de manera más focalizada

### Limitaciones del estudio

- **Supuesto de tendencias paralelas**: No completamente verificable
- **Efectos de largo plazo**: Evaluación solo mide impactos hasta 5 años
- **Efectos en otras dimensiones**: Estudio se enfoca en aprendizajes, no en otros resultados (retención, clima escolar)

## Ejercicio práctico

Un municipio implementó un programa de inserción laboral para jóvenes (18-24 años) desempleados que incluye:
- Orientación vocacional
- Capacitación técnica (3 meses)
- Intermediación laboral

**Datos disponibles**:
- 500 jóvenes participaron en 2022
- 2,000 jóvenes elegibles no participaron (lista de espera)
- Encuesta de seguimiento en 2023: Tasa de empleo de participantes 65%, no-participantes 45%

**Preguntas**:

1. ¿Podemos concluir que el programa causó un aumento de 20 puntos porcentuales en empleo? ¿Por qué sí o no?
2. ¿Qué sesgos podrían afectar esta comparación simple?
3. Proponga dos diseños cuasi-experimentales que podrían mejorar la estimación del impacto
4. Para cada diseño propuesto, indique:
   - Grupo de tratamiento y control
   - Supuesto clave
   - Datos necesarios

## Referencias

Gertler, P. J., Martinez, S., Premand, P., Rawlings, L. B., & Vermeersch, C. M. (2016). *Impact evaluation in practice* (2nd ed.). World Bank.

Angrist, J. D., & Pischke, J. S. (2009). *Mostly harmless econometrics: An empiricist's companion*. Princeton University Press.

Imbens, G. W., & Wooldridge, J. M. (2009). Recent developments in the econometrics of program evaluation. *Journal of Economic Literature*, 47(1), 5-86.

DIPRES (2015). *Evaluación de impacto de programas públicos*. Ministerio de Hacienda, Chile.

Bravo, D., Mukhopadhyay, S., & Todd, P. E. (2010). Effects of school reform on education and labor market performance: Evidence from Chile's universal voucher system. *Quantitative Economics*, 1(1), 47-95.
