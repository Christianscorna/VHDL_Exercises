# Ejercicio 4: Multiplexor de 4 Entradas de 1 Bit

## Enunciado

Realice la descripción VHDL de un multiplexor de 4 entradas de un bit.

## Archivos incluidos

- **`design.vhd`**: Implementación del multiplexor de 4 entradas mediante instanciación de componentes `Mux2_1`.
- **`Mux2_1.vhd`**: Archivo con una de las implementaciones del `Mux2_1` realizadas previamente. Puede ser cualquiera de las versiones disponibles.
- **`testbench.vhd`**: Banco de pruebas para verificar el comportamiento del multiplexor.

## Instrucciones

1. **Diseño del multiplexor**:
   - El multiplexor toma cuatro entradas (`a`, `b`, `c`, `d`) y, dependiendo del valor de las señales de selección (`s1` y `s0`), dirige el valor de una de las entradas a la salida (`o`).
   - Se utiliza la instanciación de componentes `Mux2_1` para implementar el comportamiento del multiplexor.

2. **Simulación**:
   - Use el archivo `testbench.vhd` para simular el diseño y verificar su funcionalidad.
   - Ejecute la simulación en **EDA Playground** o en su entorno de simulación preferido.

3. **Validación**:
   - Asegúrese de que el multiplexor cumple con el siguiente comportamiento:
     - Si `s1 = '0'` y `s0 = '0'`, la salida `o` toma el valor de la entrada `a`.
     - Si `s1 = '0'` y `s0 = '1'`, la salida `o` toma el valor de la entrada `b`.
     - Si `s1 = '1'` y `s0 = '0'`, la salida `o` toma el valor de la entrada `c`.
     - Si `s1 = '1'` y `s0 = '1'`, la salida `o` toma el valor de la entrada `d`.
   - Revise los resultados de la simulación para confirmar el comportamiento esperado.

## Notas

- Consulte la documentación de VHDL si necesita ayuda con la sintaxis o las estructuras del lenguaje.
- Asegúrese de que los estímulos en el test bench cubran todos los casos posibles para el multiplexor.

---

Autor: Christian Scornaienchi