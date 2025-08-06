# Ejercicio 5 - Ejercicio 4: Multiplexor de 4 Entradas de 4 Bits

## Enunciado

Realice la descripción VHDL de un multiplexor de 4 entradas de un bit, adaptado para trabajar con operandos de 4 bits.

## Archivos incluidos

- **`design.vhd`**: Implementación del multiplexor de 4 entradas de 4 bits mediante instanciación de componentes `Mux2_1`.
- **`Mux2_1.vhd`**: Archivo con una de las implementaciones del `Mux2_1` realizadas previamente, adaptada para operar con vectores de 4 bits.
- **`testbench.vhd`**: Banco de pruebas para verificar el comportamiento del multiplexor de 4 bits.

## Instrucciones

1. **Diseño del multiplexor**:
   - El multiplexor toma cuatro entradas de 4 bits (`a`, `b`, `c`, `d`) y, dependiendo del valor de las señales de selección (`s1` y `s0`), dirige el valor de una de las entradas a la salida (`o`), también de 4 bits.
   - Se utiliza la instanciación de componentes `Mux2_1` para implementar el comportamiento del multiplexor de 4 bits, combinando tres multiplexores de 2 a 1.

2. **Simulación**:
   - Use el archivo `testbench.vhd` para simular el diseño y verificar su funcionalidad con diferentes combinaciones de entradas y señales de selección.
   - Ejecute la simulación en **EDA Playground** o en su entorno de simulación preferido.

3. **Validación**:
   - Verifique que el multiplexor cumple correctamente el siguiente comportamiento:
     - Si `s = "00"`, la salida `o` toma el valor de la entrada `a`.
     - Si `s = "01"`, la salida `o` toma el valor de la entrada `b`.
     - Si `s = "10"`, la salida `o` toma el valor de la entrada `c`.
     - Si `s = "11"`, la salida `o` toma el valor de la entrada `d`.
   - Revise los resultados de la simulación para confirmar el comportamiento esperado.

## Notas

- Consulte la documentación de VHDL si necesita ayuda con la sintaxis o las estructuras del lenguaje.
- Asegúrese de que los estímulos en el test bench cubran todos los casos posibles para el multiplexor de 4 bits.
- Puede reutilizar o adaptar implementaciones previas de `Mux2_1` para este diseño.

---

Autor: Christian Scornaienchi