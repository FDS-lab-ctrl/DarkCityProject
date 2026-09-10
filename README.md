# Dark City Project

Modelos actuales organizados. Abrí **Abrir visor.cmd** y elegí:

1. Protagonista con camisa, pantalón y zapatos.
2. Protagonista con camiseta, pantalón y zapatos.
3. Cuerpo base masculino.
4. Cuerpo base femenino.
5. Caminar por el mapa con el protagonista.

**Caminar con protagonista.cmd** entra directamente al mapa. Usá **WASD** o
las flechas para caminar, **ratón** para girar la cámara y **rueda** para acercarla.
**R** vuelve al inicio, **Tab** muestra las manzanas, **M** el terreno completo y
**Esc** libera el ratón; un clic retoma el control. Cerrá la ventana para salir.
El mapa conserva las dos manzanas de 100 × 100 m, sus 24 bloques de edificios y
el terreno de 950 × 1650 m. El protagonista usa la camisa, el pantalón, los zapatos
y el pelo creado por Nico, con su caminata, idle y movimiento secundario actuales.

En el visor: **P** caminar/idle, **T** pose base, **C** material uniforme,
**1–4** vistas, **R** girar, **Espacio** pausa y **Esc** cerrar.
**Abrir en Godot.cmd** abre el proyecto en el editor.

## Dónde está cada cosa

**UV para pintar/Abrir UV.html** es el catálogo actual. Incluye una sola imagen
para toda la piel, ojos y boca, y una textura con UV propias para cada prenda.
También está en **UV_para_pintar_Dark_City.zip**, junto con las copias de Blender.
Las UV de camisa, camiseta, pantalón y manos ya están corregidas en el juego.
**UV y Texturas/** conserva la entrega anterior como referencia histórica.

```text
Modelos/
  Cabezas/      cabeza_masculina.blend · cabeza_femenina.blend
                hairbaseforprotagonist.blend (peinado de Nico)
  Pelo/
    Protagonista/ pelo_protagonista.glb
  Cuerpos/
    Masculino/  cuerpo_masculino.glb · Edicion/ · Texturas/
    Femenino/   cuerpo_femenino.glb  · Edicion/ · Texturas/
  Ropa/
    Camisa/     camisa.glb          · Edicion/
    Camiseta/   camiseta.glb        · Edicion/
    Pantalon/   pantalon.glb        · Edicion/
    Zapatos/    zapatos.glb         · Edicion/ · Texturas/
Vistas/         Imágenes para revisar los modelos
Sistema/        Visor, scripts, escenas y shaders
Documentacion/  Inventario, conexiones modulares y comprobaciones
```

Cada carpeta **Edicion** contiene únicamente el modelo correspondiente y su rig
en un `.blend`, con imágenes empaquetadas. El `.glb` es el recurso para Godot.
La piel compartida está en **Modelos/Piel/piel_personaje.png**: cabeza, ojos,
boca, torso, brazos, manos, piernas y pies en una misma imagen de 512 × 512.
Camisa, camiseta y pantalón tienen su PNG de 256 × 256 bajo **Texturas/**.
Conservan sus colores actuales como base para pintar. Los zapatos mantienen
su atlas marrón de 128 × 128. Las copias de edición con estos UV se llaman
**cuerpo_masculino_uv.blend**, **cuerpo_femenino_uv.blend**, **camisa_uv.blend**,
**camiseta_uv.blend**, **pantalon_uv.blend** y **zapatos_uv.blend**.

**Cabezas** contiene los archivos editados por Nico. Las bases masculina y femenina
tienen `FRINGE_GUIDE` sobre `HAIR_BASE.001`; el peinado del protagonista está en
`hairbaseforprotagonist.blend`. Las cabezas originales se conservan intactas.
El pelo del protagonista se exporta con su **Solidify: grosor −0.01, offset −1**.
Godot recibe las 148 caras trianguladas de la última edición de Nico, incluido
el grosor; la superficie editable tiene 56 triángulos. El material marrón se asigna a la copia
exportada para identificar el pelo. Los archivos Blender del usuario no se alteran.

Las cuatro prendas son masculinas. **Camisa** es la de cuello doblado corregido;
**Camiseta** es la versión existente de cuello redondo, recuperada del respaldo
inmediatamente anterior a la camisa. Tiene el mismo cuerpo, manos y rig actuales.

Los modelos, proporciones y animaciones no se rediseñaron durante esta organización.
Los GLB conservan la geometría y las animaciones, con la integración de UV descrita
arriba. `fantasygamegodot` conserva los originales y el
historial. El mapa de caminata ya está también en esta carpeta y es la escena
principal: `Sistema/Escenas/caminata.tscn`. Los accesos del visor siguen disponibles.

El proyecto usa Godot 4.4.1, instalado en la carpeta vecina **Godot 4**. Para
llevarlo a otra computadora, copiá esta carpeta e importá `project.godot` en Godot.
La carpeta oculta `.godot` es caché que el motor puede reconstruir.
