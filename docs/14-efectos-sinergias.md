# Análisis de efectos estructurales y sinergias

## Más allá del efecto directo: Complejidad de los impactos

Las evaluaciones tradicionales se enfocan en medir el efecto de un programa sobre sus beneficiarios directos. Sin embargo, las políticas públicas pueden generar efectos más complejos que trascienden esta relación lineal:

- **Efectos indirectos** sobre no-beneficiarios
- **Efectos estructurales** sobre instituciones y mercados
- **Sinergias** entre múltiples intervenciones
- **Efectos de largo plazo** que emergen años después
- **Efectos heterogéneos** que varían según contextos

Este capítulo aborda métodos para identificar y medir estos efectos complejos.

## Efectos directos vs indirectos (externalidades)

### Efectos directos

**Definición**: Cambios en los beneficiarios directos del programa atribuibles a su participación

**Ejemplo**: Niños que reciben alimentación escolar mejoran su asistencia a clases (efecto en beneficiarios del programa)

### Efectos indirectos (spillovers o externalidades)

**Definición**: Cambios en no-beneficiarios generados por externalidades del programa

**Tipos de efectos indirectos**:

**1. Efectos de pares (peer effects)**
- Compañeros de aula de niños que reciben tutorías también mejoran rendimiento académico por efecto de aprendizaje colaborativo
- Trabajadores no capacitados aumentan productividad al trabajar con colegas capacitados

**2. Efectos de equilibrio general**
- Programa de empleabilidad aumenta oferta laboral y reduce salarios en sector específico
- Subsidio habitacional aumenta precios de viviendas en zona beneficiada

**3. Efectos de difusión social**
- Programa de salud reproductiva cambia normas sociales sobre planificación familiar en comunidad completa
- Transferencias monetarias condicionadas modifican expectativas educacionales de familias no beneficiarias

**4. Efectos en proveedores**
- Programa de alimentación escolar genera ingresos para productores locales de alimentos
- Subsidios a la demanda (vouchers educacionales) incentivan mejora de oferta de servicios

### Implicancias para evaluación

Los efectos indirectos tienen importantes consecuencias metodológicas:

**Contaminación del grupo de control**: Si el grupo de control recibe efectos indirectos del programa, la comparación tratado vs control **subestima** el efecto total

**Ejemplo**: Un programa de vacunación genera inmunidad de rebaño. Niños no vacunados (grupo de control) también reducen contagios. El efecto medido (diferencia tratados-control) subestima el beneficio total del programa.

**Solución**: Diseños que aíslan grupos de control (ej: aleatorización por conglomerados geográficamente distantes)

## Efectos estructurales

**Definición**: Cambios en instituciones, mercados, normas o prácticas que persisten más allá de la existencia del programa individual y afectan el funcionamiento de sistemas completos.

### Tipos de efectos estructurales

**1. Cambios institucionales**

**Ejemplo**: Programa de evaluación de desempeño docente crea institucionalidad permanente de carrera profesional docente

**Características**:
- Nuevas reglas, leyes o regulaciones
- Creación de organismos o unidades especializadas
- Cambios en procesos de toma de decisiones

**2. Transformaciones de mercados**

**Ejemplo**: Subsidio de vivienda transforma mercado inmobiliario al crear segmento de vivienda económica

**Características**:
- Entrada de nuevos proveedores
- Cambios en estructura de precios
- Innovación en productos o servicios

**3. Cambios en prácticas profesionales**

**Ejemplo**: Programa de capacitación docente en metodologías activas transforma currículo de formación inicial en universidades

**Características**:
- Adopción de nuevas metodologías o tecnologías
- Cambios en estándares de calidad
- Difusión de buenas prácticas

**4. Transformación de normas sociales**

**Ejemplo**: Programa de prevención de violencia de género cambia percepciones sociales sobre roles de género

**Características**:
- Cambios en valores y creencias colectivas
- Modificación de comportamientos socialmente aceptados
- Redefinición de roles sociales

### Identificación de efectos estructurales

**Métodos**:

1. **Estudios longitudinales**: Seguimiento 5-10 años post-intervención para observar cambios que perduran

