# Métodos cuantitativos de evaluación

Los métodos cuantitativos utilizan datos numéricos y técnicas estadísticas para medir efectos de programas públicos. Este capítulo presenta las principales herramientas cuantitativas para evaluación, sus supuestos, aplicaciones y limitaciones.

## Fuentes de datos cuantitativos

### 1. Encuestas de evaluación

**Definición**: Cuestionarios diseñados específicamente para medir resultados del programa en beneficiarios y grupos de comparación.

**Componentes típicos**:

- **Variables de resultado (outcomes)**: Indicadores de los efectos que el programa busca generar
  - Ejemplo educación: Puntajes en pruebas estandarizadas, años de escolaridad
  - Ejemplo salud: Prevalencia de enfermedades, acceso a servicios
  - Ejemplo empleo: Tasa de ocupación, ingresos laborales

- **Variables de tratamiento**: Participación en el programa, dosis recibida, duración
- **Características sociodemográficas**: Edad, sexo, educación, ingreso (para control estadístico)
- **Variables de proceso**: Satisfacción, conocimiento del programa
- **Otras intervenciones**: Participación en otros programas

**Diseño de muestreo**:

1. **Muestreo aleatorio simple**: Cada unidad tiene igual probabilidad de selección
2. **Muestreo estratificado**: Dividir población en estratos y muestrear dentro de cada uno
3. **Muestreo por conglomerados**: Muestrear grupos (escuelas, barrios) y luego individuos

**Tamaño muestral**: Depende de:
- Tamaño del efecto esperado
- Varianza de la variable de resultado
- Poder estadístico deseado (típicamente 80%)
- Nivel de significancia (típicamente 5%)

**Ejemplo**: Encuesta de evaluación de programa de transferencias monetarias

- Muestra: 2,000 beneficiarios + 2,000 no beneficiarios
- Variables de resultado: Ingreso familiar, gasto en alimentos, escolaridad de niños
- Tratamiento: Monto de transferencia recibido, meses en el programa
- Covariables: Edad jefe de hogar, educación, composición familiar, región

### 2. Registros administrativos

**Definición**: Bases de datos generadas por la operación del programa o por sistemas públicos (registros civiles, impuestos, seguridad social).

**Ventajas**:
- Bajo costo (datos ya existen)
- Cobertura completa (censo de beneficiarios)
- Datos longitudinales (seguimiento en el tiempo)
- Sin sesgo de respuesta (no hay cuestionarios)

**Limitaciones**:
- Variables limitadas a información administrativa
- Calidad variable (errores, datos faltantes)
- Difícil vincular múltiples bases de datos (problemas de identificación)

**Ejemplos en Chile**:
- **Registro Social de Hogares**: Caracterización socioeconómica de familias
- **Bases FONASA y MINSAL**: Atenciones de salud
- **Bases MINEDUC**: Matrícula, asistencia, rendimiento escolar
- **Bases SII**: Ingresos declarados

**Vinculación de bases**: Usar RUT (identificador único) para conectar información de distintas fuentes y construir variables de resultado.

### 3. Datos experimentales

**Definición**: Datos generados por experimentos controlados aleatorizados (RCT) donde la asignación a tratamiento fue aleatorizada por los evaluadores.

**Características**:
- Línea base: Medición pre-tratamiento
- Seguimientos: Mediciones post-tratamiento (1, 2, 5 años)
- Grupo tratado y control comparables por aleatorización

## Técnicas econométricas para evaluación de impacto

### 1. Regresión lineal múltiple

**Modelo básico**:

Y_i = β₀ + β₁·T_i + β₂·X_i + ε_i

Donde:
- Y_i: Variable de resultado para individuo i
- T_i: Variable de tratamiento (1 si participa, 0 si no)
- X_i: Vector de características observables (covariables)
- β₁: Efecto del tratamiento (impacto)
- ε_i: Error aleatorio

**Interpretación**: β₁ mide el cambio promedio en Y asociado a participar en el programa, **controlando** por las características X.

**Supuesto clave**: **Selección en observables** - Toda la diferencia entre tratados y control está capturada por las covariables X incluidas en el modelo.

**Limitación**: Si hay características no observables (motivación, habilidad) que afectan tanto la participación como el resultado, β₁ estará sesgado.

**Ejemplo**: Efecto de capacitación laboral en ingresos

