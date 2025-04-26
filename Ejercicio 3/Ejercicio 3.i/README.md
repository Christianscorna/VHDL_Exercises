# Ejercicio 3: Demultiplexor de 2 Salidas de 1 Bit

## Enunciado

Realice la descripción de un demultiplexor de dos salidas de un bit.  
   - **Utilice procesos explícitos y sentencias secuenciales**.

## Archivos incluidos

- **`design.vhd`**: Implementación del demultiplexor de 2 salidas de 1 bit utilizando procesos explícitos y sentencias secuenciales.
- **`testbench.vhd`**: Banco de pruebas para verificar el comportamiento del demultiplexor.

## Instrucciones

1. **Diseño del demultiplexor**:
   - El demultiplexor toma una entrada `a` y, dependiendo del valor de la señal de selección `s`, dirige el valor de `a` a una de las dos salidas (`f` o `g`).
   - Se utiliza un proceso explícito para describir el comportamiento del demultiplexor con sentencias secuenciales.

2. **Simulación**:
   - Use el archivo `testbench.vhd` para simular el diseño y verificar su funcionalidad.
   - Ejecute la simulación en **EDA Playground** o en su entorno de simulación preferido.

3. **Validación**:
   - Asegúrese de que el demultiplexor cumple con el siguiente comportamiento:
     - Si `s = '0'`, la salida `f` toma el valor de `a` y `g` permanece en `0`.
     - Si `s = '1'`, la salida `g` toma el valor de `a` y `f` permanece en `0`.
   - Revise los resultados de la simulación para confirmar el comportamiento esperado.

## Notas

- Consulte la documentación de VHDL si necesita ayuda con la sintaxis o las estructuras del lenguaje.
- Asegúrese de que los estímulos en el test bench cubran todos los casos posibles para el demultiplexor.

---

Autor: Christian Scornaienchi