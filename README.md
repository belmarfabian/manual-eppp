# Evaluación de Políticas Públicas - Bookdown

## Descripción

Este bookdown contiene el material completo para el curso de Evaluación de Políticas Públicas de la carrera de Administración Pública, Universidad de Talca.

## Estructura

El libro se organiza en 4 partes con 17 capítulos:

**Parte I: Fundamentos** (Capítulos 1-4)
- Introducción a la evaluación
- Enfoques y metodologías
- Marco institucional chileno
- Gobierno abierto

**Parte II: Herramientas de Diagnóstico y Diseño** (Capítulos 5-9)
- Evaluación de diseño
- Árbol de problemas
- Marco lógico
- Indicadores y líneas base
- Sistemas de monitoreo

**Parte III: Evaluación de Resultados e Impacto** (Capítulos 10-14)
- Evaluación de procesos
- Evaluación de resultados (criterios OECD-DAC)
- Evaluación de impacto
- Métodos cuantitativos
- Efectos estructurales y sinergias

**Parte IV: Aplicaciones** (Capítulos 15-17)
- Casos de evaluación en Chile
- Elaboración de informes
- Ética y buenas prácticas

## Estado actual

- **Capítulos 1-3**: Completamente desarrollados con contenido extenso
- **Capítulos 4-17**: Estructura completa con esqueletos robustos, contenido a expandir

## Compilación

Para compilar el libro:

```r
# Instalar bookdown si no está instalado
install.packages("bookdown")

# Compilar a GitBook (HTML)
bookdown::render_book("index.Rmd", "bookdown::gitbook")

# Compilar a PDF (requiere LaTeX)
bookdown::render_book("index.Rmd", "bookdown::pdf_book")

# Compilar a EPUB
bookdown::render_book("index.Rmd", "bookdown::epub_book")
```

## Próximos pasos

1. Expandir capítulos con esqueleto (4-17) según prioridades del curso
2. Desarrollar casos aplicados completos con datos reales
3. Agregar ejercicios prácticos con soluciones
4. Incluir diagramas Mermaid en capítulos de árbol de problemas y marco lógico
5. Agregar tablas con ejemplos de MML completos
6. Desarrollar material complementario (presentaciones, datasets de práctica)

## Notas técnicas

- Los capítulos están ordenados según `_bookdown.yml`
- Las referencias bibliográficas están en `book.bib` (formato BibTeX)
- La configuración de output está en `_output.yml`
- CSS personalizable en `style.css`

## Desarrollo futuro

Cada capítulo con esqueleto contiene marcadores `[DESARROLLAR]` indicando secciones que requieren expansión. Priorizar según calendario del curso.
