# Ejercicio 2: Multiplexor de 2 Entradas de 1 Bit

## Enunciado

2. Realice la descripción de un multiplexor de 2 entradas de un bit.  
   - **Utilice sentencias concurrentes**.

## Archivos incluidos

- **`design.vhd`**: Implementación del multiplexor de 2 entradas de 1 bit utilizando sentencias concurrentes.
- **`testbench.vhd`**: Banco de pruebas para verificar el comportamiento del multiplexor.

## Instrucciones

1. **Diseño del multiplexor**:
   - El multiplexor debe seleccionar una de las dos entradas (`a` o `b`) según el valor de la señal de selección `s`.
   - Utilice sentencias concurrentes para describir el comportamiento del multiplexor.

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