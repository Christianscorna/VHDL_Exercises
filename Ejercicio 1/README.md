# Ejercicio 1: Test Bench para OR Unit

## Enunciado

1. Determine si el código VHDL (cod. 1) describe el comportamiento de la función `s = OR(a(2), a(1), a(0))`.  
2. Modifique el contenido del proceso `PrOR` para que describa la función requerida en caso de que el código no sea el deseado.

## Archivos incluidos

- **`cod1.vhd`**: Archivo original con el código del enunciado, es el que debemos revisar. 
- **`testbench.vhd`**: Archivo de test bench que contiene la simulación para verificar el comportamiento de la unidad OR.
- **Diseño de componentes**: El componente `or_unit` está instanciado y conectado a las señales de prueba.
- **Simulación**: Se incluyen estímulos para verificar el comportamiento del diseño.

## Instrucciones

1. Revise el código del componente `or_unit` y determine si cumple con la función `s = OR(a(2), a(1), a(0))`.
2. Si el comportamiento no es el esperado, modifique el proceso correspondiente para implementar la función requerida.
3. Ejecute la simulación en **EDA Playground** o en su entorno de simulación preferido para validar los cambios.

## Notas

- Asegúrese de que los estímulos en el test bench cubran los casos necesarios para verificar la función `OR(a(2), a(1), a(0))`.
- Consulte la documentación de VHDL si necesita ayuda con la sintaxis o las estructuras del lenguaje.

---
Autor: Christian Scornaienchi