```
Ingreso_i = β₀ + β₁·Capacitación_i + β₂·Edad_i + β₃·Educación_i + β₄·Experiencia_i + ε_i
```

Si β₁ = $150,000, interpretación: La capacitación aumenta ingresos en $150,000 anuales, **controlando por** edad, educación y experiencia.

**Problema potencial**: Si capacitados tienen mayor motivación (no observable), β₁ **sobrestima** el efecto causal.

### 2. Propensity Score Matching (PSM)

**Idea**: Emparejar cada beneficiario con un no-beneficiario de características observables similares para construir contrafactual.

**Pasos**:

**Paso 1: Estimar Propensity Score**

El propensity score es la probabilidad de participar en el programa dado las características observables:

P(T=1 | X) = P_i

Se estima mediante regresión logística:

```
Logit(P_i) = α₀ + α₁·Edad + α₂·Educación + α₃·Ingreso_basal + ...
```

**Paso 2: Emparejar tratados con controles**

Métodos de emparejamiento:

- **Nearest neighbor**: Emparejar cada tratado con el control de propensity score más cercano
- **Kernel matching**: Usar promedio ponderado de múltiples controles
- **Caliper matching**: Solo emparejar si diferencia en propensity score < umbral

**Paso 3: Estimar impacto**

Comparar resultados entre tratados y sus controles emparejados:

Impacto = (1/N) Σ [Y_tratado,i - Y_control,i]

**Supuesto clave**: **Independencia condicional** - Condicional en X, la participación es "como si fuera" aleatoria.

**Ventajas**:
- Intuitivo: Compara "similares"
- Reduce sesgo por características observables

**Limitaciones**:
- Solo controla por observables
- Requiere **soporte común**: Tratados y controles deben tener rangos similares de propensity scores
- Sensible a especificación del modelo de propensity score

**Ejemplo**: Evaluación de subsidio habitacional

1. Estimar P(recibir subsidio | edad, ingreso, tamaño familia, región)
2. Emparejar familias subsidiadas con no-subsidiadas de propensity score similar
3. Comparar hacinamiento, calidad de vivienda entre emparejados

**Diagnóstico**: **Balance de covariables** - Verificar que tratados y controles emparejados sean similares en X.

### 3. Diferencias en Diferencias (DiD)

**Modelo**:

Y_it = β₀ + β₁·Tratado_i + β₂·Post_t + **β₃·(Tratado_i × Post_t)** + ε_it

Donde:
- i: Individuo
- t: Tiempo (pre o post)
- Tratado_i: 1 si pertenece a grupo tratado, 0 si control
- Post_t: 1 si período post-tratamiento, 0 si pre-tratamiento
- **β₃**: **Efecto del programa** (estimador DiD)

**Interpretación de coeficientes**:

- β₁: Diferencia entre tratados y control en período pre (diferencia de nivel)
- β₂: Cambio temporal para grupo control (tendencia general)
- **β₃**: Diferencia en los cambios entre tratados y control = **Impacto del programa**

**Estimador DiD**:

β₃ = [E(Y|Tratado,Post) - E(Y|Tratado,Pre)] - [E(Y|Control,Post) - E(Y|Control,Pre)]

**Supuesto clave**: **Tendencias paralelas** - En ausencia del programa, tratados y control habrían evolucionado de manera similar.

**Test del supuesto**: Graficar evolución de Y para tratados y control en períodos pre-tratamiento. Si tendencias son paralelas antes del programa, supuesto es plausible.

**Variante: DiD con covariables**

Y_it = β₀ + β₁·Tratado_i + β₂·Post_t + β₃·(Tratado_i × Post_t) + β₄·X_it + ε_it

Controla por cambios en características observables.

**Ejemplo**: Impacto de programa de mejoramiento escolar

| Periodo | Grupo Tratado (escuelas mejoradas) | Grupo Control | Diferencia |
|---------|-------------------------------------|---------------|------------|
| 2018 (pre) | 250 puntos SIMCE | 248 puntos | +2 |
| 2021 (post) | 265 puntos | 252 puntos | +13 |
| **Cambio** | **+15** | **+4** | **+11** |

**Impacto DiD** = 15 - 4 = **+11 puntos** en SIMCE

Interpretación: El programa causó un aumento de 11 puntos en SIMCE, más allá de la tendencia general.

### 4. Regresión Discontinua (RD)