2. **Análisis de trayectorias institucionales**: Process tracing que documenta cómo el programa gatilló cambios en instituciones

3. **Comparación de sistemas**: Contraste entre territorios donde el programa operó vs donde no operó, observando diferencias estructurales

4. **Métodos mixtos**: Combinación de medición cuantitativa de cambios con análisis cualitativo de mecanismos causales

## Sinergias entre programas

**Definición**: Programas que operan complementariamente pueden generar efectos superiores a la suma de sus efectos individuales operando aisladamente.

**Formalización**:
Efecto de A + Efecto de B < Efecto de (A+B)

### Tipos de sinergias

**1. Sinergias de refuerzo**

Programas que atacan múltiples dimensiones de un mismo problema de forma complementaria.

**Ejemplo**: Chile Crece Contigo (desarrollo infantil) + Programas de empleo femenino
- ChCC solo: mejora desarrollo infantil
- Empleo femenino solo: aumenta ingreso familiar
- ChCC + Empleo: **Sinergia** → Mayor desarrollo infantil (más recursos + autonomía materna) + Mayor inserción laboral femenina (acceso a cuidado infantil)

**2. Sinergias de habilitación**

Un programa genera condiciones previas necesarias para que otro programa sea efectivo.

**Ejemplo**: Programa de salud + Programa educacional
- Niños con parásitos intestinales (desnutrición) no pueden aprender efectivamente
- Programa de salud habilita que programa educacional logre impactos
- Efecto educacional mayor cuando opera simultáneamente con salud

**3. Sinergias de escala**

Múltiples programas comparten infraestructura, reduciendo costos unitarios.

**Ejemplo**: Red de Protección Social compartiendo sistema de focalización (Registro Social de Hogares)
- Múltiples programas usan misma plataforma de postulación y focalización
- Reducción de costos administrativos y mejora de experiencia de usuario

### Medición de sinergias: Diseño factorial

Para medir sinergias, se requiere diseño experimental que compare:

| Grupo | Programa A | Programa B | Efecto observado |
|-------|------------|------------|------------------|
| 1 (control puro) | No | No | 0 |
| 2 | Sí | No | E(A) |
| 3 | No | Sí | E(B) |
| 4 | Sí | Sí | E(A+B) |

**Sinergia** = E(A+B) - [E(A) + E(B)]

Si sinergia > 0: Complementariedad positiva
Si sinergia < 0: Sustitución o interferencia entre programas

**Desafío práctico**: Diseño factorial requiere cuatro grupos, aumentando tamaño muestral y costo

### Evidencia de sinergias en Chile

**Caso 1: Programa Puente + Subsidios Monetarios (2002-2006)**

Programa Puente (apoyo psicosocial a familias) operó en combinación con acceso preferente a subsidios.

**Hallazgo**: Familias que recibieron **solo Puente** no mejoraron ingresos. Familias que recibieron **solo subsidios** tampoco salieron de pobreza de forma sostenible. Familias con **Puente + subsidios** lograron mayor reducción de pobreza.

**Mecanismo de sinergia**: Puente generó "activación" y organización familiar, subsidios proveyeron recursos. Recursos sin activación no son efectivos; activación sin recursos tampoco.

**Caso 2: JUNAEB (alimentación escolar) + Subvención Escolar Preferencial**

Programa de alimentación (JUNAEB) opera hace décadas. Subvención Escolar Preferencial (SEP, desde 2008) entrega recursos adicionales a escuelas por estudiantes vulnerables.

**Hallazgo**: Escuelas que recibieron **SEP** y **ya operaban con JUNAEB** lograron mayores mejoras en rendimiento académico que escuelas solo con SEP.

**Mecanismo**: Alimentación resuelve barrera fisiológica del aprendizaje (desnutrición), SEP provee recursos para mejorar pedagogía. Sinergia entre condiciones nutricionales y calidad educativa.

## Metodologías para capturar efectos complejos

Las evaluaciones de efectos complejos requieren diseños que trascienden la comparación simple tratado/control:

### 1. Análisis de redes sociales

**Objetivo**: Capturar efectos de difusión y contagio a través de redes

