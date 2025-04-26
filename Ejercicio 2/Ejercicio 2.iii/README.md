# Ejercicio 2: Multiplexor de 2 Entradas de 1 Bit

## Enunciado

2. Realice la descripción de un multiplexor de 2 entradas de un bit.  
   - **Utilice instanciación de componentes. Use los componentes `or(a, b)` y `and(a, b)`**.

## Archivos incluidos

- **`and_gate.vhd`**: Implementación del componente AND que realiza la operación lógica `a AND b`.
- **`or_gate.vhd`**: Implementación del componente OR que realiza la operación lógica `a OR b`.
- **`design.vhd`**: Implementación del multiplexor de 2 entradas de 1 bit utilizando instanciación de los componentes `and_gate` y `or_gate`.
- **`testbench.vhd`**: Banco de pruebas para verificar el comportamiento del multiplexor.

## Instrucciones

1. **Diseño del multiplexor**:
   - El multiplexor selecciona una de las dos entradas (`a` o `b`) según el valor de la señal de selección `s`.
   - Se utilizan los componentes `and_gate` y `or_gate` para implementar el comportamiento del multiplexor mediante instanciación.

2. **Simulación**:
   - Use el archivo `testbench.vhd` para simular el diseño y verificar su funcionalidad.
   - Ejecute la simulación en **EDA Playground** o en su entorno de simulación preferido.

3. **Validación**:
   - Asegúrese de que el multiplexor selecciona correctamente:
     - Entrada `b` cuando `s = '1'`.
     - Entrada `a` cuando `s = '0'`.
   - Revise los resultados de la simulación para confirmar el comportamiento esperado.

## Notas

- Consulte la documentación de VHDL si necesita ayuda con la sintaxis o las estructuras del lenguaje.
- Asegúrese de que los estímulos en el test bench cubran todos los casos posibles para el multiplexor.

---

Autor: Christian Scornaienchi