**Contexto**: Programa tiene umbral de elegibilidad basado en variable continua (puntaje, ingreso, edad).

**Ejemplo**: Beca universitaria para estudiantes con promedio ≥ 5.5

**Idea**: Comparar estudiantes justo por encima (5.51-5.60) con estudiantes justo por debajo (5.40-5.49) del umbral.

**Supuesto**: En la vecindad del umbral, estudiantes son similares; única diferencia es elegibilidad para beca.

**Modelo RD - Sharp design** (todos los elegibles reciben tratamiento):

Y_i = α + **τ**·T_i + f(S_i) + ε_i

Donde:
- S_i: Running variable (promedio)
- T_i: 1 si S_i ≥ umbral (elegible), 0 si no
- f(S_i): Función que controla por efecto continuo de S sobre Y (típicamente polinomio)
- **τ**: Efecto causal para individuos en el umbral

**Estimación gráfica**:

1. Graficar Y (eje vertical) contra S (eje horizontal)
2. Ajustar funciones f(S) separadas para S < umbral y S ≥ umbral
3. **Discontinuidad** (salto) en el umbral = τ = Impacto causal

**Ventajas**:
- Identificación creíble (quasi-aleatorización en el umbral)
- Fácil visualizar (gráfico de discontinuidad)
- No requiere supuestos sobre características no observables

**Limitaciones**:
- Validez externa limitada: Solo estima impacto para individuos **cerca del umbral**
- Requiere muestra grande en vecindad del umbral
- Vulnerable a **manipulación**: Si individuos manipulan S para quedar sobre umbral, sesgo

**Test de manipulación**: Verificar que densidad de S sea continua en el umbral (test de McCrary)

**Ejemplo chileno**: Beca Indígena

- Umbral: Promedio de notas ≥ 5.0
- Running variable: Promedio de notas
- Resultado: Años de escolaridad completados
- Estimación: Estudiantes con promedio 4.9-4.99 vs 5.0-5.1
- Hallazgo: Beca aumenta escolaridad en 0.8 años para estudiantes en el umbral

### 5. Variables Instrumentales (VI)

**Problema**: Sesgo por endogeneidad - variable de tratamiento correlacionada con error (características no observables).

**Solución**: Usar **instrumento** Z que afecta participación pero NO afecta directamente el resultado.

**Requisitos del instrumento**:

1. **Relevancia**: Z afecta T (participación)
   - Corr(Z, T) ≠ 0
   - Verificable empíricamente (primera etapa fuerte)

2. **Exogeneidad**: Z NO afecta Y excepto a través de T
   - Corr(Z, ε) = 0
   - No verificable directamente; requiere argumento conceptual

**Estimación en dos etapas (2SLS)**:

**Primera etapa**: Predecir participación usando instrumento

T_i = γ₀ + γ₁·Z_i + γ₂·X_i + u_i

Obtener T_i predicho (T̂_i)

**Segunda etapa**: Estimar efecto usando participación predicha

Y_i = β₀ + **β₁**·T̂_i + β₂·X_i + ε_i

**β₁** es el efecto causal de T sobre Y.

**Ejemplo**: Efecto de educación universitaria en ingresos

- **Problema**: Estudiantes universitarios tienen mayor habilidad (no observable) → Sesgo
- **Instrumento**: Distancia a universidad más cercana
  - Relevancia: Mayor distancia → Menor probabilidad de estudiar (costo de transporte/mudanza)
  - Exogeneidad: Distancia no afecta ingresos directamente (solo a través de educación)
- **Estimación VI**: Usar variación en educación causada solo por distancia

**Interpretación**: β₁ estima efecto de educación para individuos cuya decisión de estudiar fue afectada por la distancia (**LATE**: Local Average Treatment Effect)

**Limitación**: Difícil encontrar instrumentos que cumplan ambos requisitos.

## Inferencia estadística y pruebas de hipótesis

### Significancia estadística

**p-valor**: Probabilidad de observar un efecto tan grande como el estimado si el efecto real fuera cero.

**Convenciones**:
- p < 0.01: Altamente significativo (***)
- p < 0.05: Significativo (**)
- p < 0.10: Marginalmente significativo (*)
- p ≥ 0.10: No significativo

**Advertencia**: Significancia estadística ≠ Relevancia práctica