**Aplicación**:
- Identificar líderes de opinión que amplifican efectos de programas
- Medir cómo comportamientos se difunden entre pares
- Mapear flujos de información e influencia

**Ejemplo**: Estudio de programa de microcrédito en India (Banerjee et al., 2013) usó análisis de redes para identificar que efectos del programa se difunden a través de líderes religiosos y sociales, alcanzando 2-3 veces más personas que beneficiarios directos.

### 2. Modelos multinivel (hierarchical models)

**Objetivo**: Separar efectos a nivel individual, grupal (escuela, barrio) y territorial (comuna, región)

**Especificación**:
- Nivel 1: Características individuales (edad, educación)
- Nivel 2: Características grupales (calidad de escuela, capital social del barrio)
- Nivel 3: Características territoriales (índice de desarrollo comunal, inversión pública regional)

**Aplicación**: Permite identificar si efectos de un programa varían según contexto (heterogeneidad contextual)

**Ejemplo**: Evaluación de programa de mejoramiento de barrios puede mostrar que efectos en cohesión social son mayores en comunas con tradición de organización comunitaria (efecto multinivel).

### 3. Estudios longitudinales de largo plazo

**Objetivo**: Seguimiento de beneficiarios 5, 10, 15 años post-intervención para capturar efectos que emergen en el largo plazo

**Desafíos**:
- Atrición: Dificultad para rastrear beneficiarios a lo largo del tiempo
- Costos elevados de múltiples rondas de seguimiento
- Cambio de prioridades políticas que descontinúan financiamiento

**Ejemplo paradigmático**: Perry Preschool Project (EE.UU.) siguió a beneficiarios de educación preescolar hasta los 40 años, encontrando efectos sobre ingresos, criminalidad y salud que no eran visibles en evaluaciones de corto plazo.

### 4. Métodos mixtos (cuanti-cuali)

**Objetivo**: Combinar medición cuantitativa de magnitud de efectos con comprensión cualitativa de mecanismos causales

**Diseño típico**:
1. **Fase cuantitativa**: RCT o quasi-experimento para medir efecto promedio
2. **Fase cualitativa**: Entrevistas en profundidad y etnografía para entender cómo y por qué funciona el programa
3. **Integración**: Triangulación de hallazgos para explicar heterogeneidad de efectos

**Ejemplo**: Evaluación de transferencias monetarias condicionadas que combina:
- Encuestas para medir cambios en ingresos y escolaridad
- Entrevistas para entender cómo familias toman decisiones de uso de transferencias
- Observación etnográfica para capturar cambios en dinámicas familiares y comunitarias

### 5. Evaluaciones de efectos en equilibrio general

**Objetivo**: Capturar efectos de programas masivos que modifican mercados completos

**Métodos**:
- **Modelos de equilibrio general computable (CGE)**: Simulación de cómo programa afecta oferta, demanda y precios en múltiples sectores económicos
- **Diferencias en diferencias espaciales**: Comparar territorios con distinta intensidad de implementación del programa

**Ejemplo**: Evaluación de programa de empleabilidad masivo en Colombia estimó que el programa redujo salarios en 2% en sectores con alta oferta de capacitados (efecto de equilibrio general negativo sobre beneficiarios).

## Caso: Efectos territoriales del Programa Quiero Mi Barrio

El Programa de Recuperación de Barrios "Quiero Mi Barrio" (2006-presente) del Ministerio de Vivienda interviene barrios vulnerables mediante mejoramiento de espacios públicos, fortalecimiento comunitario y acceso a servicios.

### Efectos multinivel identificados

**Nivel 1: Efectos en beneficiarios directos (residentes participantes)**
- Aumento en satisfacción con barrio: +25 puntos porcentuales
- Aumento en participación en organizaciones comunitarias: +15 pp
- Mejora en percepción de seguridad: +18 pp

**Nivel 2: Efectos en residentes no participantes del mismo barrio**
- Mejora en percepción de seguridad: +12 pp (spillover)
- Aumento en valoración de vivienda: +8% (externalidad positiva)
- Mayor uso de espacios públicos recuperados por toda la comunidad

