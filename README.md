Análisis de la Centralización en el Sistema de Salud Colombiano
1. Resumen Ejecutivo (Executive Summary)
Este proyecto analiza la distribución geográfica de más de 46 millones de afiliados al Sistema General de Seguridad Social en Salud (SGSSS) de Colombia. El objetivo principal era probar dos hipótesis: una sobre la alta concentración de afiliados en las tres ciudades más grandes del país (la "Regla del 50+1") y otra sobre el desequilibrio regional en la estructura de afiliación (formal vs. subsidiada).

El análisis revela que, contrario a la suposición inicial, las tres ciudades principales concentran solo el 40.94% de la población afiliada, refutando la hipótesis de centralización. Adicionalmente, se confirma un fuerte desequilibrio regional en la proporción de beneficiarios por cotizante, y se calcula una tasa de cobertura nacional neta del 87.16% sobre la población estimada.

2. Preguntas e Hipótesis
Pregunta 1: ¿Qué tan centralizada está la población del sistema de salud en los principales polos urbanos?

Hipótesis (La Regla del 50+1): Más del 50% de todos los afiliados se concentran en Bogotá D.C., Medellín y Cali.

Pregunta 2: ¿La estructura de formalidad laboral, reflejada en el sistema de salud, es uniforme en todo el país?

Hipótesis (Desequilibrio Regional): La proporción de 'Beneficiarios' por cada 'Cotizante' diferirá significativamente entre los departamentos urbanos/industriales y los más rurales.

3. Metodología y Herramientas
El análisis se realizó utilizando un flujo de trabajo profesional:

Datos: Se utilizaron dos datasets iniciales, uno que contenia los datos del regímen subsidiado y otro con el contributivo. Ambos datasets poseian en conjunto un total 1.8+ millons de registros. Se trabajó en SQLite3 para poder obtener un dataset ponderado del SGSSS con un total de 43,941 filas, representando a 46,291,518 afiliados. Adicionalmente, se integraron datos de proyecciones poblacionales del DANE para 2025.

Herramientas: SQLite3, Python 3, con las librerías Pandas (para la manipulación y análisis de datos) y Matplotlib/Seaborn (para la visualización).

4. Análisis y Hallazgos Clave
Hallazgo 1: La Centralización es un Mito
El análisis refuta la hipótesis del "50+1". Las tres ciudades más grandes, aunque dominantes, no superan el 50% del total nacional.

Total de afiliados en Bogotá, Medellín y Cali: 18,949,695.

Porcentaje del total nacional: 40.94%.

El siguiente gráfico muestra la clara dominancia de Bogotá, pero también la importancia agregada del resto del país.

<img width="768" height="460" alt="image" src="https://github.com/user-attachments/assets/92ebe862-19c4-4b73-be2d-23c8bad8e198" />


Hallazgo 2: Fuerte Desequilibrio Regional
La hipótesis del desequilibrio regional fue confirmada. El ratio de beneficiarios por cotizante varía drásticamente entre departamentos, reflejando diferentes estructuras socioeconómicas.

Departamentos con mayor ratio (más dependencia): Magdalena (0.83), Cesar (0.75), Atlántico (0.75).

Departamentos con menor ratio (más independencia): Guainía (0.26), Putumayo (0.36), Vaupés (0.39).

Este gráfico comparativo ilustra claramente los dos extremos del país.

<img width="756" height="488" alt="image" src="https://github.com/user-attachments/assets/a39cd432-8a26-4bf4-b2b1-428d3cd3fe5b" />

Hallazgo 3: Alta Tasa de Cobertura Nacional
El cálculo final, comparando el total de afiliados con la población estimada en los departamentos analizados, revela una alta tasa de cobertura neta.

Tasa de Cobertura Neta: 87.16%.

<img width="612" height="440" alt="image" src="https://github.com/user-attachments/assets/a82d3f90-31d7-4a9c-bd45-39639b079491" />

5. Conclusiones
Este análisis demuestra que el sistema de salud colombiano es más descentralizado de lo que comúnmente se asume, con casi un 60% de los afiliados residiendo fuera de los tres principales centros urbanos. Adicionalmente, se confirma que la estructura de afiliación varía significativamente por región, ofreciendo un mapa claro de la formalidad laboral en el país. Estos insights son cruciales para la planificación de estrategias de salud pública a nivel nacional y regional.