Ejemplo: Programa aumenta ingresos en $1,000 anuales, p < 0.01 (significativo). Pero si costo del programa es $10,000 por beneficiario, el efecto es irrelevante económicamente.

### Intervalos de confianza

**Definición**: Rango dentro del cual el efecto verdadero se encuentra con 95% de probabilidad.

**Ejemplo**: Impacto = +$50,000, IC 95% = [$30,000, $70,000]

Interpretación: Con 95% de confianza, el efecto verdadero está entre $30,000 y $70,000.

**Utilidad**: Captura incertidumbre de la estimación. IC amplio → Estimación imprecisa.

### Errores estándar robustos

**Problema**: Errores estándar estándar asumen que observaciones son independientes.

**Realidad**: En evaluación, observaciones suelen estar **correlacionadas**:
- Estudiantes dentro de una misma escuela
- Familias dentro de un mismo barrio
- Individuos medidos repetidamente en el tiempo

**Solución**: **Errores estándar clustered** (agrupados)

- Permiten correlación dentro de clusters (escuelas, barrios)
- Errores estándar más grandes → Tests más conservadores

**Regla**: Si tratamiento se asigna a nivel de cluster (escuela recibe programa), errores estándar deben ser clustered a ese nivel.

## Análisis de heterogeneidad de efectos

**Pregunta**: ¿El programa tiene efectos diferentes para distintos subgrupos?

**Método**: Estimar modelo con interacciones

Y_i = β₀ + β₁·T_i + β₂·Mujer_i + **β₃·(T_i × Mujer_i)** + ε_i

**Interpretación**:
- β₁: Efecto para hombres
- β₁ + β₃: Efecto para mujeres
- β₃: **Diferencia** en efecto entre mujeres y hombres

**Ejemplo**: Programa de capacitación laboral

- Efecto en hombres: +$80,000 anuales (β₁)
- Efecto en mujeres: +$120,000 anuales (β₁ + β₃)
- Diferencia: +$40,000 (β₃), p = 0.03 (significativa)

**Conclusión**: Programa es más efectivo para mujeres.

**Subgrupos relevantes**:
- Género, edad, nivel educativo
- Zona (urbana/rural)
- Quintil de ingreso
- Nivel de vulnerabilidad

## Software estadístico para evaluación

### R

**Ventajas**: Gratuito, código abierto, comunidad activa, paquetes especializados

**Paquetes clave**:
- `lm()`: Regresión lineal
- `MatchIt`: Propensity Score Matching
- `plm`: Diferencias en diferencias con datos panel
- `rdrobust`: Regresión discontinua
- `AER`: Variables instrumentales (2SLS)

### Stata

**Ventajas**: Estándar en economía y evaluación, documentación extensa

**Comandos clave**:
- `reg`: Regresión lineal
- `psmatch2`: Propensity Score Matching
- `xtreg`: Datos panel / DiD
- `rdrobust`: Regresión discontinua
- `ivregress`: Variables instrumentales

### Python

**Ventajas**: Versátil, integración con machine learning

**Librerías**:
- `statsmodels`: Regresión, modelos econométricos
- `causalinfer`: Propensity Score Matching
- `linearmodels`: Panel data, IV

## Limitaciones de métodos cuantitativos

1. **Reduccionismo**: Reducen fenómenos complejos a variables medibles, pierden contexto y matices

2. **Caja negra**: Miden si programa funciona, no explican **cómo** ni **por qué**

3. **Requerimientos de datos**: Necesitan muestras grandes y datos de calidad

4. **Supuestos técnicos**: Validez depende de supuestos (tendencias paralelas, exogeneidad) que no siempre son verificables

5. **Foco en efectos promedio**: No capturan experiencias individuales ni casos atípicos

6. **Validez externa limitada**: Resultados de un contexto pueden no generalizarse a otros

**Complementariedad**: Métodos cuantitativos deben combinarse con evaluación cualitativa (entrevistas, etnografía) para comprender **mecanismos causales** y **contexto**.

## Caso: Evaluación cuantitativa del Ingreso Ético Familiar

El Ingreso Ético Familiar (IEF, 2012-2017) fue un programa de transferencias monetarias y apoyo psicosocial para familias en extrema pobreza en Chile.

### Componentes del programa

1. **Transferencia monetaria**: Bono base + bonos por logros (escolaridad, salud, trabajo)
2. **Apoyo psicosocial**: Acompañamiento familiar
3. **Acceso preferente**: Prioridad en otros programas sociales