**Nivel 3: Efectos territoriales**
- Reducción de rotación residencial (mayor estabilidad poblacional)
- Aumento en inversión privada en comercio local (mercado inmobiliario)
- Cambio en percepción externa del barrio (reducción de estigmatización territorial)

### Sinergias con otros programas

El programa operó en sinergia con:

**Programa de Habitabilidad** (mejoramiento de viviendas individuales):
- Sinergia: Espacios públicos mejorados + viviendas mejoradas = mayor efecto en satisfacción residencial que suma de ambos aislados

**Programas de seguridad ciudadana** (cámaras, iluminación):
- Sinergia: Recuperación de espacios + vigilancia = mayor reducción de delitos que intervenciones aisladas

### Metodología empleada

**Diseño quasi-experimental**:
- Comparación de barrios intervenidos vs barrios en lista de espera
- Matching por características pre-intervención (pobreza, delincuencia, infraestructura)

**Métodos mixtos**:
- Encuestas a 3,000 residentes (muestra representativa)
- 30 entrevistas en profundidad con líderes comunitarios
- Observación etnográfica en 5 barrios
- Análisis de precios de viviendas (registros conservador de bienes raíces)

**Seguimiento longitudinal**: Mediciones en t0 (línea base), t1 (fin de intervención), t2 (2 años post), t3 (5 años post)

### Hallazgos sobre efectos estructurales

**Institucionalización de participación comunitaria**:
- Barrios intervenidos mantienen organizaciones comunitarias activas 5 años después (70% vs 30% en barrios control)
- Efecto estructural: El programa creó cultura de participación que persiste

**Transformación del mercado inmobiliario local**:
- Valorización de viviendas en barrios intervenidos: +15% en 5 años (vs +3% en barrios similares)
- Entrada de nuevos comercios: +35% de locales comerciales
- Efecto estructural: Cambio en dinámica de mercado inmobiliario de zona

## Desafíos metodológicos en evaluación de efectos complejos

### 1. Unidad de análisis

¿Individuo, hogar, barrio, territorio? Efectos complejos requieren múltiples unidades de análisis simultáneas

### 2. Tamaño muestral

Detectar efectos indirectos y sinergias requiere muestras mucho mayores que evaluar efecto directo

### 3. Horizonte temporal

Efectos estructurales pueden tardar años en manifestarse, requieren seguimientos de largo plazo

### 4. Inferencia causal

Difícil aislar efecto del programa de otros cambios contextuales en evaluaciones de largo plazo

### 5. Costos

Diseños complejos (factorial, multinivel, longitudinal) son significativamente más costosos

## Ejercicio práctico

Considere un programa de mejoramiento de infraestructura escolar (construcción de bibliotecas, laboratorios, canchas deportivas) en escuelas municipales de comunas rurales.

Diseñe una evaluación que capture:

1. **Efectos directos** en estudiantes de escuelas intervenidas
2. **Efectos indirectos** en establecimientos educacionales cercanos (competencia, emulación)
3. **Posibles sinergias** con programa de capacitación docente
4. **Efectos estructurales** sobre sistema educativo comunal (ej: retención de matrícula, cambio en aspiraciones educacionales)

Para cada tipo de efecto, especifique:
- Indicador a medir
- Método de medición
- Unidad de análisis
- Grupo de comparación

## Referencias

García Moreno, M., & García López, R. (2014). *Efectos territoriales de programas de desarrollo urbano*. CEPAL.

Zapata, J. G., & Tejeda, E. (2009). *Evaluación de efectos e impactos de programas sociales*. CIDE.

Banerjee, A., Chandrasekhar, A. G., Duflo, E., & Jackson, M. O. (2013). The diffusion of microfinance. *Science*, 341(6144).

Galiani, S., Gertler, P., & Undurraga, R. (2021). The half-life of happiness: Hedonic adaptation in the subjective well-being of poor slum dwellers to a large improvement in housing. *Journal of the European Economic Association*, 19(4), 2810-2844.

Heckman, J. J., Moon, S. H., Pinto, R., Savelyev, P. A., & Yavitz, A. (2010). The rate of return to the HighScope Perry Preschool Program. *Journal of Public Economics*, 94(1-2), 114-128.
