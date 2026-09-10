# Pueblo de Dark City

Hay diez vehículos de prueba cerca del inicio. **V** junto a la puerta del conductor permite subir y bajar con animación; **E** abre la puerta, **WASD** conduce y **Espacio** frena. [Catálogo de vehículos, video y Blender](<C:/Users/Nico/OneDrive/Documents/Dark City Project/Vehiculos.html>).

Se integró la nueva utilería: contenedores, tachos, expendedores de diarios, cabinas telefónicas, aires acondicionados y cajas eléctricas, además de posters, empapelados y revestimientos bajos. [Abrir el catálogo con modelos de Blender y texturas](<C:/Users/Nico/OneDrive/Documents/Dark City Project/Objetos y materiales nuevos.html>). Las partes actualizadas están en **Modelos/Mundo04**, sobre la base conservada de **Mundo03**.

Abrí **Caminar con protagonista.cmd** en esta carpeta. El mapa ahora tiene **785 edificios**, con mayor densidad en el centro, barrio rojo e industria, edificios altos, cables, grafitis, humedad, basura y callejones estrechos.

Las fachadas de las manzanas urbanas están a **2,5 metros del cordón**. Los pasajes entre edificios miden **2 metros**. Se conservaron las manzanas de **100 × 100 metros**, el mundo de **950 × 1650 metros**, calles de **12 metros**, calzada a **5 cm** y vereda a **15 cm**. Las villas y los accesos rurales conservan características propias.

![Centro en Godot](<C:/Users/Nico/OneDrive/Documents/Dark City Project/Vistas/Pueblo_denso/01_Calle_centro.png>)

| Control | Acción |
|---|---|
| WASD / Shift mantenido | Caminar / correr |
| Mouse | Girar la cámara |
| Caminar contra una puerta habilitada | Empujar y entrar o salir |
| E cerca de un objeto pequeño | Recogerlo |
| E en el mostrador, con mercadería pendiente | Pagar |
| I | Inventario: usar, soltar, pagar o regalar |
| G | Soltar el último objeto del inventario |
| M / F9 | Plano / datos de carga y rendimiento |
| Tab | Vista aérea exterior |
| 2 | Equipar / guardar la PPK |
| Botón derecho / izquierdo | Apuntar / disparar |
| F10 | Biblioteca de ropa |
| R | Volver al punto inicial, conservando salud |
| F8 | Reiniciar explícitamente la salud de prueba |
| Escape / clic | Liberar / recuperar el mouse |

Hay **104 entradas habilitadas**. Las construcciones de relleno completan la calle y permanecen cerradas; las plantas adicionales no son pisos explorables. En las puertas habilitadas se abre una hoja y se prepara el interior antes de transferir al personaje. Ya no se usa E para cruzar puertas.

Los interiores tienen mobiliario según su función: sala, cocina, dormitorios, baños, oficinas, comercios y espacios de trabajo. Se agregó un kit de **38 muebles y 11 objetos pequeños** a los muebles existentes. Las piezas nuevas tienen entre **12 y 168 triángulos**, con materiales compartidos. Los pasillos y accesos quedan libres.

![Interior amueblado](<C:/Users/Nico/OneDrive/Documents/Dark City Project/Vistas/Pueblo_denso/04_Muebles_y_objetos.png>)

Los objetos recogibles mantienen su identidad al guardarlos, soltarlos o regalarlos. La mercadería necesita pago en el mostrador; llevársela sin pagar registra un robo. Se conserva el propietario y la procedencia. Esto es una base de interacción: todavía no hay compras autónomas de los vecinos, animaciones nuevas de recoger, registros policiales completos ni armarios registrables.

La carga cercana usa un **radio de 50 metros**. Las piezas técnicas de 100 metros que tocan ese círculo se cargan completas para conservar colisión continua. Los edificios lejanos tienen versiones simplificadas y niebla; no desaparece todo exactamente al metro 50. Los interiores se preparan por proximidad y solo hay uno físicamente activo.

Hay **50 NPC persistentes de prueba**, masculinos y femeninos, repartidos por el pueblo. Los cercanos se representan físicamente; los lejanos conservan su información. El límite actual es de 24 cuerpos físicos cercanos. Se usa la locomoción, rig, ropa y daño existentes. Llegar a 1000 habitantes requiere otra prueba de escala; esta versión no valida ese objetivo todavía.

Se verificaron la entrada y salida caminando, colisiones, descarga y regreso de NPC, continuidad de inventario y objetos, y un recorrido sintético rápido para revisar el suelo durante la carga. Las pruebas usaron guardados separados. La creación inicial de un NPC aún puede producir un tirón breve; las mediciones están en la guía técnica.

![Callejón del barrio rojo](<C:/Users/Nico/OneDrive/Documents/Dark City Project/Vistas/Pueblo_denso/06_Callejon.png>)

Los archivos nuevos están en **Modelos/Mundo03**. La versión anterior del mundo sigue en **Modelos/Mundo**. Las texturas fuente de Nico y los modelos de personajes se conservaron.

- [Plano métrico](<C:/Users/Nico/OneDrive/Documents/Dark City Project/Vistas/Pueblo_denso/Plano_metrico.png>)
- [Inventario de mobiliario](<C:/Users/Nico/OneDrive/Documents/Dark City Project/Documentacion/Pueblo_streaming_03/Mobiliario.md>)
- [Guía técnica y pruebas](<C:/Users/Nico/OneDrive/Documents/Dark City Project/Documentacion/Pueblo_streaming_03/LEEME.md>)