### Diseño de evaluación

**Método**: Propensity Score Matching (PSM)

**Datos**:
- Registro Social de Hogares (características familias)
- Base IEF (participantes)
- Base empleos formales (Superintendencia de Pensiones)
- Encuesta CASEN (ingresos, pobreza)

**Muestra**:
- 50,000 familias IEF (tratados)
- 100,000 familias elegibles no-IEF (pool de controles)

### Paso 1: Estimar Propensity Score

Variables incluidas:
- Escolaridad jefe de hogar
- Edad jefe de hogar
- Número de integrantes
- Número de niños
- Puntaje Ficha de Protección Social
- Región
- Zona (urbana/rural)

Modelo: Regresión logística

Resultado: Propensity scores entre 0.05 y 0.95 para tratados (buen soporte común)

### Paso 2: Emparejamiento

Método: Kernel matching con bandwidth = 0.06

Resultado: Cada familia IEF emparejada con promedio ponderado de 50-100 controles similares

**Test de balance**: Después del matching, diferencias en covariables entre tratados y controles < 5% (balance satisfactorio)

### Paso 3: Estimación de impactos

**Resultados (2 años post-ingreso)**:

| Indicador | IEF | Control | Impacto | p-valor |
|-----------|-----|---------|---------|---------|
| Ingreso familiar mensual | $285,000 | $245,000 | **+$40,000** | < 0.01 |
| % con empleo formal (jefe hogar) | 35% | 28% | **+7 pp** | < 0.01 |
| % bajo línea pobreza | 28% | 38% | **-10 pp** | < 0.01 |
| Escolaridad niños (% asiste) | 94% | 91% | **+3 pp** | 0.04 |

**Interpretación**:

- IEF aumentó ingreso familiar en $40,000 mensuales (16% respecto a control)
- Aumentó empleo formal del jefe de hogar en 7 puntos porcentuales
- Redujo pobreza en 10 puntos porcentuales
- Mejoró levemente asistencia escolar

### Heterogeneidad de efectos

Efectos mayores en:
- **Zonas urbanas**: +$50,000 (vs +$25,000 rural)
- **Familias con niños pequeños**: -15 pp pobreza (vs -5 pp sin niños)
- **Jefas de hogar mujeres**: +10 pp empleo formal (vs +4 pp hombres)

### Limitaciones del estudio

1. **Selección en observables**: PSM solo controla por características observadas; si motivación o redes afectan participación, sesgo persiste

2. **Efectos de mediano plazo**: Evaluación mide impactos 2 años post-ingreso; efectos de largo plazo (5-10 años) desconocidos

3. **Efectos indirectos**: No captura efectos en niños (desarrollo, aspiraciones) que emergerían en largo plazo

## Ejercicio práctico

Un programa de tutorías escolares se implementó en 100 escuelas municipales en 2020. Otras 150 escuelas municipales no recibieron el programa.

**Datos disponibles**:
- SIMCE 2019 (pre-programa) y 2022 (post) para todas las escuelas
- Características de escuelas: Matrícula, % vulnerabilidad, docentes por estudiante
- Identificador de escuelas tratadas vs control

**Tareas**:

1. **Proponga un método cuantitativo** para estimar el impacto del programa en puntajes SIMCE. Justifique su elección.

2. **Especifique el modelo econométrico** que usaría (ecuación con variables y coeficientes)

3. **Identifique el supuesto clave** del método y **proponga un test** para verificarlo

4. **Diseñe un análisis de heterogeneidad**: ¿Para qué subgrupos de escuelas el programa podría ser más o menos efectivo?

## Referencias

Angrist, J. D., & Pischke, J. S. (2009). *Mostly harmless econometrics: An empiricist's companion*. Princeton University Press.

Gertler, P. J., Martinez, S., Premand, P., Rawlings, L. B., & Vermeersch, C. M. (2016). *Impact evaluation in practice* (2nd ed.). World Bank.

Khandker, S. R., Koolwal, G. B., & Samad, H. A. (2010). *Handbook on impact evaluation: Quantitative methods and practices*. World Bank.

Wooldridge, J. M. (2010). *Econometric analysis of cross section and panel data* (2nd ed.). MIT Press.

DIPRES (2015). *Evaluación de impacto de programas públicos*. Ministerio de Hacienda, Chile.
