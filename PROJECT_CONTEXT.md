> **A5.9.2 - CANDIDATO PARA PRUEBA, 2026-09-10.** Superpone A5.9.1.
> Esta cabecera reemplaza el estado vigente de las cabeceras historicas de abajo.
> Leer `Documentacion/Parche_A5_9_2/LEEME.txt` y su manifiesto.
> Corregido en codigo el motor fisico desactivado al salir del asiento; nueva
> planificacion fisicamente validada de salida de obstaculos y circulacion separada
> del parking. HUD de custodia, reja persistente y tres contextos EXCLUSIVOS:
> casa Sleep 1-8 h, celda Serving Sentence completa, hospital Recover Time completo.
> TODOS los saltos usan ventanas/eventos logicos, no replay de movimiento fisico.
> No hay teleports nuevos ni exito de fases por timeout. Escape conserva solo
> avance parcial. Ctrl+F12: a59_diagnostic.json; archivo Diagnostics_A5_9_2.
> 38 pruebas offline; NO se ejecuto Godot, NO se midieron FPS ni tiempos de carga.
> No dar por probado el flujo completo ni pasar a A6 hasta la aceptacion real.
> La cama propia y las colisiones exactas necesitan validacion del usuario.

> **A5.8 - CANDIDATO PARA PRUEBA (2026-09-09).** Esta copia parte de
> `Dark City Project exp.rar`, contrastada con los scripts acumulativos A5.7.
> Se modifica la navegacion local de NPCs/vehiculos: sondeos de volumen,
> desvio peatonal acotado, prioridad de cruces y obstrucciones temporales de carril.
> Leer primero `Documentacion/Parche_A5_8/CONTINUIDAD_A5_8.md` y `LEEME_A5_8.txt`.
> Se conservan la justicia A5.7, los carriles A5.2, EMS, identidades y arte.
> Solo se ejecutaron comprobaciones externas/independientes: NO se ejecuto Godot,
> NO se certifican el parser/tipado del motor, el juego completo ni los FPS.
> No confundir las verificaciones historicas de abajo con una prueba de A5.8.

# Dark City Project — contexto persistente del proyecto



Actualizado y contrastado con archivos locales: **2026-09-08**. Propietario/diseñador: **Nico**. Idioma habitual de trabajo: español. Este archivo registra decisiones y estado; no autoriza por sí solo a ejecutar todas las tareas futuras.



## 0. Lectura obligatoria y prioridades

**Estado vigente 2026-09-08:** tiendas integradas y verificadas en §36; garaje de taxis y estacionamiento civil en §37. Las notas anteriores sobre integración aplazada y el total antiguo de325plazas quedan superadas por esas secciones. Usar las rutas de arranque/renderer de §37.

**2026-09-08 — tiendas y biblioteca de interiores:** leer §29 y `Documentacion/Registro_tiendas_01/CONTINUIDAD.md`. Lista final de31negocios con IDs estables;375assets vinculados a tienda o grupo compartido. La última tanda `more more shops` aporta105piezas para9negocios;24negocios tienen piezas de interior y7solo cartel. Reemplazo de stores y coordinación con otra tarea aplazados; ninguna integración al mundo en esta revisión.

**Última entrega: Biblioteca_armas_01 — 310 comprobaciones.** Cinco armas de Nico integradas. Revólver sustituye visualmente PPK, conserva balística;1/2manos, lesiones, recargas por tipo, precios, munición y drops persistentes. Leer §25 y Documentacion/Biblioteca_armas_01/LEEME.md. Probar armas.cmd abre revisión aislada con las cinco. UI_03/02, fuentes originales y6480archivos de arte intactos.

**Último ajuste: UI_03 — inicio fijo, 21 comprobaciones verificadas.** NEW GAME comienza frente a la casa B0029, en `(14.5, 0.175, 49.5)`, sobre la vereda y mirando la puerta. Continue/Load conserva posición/interior guardados. Solo cambió SPAWN en pueblo_caminata.gd; menú y reglas UI_02 intactos. Ver §24 y Documentacion/UI_03/LEEME.md.

**Interfaz vigente: UI_02, verificada con 192 comprobaciones en 8 suites renderizadas.** Menú principal, HUD y ventanas verde neón/magenta; TODO texto visible del juego en INGLÉS. Seis guardados manuales, autosave separado, carga real y recuperación .bak. Leer **§23**, §16 y `Documentacion/UI_02/LEEME.md`. Inicio: `Play Dark City.cmd` o `Caminar con protagonista.cmd` → menú principal. Arte aprobado intacto: 6480 SHA-256. No regenerar UI_02 sellada; UI_01 preservada.



**Base de comportamiento vigente: UI_01 (167 comprobaciones originales), revalidada por UI_02.** Player Menu STATUS/CONTACTS/INVENTORY/MAP/RECORDS; Tab/I/M pausan árbol y calendario, E es contextual, Esc pausa/vuelve. R recarga PPK6/36/1.4s, mismo componente para NPC. Reputación criminal0–500 (migración única x5); wanted0–5 separado. Leer **§22**, **§16** y `Documentacion/UI_01/LEEME.md`. Arte aprobado intacto:6480 SHA-256. Justicia_01 (§21), empleo (§20), vida lógica (§19) y cuatro necesidades (§18) continúan; los controles históricos H/J/N/V/G/P/F/Tab aéreo se sustituyen por esta UI.

**Después de cualquier compactación, al retomar el proyecto o ante una duda sobre una decisión anterior, leer este archivo ANTES de asumir, diseñar o modificar.** Leer luego el código o la fuente específica citada para la parte que se vaya a tocar. Mantener este archivo actualizado con decisiones posteriores; no reemplazar valores exactos por resúmenes vagos.



- Proyecto ACTIVO: `C:/Users/Nico/OneDrive/Documents/Dark City Project`.

- El cwd de una tarea puede seguir siendo `C:/Users/Nico/OneDrive/Documents/fantasygamegodot`: es el proyecto HISTÓRICO, con donantes, experimentos y respaldos. No trabajar allí por inercia ni regenerar el proyecto activo desde sus scripts viejos.

- Prioridad: instrucción actual de Nico → decisiones vigentes documentadas y archivos actuales → notas históricas. Si una nota vieja dice «solo protagonista», «sin ropa femenina», «dos manzanas», «sin horarios» o «texturas de ropa 256», leer las excepciones vigentes aquí.

- Nico pidió **no hacer preguntas intermedias**: elegir la mejor opción razonable dentro del alcance autorizado y continuar. No ampliar una tarea a sistemas adyacentes solo porque estén en el documento general.

- Preservar cambios guardados por Nico. No sobrescribir sus `.blend`, PNG pintados, UV o modelos con generadores históricos. `.blend1` y copias de revisión no son nuevas variantes.

- Versiones de generación entregadas tienen `entregado.json`; **no volver a hornearlas encima de ediciones posteriores**. Versionar la próxima reconstrucción autorizada. Los scripts de generación documentan cómo se hizo un recurso; no son sincronizadores seguros.

- Actualizado con **UI_02** (§23: presentación/inglés/inicio/guardados), conservando UI_01 (§22) y Justicia_01 (§21): policía e investigación por sucesos, sin conocimiento mágico. Rutinas/relaciones/TALK/GIFT/encuentros persisten sin necesidad SOCIAL. Empleo y estabilidad NPC implementados (§20). Facciones, romance completo, funerales físicos, autobús de inmigración y tráfico policial autónomo siguen pendientes.



### Qué está realmente implementado



| Área | Estado verificado |

|---|---|

| Personajes masculino/femenino, ropa modular, pelo, expresiones | Implementados; modelos aprobados y fuentes de Nico protegidos. |

| Caminar, giros anticipados, sprint, terreno | Motor compartido; perfiles masculino/femenino; físicas secundarias y correcciones existentes. |

| PPK, grip, equipar, apuntar, disparar, retroceso, impactos | Implementados para el sistema compartido; NPC sin decisión autónoma de atacar. |

| Daño localizado, sangrado, muerte persistente, ragdoll, levantarse | Implementados. Muerte normal no resucita; F8 es una excepción explícita de prueba. |

| Pueblo, streaming, interiores, objetos, coches | Implementados con límites descritos abajo. No hay tráfico autónomo. |

| Calendario, estaciones, clima, energía del jugador y sueño | Entrega `Tiempo_clima_sueno_01`, integrada en la escena normal. |

| 50 NPC persistentes actuales | Vida_logica_01: identidad, cuatro necesidades, horarios, viajes/ETA, casa/trabajo, eventos, muerte y representación física por proximidad. **No son todavía el reparto social/laboral final 10+10+10+20**. |

| Trabajo y vida | Empleo_vida_01: turnos/asistencia, sueldo, habilidad/experiencia, revisiones/recuperación/despido, vacantes, búsqueda/entrevistas, ascensos, gastos, estrés/apoyo, alcohol, accidentes/cuidados, crisis reversible y residencia persistente. |

| Social/relaciones | Afinidad/familiaridad, preferencias, TALK/GIFT, encuentros, recuerdos y duelo conservados. **SOCIAL como necesidad retirado por instrucción nueva**; planner de encuentros por eventos, ver §19. |

| Interfaz / controles | UI_02: menú principal, HUD neón, inglés, seis guardados manuales y Load Game; mantiene las 5 pestañas, pausa, E contextual, recarga y conocimiento explícito de UI_01. §23/§22 y controles §16. |

| Justicia/policía | Justicia_01: hechos/testigos/identidad/máscaras, cargos persistentes, wanted, antecedentes, arresto, condena, visitas a domicilios conocidos, prisión/salto de calendario, liberación y relaciones. 10 residentes policías, máximo4 operaciones, respuesta a pie. |

| Necesidades del protagonista | Necesidades_01: ENERGY/HUNGER/THIRST/BLADDER, comida/bebida, baño, inventario/compra y poses. Sin SOCIAL/HYGIENE/FUN del protagonista. Ver §18. |

| Familias, romance, funerales, sucesión, frigos/compras NPC | Tags familiares/pareja y duelo social implementados. Sin asignación automática de hogares familiares, desarrollo romántico, funeral físico ni sucesión. |



**Corrección de memoria importante:** una revisión anterior había encontrado `stuffimadeuseonlyifiask/social system.txt` vacío. En esta revisión el archivo existe con **16.063 bytes**, 31 apartados y contenido completo. Se leyó y se preservó. NO repetir que está vacío. Posteriormente se implementó la entrega Sistema_social_01, detallada en §15; su existencia se verificó en código y pruebas, no se dedujo de la fuente. Su texto llama «existing Funeral System» a un sistema que no se encontró implementado: esa frase no prueba su existencia.



## 1. Concepto y dirección visual vigentes

- **Idioma obligatorio del juego: inglés.** Menús, controles, HUD, interacciones, avisos, nombres descriptivos de objetos/lugares y textos del mundo deben presentarse en inglés. Conversación y documentación pueden seguir en español. Conservar nombres propios e identificadores persistidos. UI verde neón/magenta, panel oscuro y tipografía píxel según las 5 referencias de Nico; detalle §23.



- Juego de ciudad abierta ambientado en **los años 90**. La propuesta medieval inicial, mercenario y ciudad amurallada quedó descartada expresamente.

- Referencia de lenguaje visual: GTA III / Vice City / Liberty City Stories, PS1/PS2 temprana/PSP; colores tenues, oscuros, desgaste y suciedad. Low-poly legible, angularidad controlada, sin aspecto moderno muy suave ni caricatura exagerada.

- Concepto de juego: GTA III de mundo abierto + vidas persistentes tipo Sims. Posesiones, trabajos legales/ilegales repetibles, progresión, delitos y relaciones; no exige campaña lineal. La historia de la partida emerge de sus habitantes y sucesos.

- Geometría sencilla, texturas aportan detalle de superficie. **Textura no sustituye silueta 3D** de ropa, pelo, arquitectura u objetos.

- Población de prueba actual 50; aspiración futura de 1.000. Empleo_vida_01 verificó 1.000 identidades en simulación lógica sin cuerpos durante un día; no valida 1.000 NPC físicos ni promete 60 FPS.



## 2. Proyecto, rutas, herramientas y verificaciones



- `project.godot`: Godot **4.4.1**, `GL Compatibility`; escena principal `res://Sistema/Escenas/main_menu.tscn` (`main_menu.gd`). Inicia el mundo en `res://Sistema/Escenas/caminata.tscn`, controlador `pueblo_caminata.gd`. La escena caminata directa sigue disponible para pruebas aisladas.

- Resolución interna configurada **960×540**, ventana **1440×810**, stretch `canvas_items`; interpolación de físicas activada; importación automática Blender desactivada.

- Godot local: `C:/Users/Nico/OneDrive/Documents/Godot 4/Godot_v4.4.1-stable_win64_console.exe`.

- Python usado en herramientas: `C:/Users/Nico/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/python.exe`.

- `Play Dark City.cmd` y `Caminar con protagonista.cmd` → `Sistema/abrir.ps1 -Caminar` → menú principal. `Abrir en Godot.cmd` abre el editor. `Abrir visor.cmd` mantiene el visor de cuerpos/prendas.

- `Modelos/`: arte de runtime. `Modelos/.../Edicion/*_uv.blend`: copias de trabajo con UV actuales cuando estén disponibles. Los no-`_uv` y copias del kit de pintura pueden ser históricos.

- `Sistema/Scripts`, `Sistema/Shaders`, `Sistema/Animaciones`, `Sistema/Datos`: código, materiales, clips y configuraciones actuales.

- `stuffimadeuseonlyifiask`: fuentes aportadas por Nico, **usar solo cuando pide hacerlo**. Importar partes autorizadas; no llevar un cuerpo/cabeza donante entero al juego por encontrarlo en un archivo.

- `UV para pintar`: entradas de pintura actuales. `UV y Texturas`: catálogo anterior, histórico. No restaurar desde este último el problema de UV colapsadas.

- `Documentacion`: especificaciones, respaldos, manifiestos y evidencia. `Vistas`: capturas y videos de Godot.

- Todas las pruebas de Godot deben terminar en **`-- --damage-test`**: deshabilita la partida real. No inspeccionar/modificar la partida real para preparar una prueba. Resolución CLI: `--resolution 1280x720`, con `x`.

- `--damage-test` no significa un proyecto nuevo: usa los mismos sistemas con persistencia real desactivada. Los tests de archivos escriben copias aisladas en su carpeta de documentación.

- No reejecutar las suites completas por una edición meramente documental. No publicar ni abrir otras tareas ni delegar sin autorización correspondiente.



## 3. Convenciones y arquitectura compartida



### Unidades y coordenadas



- Mundo en **metros**, fuerzas/impulsos en unidades físicas indicadas por cada componente; impulsos `kg*m/s` independientes de HP. Ángulos de tuning frecuentemente en **grados**, convertidos con `deg_to_rad`; `Node3D.rotation` y headings guardados en radianes.

- Godot: Y arriba, X/Z horizontal. Personaje en orientación anatómica de referencia mira +Z; instancias pueden tener `model.rotation.y = PI`. **En este rig heredado la derecha anatómica es la cadena `.L`**, no `.R`. Arma usa `UpperArm.L / Forearm.L / Hand.L`. No renombrar ni espejar el esqueleto para corregir etiquetas.

- Rig de **22 huesos**: `Root`, `Hips`, `Spine`, `Chest`, `Neck`, `Head`; a cada lado `.L/.R`: `Clavicle`, `UpperArm`, `Forearm`, `Hand`, `Thigh`, `Shin`, `Foot`, `Toes`. Preservar nombres, jerarquía, offsets de articulación, rest poses por sexo, escala y skin weights compatibles.

- Una instancia de personaje = **un Skeleton3D y un AnimationPlayer**, módulos sobre ese rig. Librerías de animación y estado mutable de spring/turn/aim/blink privados por actor; no compartir estado entre NPC.

- Al muestrear deformación/render, usar `modification_processed` del **ÚLTIMO modificador**, no solamente `process_frame`, que puede observar la pose base restaurada. Incluir `RunClearance` antes de skinning. El render Dummy no devuelve bien arrays de blend shapes: QA numérico usa `run_clearance_vertices`.



### Controladores y componentes



| Archivo en `Sistema/Scripts` | Responsabilidad |

|---|---|

| `pueblo_caminata.gd` | Ensamblado de escena, streaming, contextos interior/exterior, UI, integración de vehículos/calendario/clima/descanso. |

| `jugador_caminata.gd` | Intención de input y cámara del protagonista. |

| `npc_character.gd` / `npc_femenina.gd` | Intenciones NPC compartidas; segundo archivo es compatibilidad femenina. API `set_movement_intent(world_direction, running)`. |

| `character_locomotion.gd` | Instalación del motor, caminar/correr/idle, aceleración, terreno, giros y componentes compartidos. |

| `character_walk`, `character_run`, `body_secondary_motion`, `arm_inertia`, `turn_sequence`, `turn_limb_coordination`, `turn_arm_follow_through`, `leg_swing_clearance`, `terrain_steps`, `female_foot_contact` | Clips, correcciones y movimiento secundario existentes. |

| `character_run_cloth.gd` | Holgura privada de prendas durante correr, sin modificar mallas fuente. |

| `character_weapon`, `weapon_pose`, `weapon_grip`, `weapon_recoil`, `weapon_muzzle_flash` | Arma compartida, pose, grip y efectos. |

| `character_hit_surface`, `bullet_wound`, `world_bullet_impact` | Superficie exacta visible, heridas adheridas e impactos materiales. |

| `character_damage`, `character_life_store`, `character_ragdoll`, `ragdoll_constraints`, `ragdoll_pose`, `character_getup` | Salud/lesiones, persistencia, caída articulada y recuperación. |

| `character_clothing`, `clothing_catalog`, `occupation_clothing`, `hair_catalog`, `bald_base_face` | Vestuario, selección de conjuntos, pelo y expresiones. Seleccionar ropa de oficio NO asigna empleo. |

| `world_time`, `world_climate`, `world_weather_fronts`, `world_atmosphere` | Calendario único, clima lógico y representación local. |

| `world_npc_calendar`, `npc_calendar_sleep_pose` | Agenda básica vigente y pose de dormir de NPC físicos; intenciones MEET/SOCIALIZE delegadas al sistema social. |

| `relationship_system`, `world_social`, `social_interaction_ui`, `character_social_pose` | Datos centrales, SOCIAL, TALK/GIFT, encuentros, recuerdos y gestos temporales compartidos. Estado world_state.social_01; ver §15. |

| `world_sleep`, `world_sleep_access`, `character_sleep_pose`, `character_rest` | UI/transición de cama, acceso, pose y cansancio del jugador. |



Los nombres de estado y claves se mantienen tal como el código: `protagonist`, `npc_female_001`, `NORMAL_CLOTHING`, `WORK_CLOTHING`, `daily_life`, `time_environment_01`, etc. No traducir identificadores persistidos al español ni crear un segundo equivalente de un servicio que ya existe.



## 4. Arte de personajes: límites que no se deben revertir



- Las cabezas y cuerpos actuales son el resultado aprobado de iteraciones. No aplicar otra vez los aumentos históricos del 20%, bajadas de cuello, estrechamientos ni antiguos generadores.

- La cabeza femenina vigente incorpora **toda** la edición de Nico en `stuffimadeuseonlyifiask/new_head_model_female.blend`, no solo barbilla: ocho vértices editados incluyendo nariz, orejas y punto cerca de boca. Los **86 puntos de cabeza** quedaron a la escala ya aumentada. No reescalar ni restaurar la barbilla de archivos de pelo/cabeza viejos. La prohibición de modificar la cabeza protege esta versión aprobada.

- Hombros: se aprobaron refinamientos suaves en ambos sexos. En masculino/Camisa/Camiseta la última revisión redujo span deltoideo **7%**, máximo **8 mm** de subida de trapecio interno, **1,5 mm** de volumen posterior y **6 mm** de descenso exterior; taper se extingue en codo/pecho bajo. No reinstalar shoulders anteriores desde `.blend` histórico.

- Femenino: misma reducción de span deltoideo **7%**, trapecio interno hasta **7.53 mm** y descenso externo **5.73 mm**; 88 de 740 vértices del cuerpo cambiaron, conservando topología/UV/pesos/rig. La nota masculina anterior «female unchanged» quedó superada.

- Brazos, piernas, torso, manos/pies y cabeza no se remodelan al añadir ropa, pelo o animaciones. Mano/pie deliberadamente PS1: dedos simplificados, sin uñas/tendones/nudillos detallados. Muñeca/tobillo estrechos, transición gradual, palma con masa suficiente; no pies hinchados ni manos orientadas al frente por error.

- Suavizado controlado: planos algo visibles, sin bajar drásticamente polígonos, rediseñar silueta ni hacer bloques exagerados.

- Índices/conexiones originales están en `Documentacion/contrato_modular.json`; consultar ese archivo para mover o sustituir un módulo, no deducirlos de capturas. Medidas históricas por prenda no sustituyen la malla actual.



### Ropa: regla global para ambos sexos



**La prenda ES la sección del cuerpo.** Camisa/remera/chaqueta sustituyen torso; pantalón/shorts sustituyen piernas cubiertas; zapatos sustituyen pies cubiertos. No mantener un cuerpo desnudo completo escondido debajo. Dejar piel expuesta y los pequeños márgenes de unión necesarios.



- Silueta de ropa reconocible en color plano: mangas, cuello, abertura, dobladillo, holgura de tejido y pliegues simples reales. Texturas solo color, costuras, botones, bolsillos y detalle superficial.

- Camisa del protagonista fuera del pantalón: sobreposición a cintura, borde inferior visible, pecho no inflado, espalda no pegada a músculos. Cuello de camisa doblado y abertura V; versión aprobada retiró sus puntas **21 mm** hacia el pecho.

- Pantalón con volumen propio de cadera/tiro/muslo/rodilla/pantorrilla; cae sobre entrada del zapato o termina limpiamente arriba, nunca metido sin intención. Mantener mejora posterior de rodilla/pantorrilla y pliegues de milímetros.

- Abrigos de biblioteca incluyen la parte visible de camisa interior en su propio torso; no un segundo torso completo. Accesorios laborales existentes son una excepción concreta autorizada, no permiso para capas ocultas generales.

- Pollera/vestido siguen muslos; ropa femenina conserva brazos, deja holgura de animación y evita cruce cintura/camisa. No restaurar anillos ocultos de pollera anteriores al ajuste de 3–6 mm. `RunClearance` es deformación privada de runtime, no simulación de tela libre.

- Ropa más ajustada femenina autorizada: camisa/pollera corta, crop top/shorts de jean, vestido y zapatos de vestir. Conserva las formas aprobadas; no rediseñar cuerpo para vestirlo.



### Inventario de ropa vigente



- `Sistema/Datos/Ropa/catalogo.json`: **80 referencias totales** = **71 de la biblioteca** + **9 referencias anteriores preservadas**.

- Biblioteca entregada: **60 mallas únicas**, **11 alias que comparten malla**, **282 texturas 128×128**, **92 conjuntos** en `conjuntos.json`. No confundir alias con geometría nueva ni multiplicar conteo por cada color.

- Perfiles: `top_model/top_texture`, `outerwear_model/outerwear_texture`, `bottom_model/bottom_texture`, `shoes_model/shoes_texture`, lista `work_accessories`, `head_accessory` reservado vacío.

- Persisten en `record.clothing = {version, NORMAL_CLOTHING, WORK_CLOTHING, active}`. Cambiar textura conserva malla/pesos; cambiar modelo refresca grip, superficies de impacto y holgura.

- `occupation_clothing.assign_existing(store, character_id, sex, role, faction="", overwrite=false)`: solo IDs ya existentes; `sex` es `M`/`F`; valida compatibilidad. Por defecto llena contextos faltantes, no pisa los guardados. `overwrite=true` es reasignación intencional. NO crea NPC ni cambia trabajo/facción.

- Selección estable inicial: hash de `character_id + "|" + role` módulo tamaño de pool. Después manda lo guardado.

- Roles de conjuntos para ambos sexos: `civilian`, `mechanic`, `construction`, `retail`, `bartender`, `waiter`, `cook`, `medical`, `doctor`, `office`, `taxi`, `delivery`, `sanitation`, `security`, `police_officer`, `police_sergeant`, `police_chief`, `mafia_old`, `mafia_old_boss`, `mafia_modern`, `mafia_modern_boss`. Alias exactos y prendas/colores de cada conjunto: JSON vigente y copia completa en el anexo de referencias.

- Nico autorizó verificar primeras **19 prendas** y **seguir con biblioteca completa sin otra confirmación**. Esa tarea ya terminó; no volver a interpretarla como límite de solo 19.

- F10: navegador de ropa; preview no se guarda hasta **Apply**. Cerrar/cambiar objetivo descarta preview no confirmado. Vestido original ocupa torso+bajo y no acepta un segundo pantalón/abrigo incompatible. Headwear opcional no implementado.



## 5. UV, texturas, expresiones y pelo



### Resolución y pintura



- Regla vigente: **ropa y pelo 128×128 en runtime**. Pequeña decoración futura 64×64/32×32. Las notas anteriores de pintura a 256 son históricas; mantener su lógica UV, no imponer esa resolución al juego.

- `character_texture_size.gd`/`character_surface_style.gd` aplican tamaño en copias de memoria. No reducir ni sobrescribir el PNG fuente de Nico. Skin/face atlas queda fuera de esta reducción. Vehículos usan su excepción actual: **256×256**.

- Piel base completa compartida: **`Modelos/Piel/piel_personaje.png`, RGBA 512×512**, cabeza, orejas, cuello/nuca, brazos, manos y demás piel. Los rasgos intercambiables usan atlas/hojas compatibles en las mismas regiones; no máscaras frontales de piel discordante.

- **PNG manda, BMP no.** Camisa local: `UV para pintar/Camisa/CAMISA.png`; pantalón: `UV para pintar/Pantalon/pantalon.png`. Lectura directa al ensamblar por `male_clothing_prototype.gd`, sobre superficies de tela nombradas. Reiniciar mapa/visor para recargar pintura; instancia abierta conserva recursos. Importados bajo `Modelos/.../Texturas` son fallbacks.

- Camisa y Camiseta: exactamente **5 islas UV conectadas**: frente, espalda, manga izquierda, manga derecha, tira cuello. Pantalón: frente izq./der., atrás izq./der., cintura. Dobladillos/retornos unidos al bloque correspondiente, no miniislas. Permitir distorsión moderada por facilidad de pintura y asimetría independiente. No UV colapsadas ni fragmentación excesiva.

- `UV_transparente.png` = contorno limpio; `UV_detallado.png` = malla opcional; `ZONAS.png`/`GUIA.png` son guías y **no** texturas del juego. `UV_Atlas` primero, `UV_Skin_Atlas` segundo en copias Blender actuales. Manos con palma/dorso/cantos y pliegue interior de pulgar desplegados, sin clamps que colapsen UV.



### Rasgos faciales actuales



- Geometría de cabeza 3D protegida; no máscara, no remodelar ojos/labios. Nariz/orejas ya forman parte del modelo. Ojos/cejas y labios son elementos intercambiables con **piel alrededor transparente**, compuestos sobre piel UV2 manteniendo cabeza opaca. No conectar alpha del rasgo a transparencia del cuerpo.

- Un `FaceAppearance` idempotente por modelo (`bald_base_face.gd`). `EyeState {EyesOpen, EyesClosed, Custom}` y `MouthState {MouthClosed, MouthOpen, Custom}`; ojos izquierdo/derecho independientes.

- Blink: inicio a inicio **3,5 s**, completamente cerrado **0,400 s**; vuelve al estado deseado de cada ojo. Boca, color o cambio de estilo no reinician reloj. Muerte detiene blink/processing y cierra ojos.

- Tres estilos ojo/ceja por sexo × tres bocas por sexo × cinco iris (`brown`, `honey`, `green`, `blue`, `gray`) = **45 combinaciones por sexo**, con estados abierto/cerrado. Default estilo ojo 0/boca 0/iris marrón. Comparación arte antiguo `-1` disponible en visor.

- Fuentes de pintura: seis `rasgos_0{1,2,3}_{reposo,expresion}.png`, RGBA512, en `UV para pintar/Rasgos faciales`, leídos al iniciar. `Recortes_de_referencia` es solo referencia. Recoloración afecta pigmento azul del iris, no piel/cejas.

- Regiones en píxeles del atlas512: masculino ojo `(4,344,120,64)`, boca `(132,344,120,112)`; femenino ojo `(260,344,120,64)`, boca `(388,344,120,112)`.

- `FEATURE_SCALE = 1.10`, **adicional** al aumento histórico **1.265 ya horneado en UV**. No reemplazar ni volver a acumular esos aumentos.

- Boca masculina: `expression_horizontal_offset = -5.0/120.0` (arte centrado x187 frente al muestreo x192), ambas variantes. Ojos/femenina offset0.

- Pivots normalizados: ojo M `(59,25)/(120,64)`, ojo F `(61,29.5)/(120,64)`, boca M `(55,48)/(120,112)`, boca F `(60.5,48.5)/(120,112)`. Fuerza femenina `.80`, masculina1. Dominios: ojos `(0,-.03,1,1.27)`, boca `(0,-.31,1,1.86)`.

- Separación izquierda/derecha mediante máscara de **VERTEX_ID en reposo**, no `VERTEX.x` animado. Capacidad máscara32, superficie heredada10v.

- `narina_UV_espejado.png` **64×32**, media marca espejada por UV existentes; fuerza `.55` sobre material privado `HeadSkin`. Sin nueva geometría ni cambio UV.

- Visor de expresiones guarda elecciones de revisión por sesión; mundo persistente captura `appearance.face` mediante `get_appearance/apply_appearance` y `world_character_snapshot`, no inferir que defaults antiguos se rerollean al cargar.



### Pelo: fuentes, volumen y variantes



- `HAIR_BASE` / `HAIR_BASE.001` **exclusivamente para peinados**. Nunca gorros, cascos, accesorios, cabeza, cara ni molde para conformar el cráneo. Cabeza no se adapta a GTA ni se esconde con pelo para evitar arreglar su forma.

- Pelo separado intercambiable. Referencias GTA solo silueta/volumen/economía/pintura. No copiar, transferir ni morfear su cabeza.

- `FRINGE_GUIDE` autoriza mover/extruir/eliminar/reconstruir esa zona del flequillo. Preservar caras fuera de ella salvo necesidad estricta. **Raíz ancha, punta estrecha**, unida a la masa principal; sin placas rectangulares flotantes ni infinitos mechones.

- Solidify de la configuración de Nico: **thickness -0.01, offset -1, rim**, exportar resultado con `export_apply=True`. En SU configuración -0.02/-0.03 aumenta volumen visible; no convertir esto en regla universal de normales Blender ni inflarlo como casco. El error histórico de pelo hundido fue exportar sin Solidify; nunca corregirlo cambiando cabeza o con depth bias.

- Actual: **7 estilos masculinos + 8 femeninos**, cuatro PNG **128×128** compartidos, **60 combinaciones**. Colores índice0..3: `negro`, `castano`, `rubio`, `colorado`; default1.

- IDs M: `protagonista`, `flequillo_01`, `flequillo_02`, `m_corto_01`, `m_corto_02`, `m_corto_03`, `m_corto_04`.

- IDs F: `f_corto`, `f_medio`, `f_largo`, `f_recogido`, `f_largo_02`, `f_lateral_largo`, `f_raya`, `f_raya_largo`.

- Catálogo `hair_catalog.gd`, recursos bajo `Modelos/Pelo` (no confundir con carpeta de pruebas `Peinados`). Los dos antiguos pelos del protagonista quedan para NPC. **No rellenar la coronilla abierta de Male_short04**, es calvicie diseñada por Nico. No contar `Corto_sencillo` rechazado.

- No restaurar cabeza vieja contenida en un archivo de pelo. La cabeza femenina más nueva manda. Cambios de color no mutan material compartido de otro actor. Selección/estado en mundo usa `appearance.hair`, `appearance.color`; visor es prueba independiente.

- El objetivo inicial «5 torsos/5 piernas/3 texturas/5 caras/5 pelos/4 colores/4 pieles por sexo» fue planificación de compatibilidad, no una orden de generar todo de golpe. Ahora hay biblioteca real con los conteos anteriores; no volver a ese objetivo como si fuera la cantidad ya implementada.



## 6. Caminar, giro, terreno y sprint aprobados



- Regla expresa: **todo movimiento/acción del protagonista debe estar disponible en NPC masculinos y femeninos** mediante componentes comunes. Input humano y decisiones NPC solo dan intenciones. No duplicar un sprint/giro privado para el jugador.

- Velocidad caminar M: `0.70/(0.60*1.1)` = **1,060606… m/s**; F **1,0 m/s**. Sprint M **3,8 m/s**, ciclo **.66 s**; F **3,55 m/s**, ciclo **.60 s**.

- Shift mantenido + desplazamiento corre; soltar desacelera; Shift solo conserva idle. `character_run` mantiene fase normalizada entre walk/run, blend `.24 s`, histéresis **1.68 entrar / 1.48 salir**. Contacto de apoyo run termina en fase `.32`, incluye fase aérea.

- Sprint masculino APROBADO por Nico: inclinación visible cadera-cuello **21.5–22.7°**, cabeza **14°**. Targets rest-global Hips/Spine/Chest/Neck **15/22/26/21°**. Se eliminó bias lateral de Root de **-47.9 mm** heredado del idle, conservando ondas de peso y Y/Z. Pies en carriles paralelos **±96 mm**; solver fija también plano de bisagra de rodilla. No regresar a torso erecto, piernas torcidas ni brazos exagerados.

- No usar crouch/bob fuerte para correr ni sacudir la cámara. Cámara sigue desplazamiento/cápsula suavizados, no vibración de huesos. Carrera usa translación Root y rotaciones de articulación, no mover Hips localmente ni escalar huesos.

- Femenino: pies más juntos y movimiento liderado por cadera, hombros moderados. Revisión de idle redujo separación tobillos **29→18 cm**; walk **21.7→13.4 cm**; cadera yaw+12%/roll+15% restringidos. No interpolar rotaciones de huesos a identidad: sus bases de reposo no son identidad.

- Giro: cabeza anticipa **32° máx.**, respuesta 18; pecho demora **.10 s**, cuerpo **.24 s**, respuesta 9. **Cabeza primero, después pecho, después cuerpo**, perceptible temporalmente.

- Mano interior al giro se retiene **.16 s**, libera **.16 s**; exterior adelanta **.065 m**. Paso de giro se activa a **28°**, tiempo × `.78`, elevación `.075 m`, arco `.055 m`, release `.14 s`. Pie de apoyo queda plantado; el otro pasa por ruta exterior natural, **nunca atraviesa la pierna de apoyo**.

- En correr holds más breves: apoyo `.065 s` / release `.055 s`; brazos `.09/.10 s`. No modificar los valores caminando al ajustar carrera.

- Variación suave por ciclo, no ruido nuevo por frame: amplitud brazo `.12`, fase `.027`, pie adelante `.012 m`, lateral `.007 m`, elevación `.008 m`, rodilla `1.1°`; arco de giro `.018 m`, yaw de pie `5°`, inclinación de giro `1.7°`. No volver a un loop perfectamente simétrico y robótico.

- Terreno: escalón máximo **.20 m**, detección `.38 m`, pendiente 45°, suavizado subir 11 / bajar 8, subida de pelvis máxima `.80 m/s`, clearance de pie `.025 m`, respuesta 18, descenso de pie máximo `.50 m/s`. Valores completos en `locomotion_settings.gd` y copia exacta del anexo.

- RunClearance privado en camisa M: elevación 20 mm / salida 10 mm en frente del dobladillo; pollera/vestido tienen su holgura. Blend 0 restaura forma fuente de walk. No rehornear la malla canónica para simular esta corrección.



## 7. Arma, grip, proyectil e impactos



- PPK pequeña basada en fuente autorizada `stuffimadeuseonlyifiask/weapons/PPK.blend`; referencia dimensional del usuario: largo 6.1 in, alto 3.8 in, ancho 1 in, cañón 3.3 in, ~19 oz, capacidad 6. Son referencias del arma; **munición actual de prueba ilimitada, sin recarga de seis implementada**.

- Grip: índice dentro guardamonte, pulgar lado opuesto, tres dedos simplificados contornean empuñadura. `weapon_grip` aplica delta/mapeo sobre manos privadas preservando Basis abierta/muñeca y escalas propias por sexo; no rehacer manos o invertir rig.

- Tecla 2 equipa/guarda por cintura trasera: **.90 s**, contacto de spawn/hide **.38 s**. Tecla 1 reservada para melee futuro. Sprint inhibido mientras saca/guarda o apunta.

- Mantener RMB con arma equipada: cámara sobre hombro y brazo extendido al **98.5%** de su alcance; cámara **1.20 m**, offset hombro`.43 m`, FOV52°. Esta pose fue aprobada como perfecta: no alterarla al retocar marcha. Soltar RMB vuelve a órbita normal. Sin camera shake.

- LMB: un tiro aceptado por clic, mínimo **.28 s**. Sonido `shotpistol.wav`. Chequeo de obstrucción cerca de boca del cañón.

- Arma equipada SIN apuntar: **brazo exactamente como caminar/sprint desarmado**, con grip cerrado y arma adjunta. `weapon_pose` con `aim_blend=reach_blend=0` no toca poses entrantes. Nunca reinstalar pose carry rígida.

- Retroceso `weapon_recoil`: resortes/amortiguadores angulares activos limitados, NO ragdoll libre de cuerpo. Impulso por tiro aceptado, variación ±9%; muñeca pico~8–10°, antebrazo~1.7–2°, retorno~`.25–.35 s`; límites15°/4.5°. No ruido aleatorio cada frame, no teleport de ángulos. Hombros/cámara intactos.

- Proyectil usa SOLO objeto `Projectile` de `weapons/projectile.blend`: **17v/30tri**, diámetro **9 mm**, largo **10.04 mm**, punta en origen, adelante **-Z**, cobre. Excluye las otras15 piezas PPK del archivo.

- `ppk_ballistics`: **244 m/s**, caída relativa a línea inicial **.003/.020/.090/.410 m** a **10/25/50/100 m**. Curva monótona calibrada a tabla de Nico, **no** simulación real validada de gravedad/drag/cero de mira. Más allá100 extrapola suave sin afirmar exactitud real. 95gr≈6.156g y alcance25–40m son metadatos, no límite de desaparición ni tabla HP. Expira a **5 s**; barrido curvo en segmentos **≤1 m** incluso frame largo. No volver a caja amarilla vieja de24m/s. A escala real puede ser difícil verlo.

- Muzzle flash: tres opciones **64×64**, 2 planos cruzados/4tri, additive unshaded/nearest, sin sombras, depth-test sí/depth-write no. Por tiro aceptado elige UNA al azar, roll0–360°, escala`.8–1.2` de base`.12 m`, duración`.03–.06 s`, mínimo un frame visible. No es animación obligatoria de tres frames. Ancla final interpolada tras recoil; effect interpolation OFF para no interpolar dos veces. Humo opcional no implementado.

- Impacto en NPC: superficie real de triángulos deformados finales, incluyendo grip/run; cápsula solo rechazo amplio, no punto final de herida. Oclusión del mundo tiene prioridad. Heridas recortadas y ancladas baricéntricamente; **24 por actor**. El snapshot actual del mundo restaura heridas al hacer streaming: la nota inicial «solo sesión» no describe esa integración posterior. Cambiar prenda puede invalidar su superficie/limpiar marcas según componente.

- Impactos de mundo usan materiales del punto golpeado, receptores débiles enlazados a colisiones y receptores de MultiMesh creados solo cuando se golpea. No desagrupar todos los props para poner marcas. Fuentes: `weapons/bullets impacts on materials`; no repintar esos atlas como daño NPC.



## 8. Daño, física y persistencia de vidas



- `character_life_store.gd`, servicio raíz `CharacterLives`, meta SceneTree **`character_lives`**. Registros son autoridad independiente de la representación 3D.

- Save **`user://character_lives_v1.json`**, versión1, escritura `.tmp`→rotación `.bak`→rename; fallback `.bak` si formato inválido. Guarda `{version, game_time, records, deaths, world_state}`. Autosave dirty cada **2 s físicos**. Snapshot solicitado antes de escribir. Solo records con `persistent=true`.

- Campos base: `id,persistent,health,injuries,bleeding,dead,downed,position:[x,y,z],heading,activity,pose,last_hit,updated_at,death`; extensiones `female,appearance,clothing,daily_life,knowledge,relationships` según consumidor. No sustituir schema existente por clases propuestas sin migración.

- Señales: `character_died(record/info)`, `state_changed(character_id)`, `snapshot_requested`, **`time_advanced(previous_seconds,current_seconds,reason)`**. `death`/lista`deaths` mantienen identidad, atribución, tiempo, ubicación, zona y causa.

- **100 HP**, **17 zonas**: HEAD,NECK,CHEST,ABDOMEN,PELVIS y LEFT_/RIGHT_ de UPPER_ARM,FOREARM,HAND,THIGH,CALF,FOOT. Lesiones izquierda/derecha separadas.

- HP por proyectil: HEAD=100, NECK=75, CHEST=45, ABDOMEN=35, PELVIS=30, UPPER_ARM=18, FOREARM=14, HAND=10, THIGH=22, CALF=16, FOOT=10. `armor_multiplier` futuro escala daño, **no fuerza**.

- Severidad `NONE/MINOR/MODERATE/SEVERE/CRITICAL`: umbrales de piernas 5/12/22/42, brazos 5/13/28/50, núcleo 8/18/35/65. Sangrado `NONE/LOW/MEDIUM/HIGH/VERY_HIGH`: tasas 0/.012/.04/.10/.23 HP por **segundo heredado LifeStore**; cabeza/cuello nivel 4, pecho/abdomen 3, muslo/pelvis 2, resto 1. Probabilidad periférica `.85`; núcleo siempre sangra con daño de proyectil.

- Multiplicadores por severidad: velocidad `[1,.94,.74,.40,.08]`; aceleración `[1,.96,.75,.48,.18]`; velocidad de apuntado `[1,.93,.70,.38,0]`; desviación° `[0,.25,.85,2.4,6]`. No confundir masa, balance, trauma y daño.

- Puede pararse si vivo, HP>8, ninguna pierna crítica y pelvis no crítica. Balance stumble≤`.48`, fall≤`.10`; tiempos tropiezo 1–2.5 s, recuperación balance`.38`, penalización impacto apoyo`.17` frente a swing`.07`; controles completos en `damage_settings.gd`.

- Sangrado de actores descargados se integra analíticamente; si muere durante salto se registra tiempo exacto del cruce de0 HP. Mundo no avanza por tiempo real mientras aplicación cerrada. Dormir no cura ni resucita.

- Caída total: **19 PhysicalBone3D** nativos para contacto, gravedad/impulso; masa M**75kg**, F**62kg**. Articulación resuelta UNA vez por `ragdoll_constraints.gd` con masa/inercia y contacto: 24 iteraciones, offsets originales y límites XYZ asimétricos en frame anatómico. Solver nativo setting48, restaurado al terminar último ragdoll de un espacio.

- **No combinar Generic6DOF/hinge/cone/pin adicionales con este solver** (dobles restricciones produjeron inestabilidad). No sustituir masa/contactos por pura proyección FK (dejaba cadáver de pie). Preservar centro de masa, velocidades derivadas y longitudes físicas/visuales constantes. Mezcla inicial de límites `.035–.22 s`.

- Límites° relevantes: Forearm X[-135,3],Y/Z±7; Shin X[-3,135],Y/Z±5; UpperArm X[-130,60],Y±55,Z±65; Thigh X[-100,50],Y±22,Z±35; Head/Neck X±28,Y±35,Z±22; Hand X±30,Y±20,Z±25; Foot X±35,Y±15,Z±18. Tabla completa exacta y masas por segmento en `damage_settings.gd` / anexo.

- Self-collision excluye solamente shells conectados próximos; antebrazo/mano contra torso/cabeza y miembros opuestos sí colisionan. Motores incluyen capa2; cadáver no es moving platform. Impulso aplicado a parte golpeada y a su velocidad local; pendientes se aplican después de proyectar. `Toes` mapea a `Foot`.

- Ganancia PPK **1.15 (~1.73 N·s)**, HP/ballística intactos. Impacto local debe verse sin lanzar cuerpo violentamente. Cadáver lento/apoyado reposa como ensamblaje; golpe/contacto lo despierta. No arrastre gomoso ni estiramiento.

- Al caer modelo `top_level`, interpolation OFF porque huesos ya son world/interpolados. Get-up parte de `last_world` visible proyectado, no proxies crudos; alineación`.65 s`, espalda3s/frente3.2s, estabilización`.85 s`; se recupera controlador si lesión permite. Animaciones de get-up de runtime, no sobreescribir clips fuente.

- **F8 es reset explícito de prototipo**, conserva ropa; no llamarlo al spawn, cargar, dormir o teclaR. R mueve posición. Muerte persistente normal nunca reinicia vida.



## 9. Mundo, arquitectura, streaming e interiores



- Mundo **950 m este-oeste × 1650 m norte-sur**. **42 manzanas visibles de 100×100 m**, **180 celdas técnicas de 100 m**; celda no equivale a manzana.

- Calles de **12 m** de ancho, superficie a **.05 m**. Vereda a **.15 m** = 10 cm por encima de la calle. Borde de vereda a fachada: **2.5 m**. Nico pidió huecos de 1.5–2.5 m; implementación densa mide **582 callejones de 2 m**.

- La planta actual conserva 220 IDs antiguos y tiene **785 edificios/67 tipos**, **104 entradas activas**. Infill no entrable deliberado; pisos altos cerrados. No volver a 220 edificios/58 tipos o a 24 cubos del mapa viejo como si fueran actuales.

- Centro, barrio rojo e industrial densos/deteriorados: rascacielos escalonados, fachadas cercanas, cables (1604 tramos), tachos, contenedores, rejas/rejillas, basura, grafiti y manchas. Casas con porches/patios/siluetas, no solo cubos aislados.

- Módulo arquitectónico heredado: horizontal3m, pared3×3×.20m, losa3×3×.30m. Ventanas/puertas con dimensiones propias y texturas separadas; vidrio transparente. No usar dibujo de ventana en tile de pared para sustituir abertura real.

- Mapas/fuentes de Nico: `MAPA GENERAL DE REFERENCIA.png`; `Documentacion/Diseno/Distribucion_interiores.txt`, `Mobiliario_por_espacio.txt`, `Streaming_mundo_abierto.txt`. Tipos/materiales/ubicaciones viven en `Sistema/Datos/Mundo`.

- Runtime activo mezcla **Mundo03** terreno/estructura/horizonte con detalles/interiores **Mundo04**, según `Sistema/Datos/Mundo/index.json`. El índice manda. `Modelos/Mundo` versión1 y horneados sellados se preservan.

- Near evalúa un círculo de **50 m** contra `content_bounds` de celda (incluye edificios propiedad de una celda vecina). Batches de 100 m pueden extenderse más allá del círculo; **no cortar triángulos a 50 m y dejar agujeros**. Mantener proxies baratos, niebla, histéresis/prefetch y pins de colisión esenciales.

- Config exacta `streaming.json`: `cell_size=100`, `full_radius=1`, `prefetch_radius=1`, `unload_radius=2`, `full_grace_seconds=1.5`, `unload_delay_seconds=5`, `prediction_seconds=2.5`, `max_prediction_m=350`, `max_concurrent_loads=3`, `frame_budget_ms=2.5`, `max_instantiations_per_frame=1`, `cache_entries=24`, `cache_seconds=8`, `soft_memory_mb=800`, `interior_prefetch_m=50`, `interior_release_m=60`, `interior_unload_delay=6`, `npc_spawn_m=50`, `npc_release_m=65`, `detail_radius_m=50`.

- Threaded ResourceLoader compartido/acotado; creación/SceneTree solo main thread. Headless Dummy usa **1 worker** por problema de RID de Godot4.4; render real hasta3. Hint de loader vacío acepta escenas/texturas. No solicitar originales de pintura ignorados por ResourceLoader; usar lectura directa existente.

- No hornear navegación/geometría cruda del pueblo en runtime. Instalar primero suelo/estructuras/colisiones, después soltar jugador. No prometer hard budget: primera construcción de actor medido excede frame budget.

- Entrar/salir edificio **caminando/empujando puerta**, sin E. `world_push_door` gira hoja brevemente; `world_interiors` transfiere con colisión lista. Salida trasera interior disponible; entrada exterior por puerta frontal. Solo **un interior físico activo**, colocado fuera del mapa en torno a `(0,-120,0)`.

- Guardar objetos ANTES de cambiar contexto, incluido soltar+salir mismo frame. Fallo al cargar libera control con retry acotado; no superponer transferencias. Puertas/colliders/techo evitan caer al vacío.

- Migración layout_v3 una vez mueve SOLO jugador vivo guardado al aire libre dentro de nueva estructura hacia calle vecina. Conserva muertos/guardados interiores, inventario y equipo. Nunca usar migración como reset de vida.

- Horarios comerciales nuevos bloquean entrada según tipo/hora; **salida nunca bloqueada por cierre**. Locks explícitos siguen prevaleciendo según `world_interiors.is_locked`.

- Utilería03: **38 muebles + 11 objetos pequeños**, 12–168tri. Utilería04: **8 props nuevos** desde10 láminas de Nico, 60–126tri, **51 materiales/posters**, **1716 instancias**, posters **638 exterior / 34 interior**, **13 acabados** residenciales/alojamiento. Fuentes y layouts exactos en documentación sellada; cabinas/cajas periódico decorativas, sin llamar/comprar periódico.

- Nuevos tiles de vereda de Nico: recortar sin grid/bordes negros, rotar/alinear cordones/esquinas, evitar separaciones/superposición. Fuente compacta `newsidewalktiles.png` reemplaza uso inicial de `sidewalkdetails.png`; no volver a atlas viejo por encontrarlo en escritorio.



## 10. Objetos, dinero, regalos y delitos existentes



- `world_small_objects.gd`; estado **`world_state.small_objects`** con `version,records,inventories,balances,events`. IDs conservan identidad durante WORLD→INVENTORY→drop/pago/robo/regalo/consumo. Dueño y `original_owner` permanecen rastreables. Saldo inicial protagonista **$100**.

- Muebles grandes batched. Máximo **16 RigidBody3D** de objetos seleccionados por contexto local. Se pueden tomar, soltar, pagar, consumir food/bottle o regalar; no es sistema de cajones buscables/cerraduras ni animación de mano recogiendo.

- `E`: objeto cercano / mostrador; detección~1.5m, tomar máximo 1.7 m+visibilidad, actor válido sin actividad bloqueada. Mostrador `<2.1m`. I inventario, G último objeto.

- `UNPAID` de tienda no es aún posesión pagada: pagar resta importe real y pasa a PAID/PURCHASED; salir sin pagar registra THEFT. Objetos propios/permisos se toman autorizado. Restricciones/`grants` por dato; no adquisición global automática de propiedad.

- `give(id,from,to)`: item debe estar realmente en inventario, no UNPAID; ambos actores válidos / no incapacitados, distancia≤2m, línea de visión. Quita del emisor, añade al receptor, cambia holder/owner y emite `gift_given`. Desde Sistema_social_01 valida allow_gift y el único consumidor social aplica preferencias/afinidad; funciona también desde el inventario antiguo.

- Necesidades_01 reemplazó el consumo instantáneo: use_item/use_last reserva el objeto y anima comer/beber; completar restaura HUNGER/THIRST y cambia BLADDER según la definición. Ver §18. Los IDs legacy food/bottle/cup se interpretan como BOXED_LUNCH/WATER_BOTTLE/COFFEE al consumirse.

- Robo: testigos físicos vivos a≤12m con raycast visible. `masked=true` guarda identidad `UNKNOWN_MASKED`; el sistema conoce autor para evento, no lo revela al testigo. `knowledge` persistente registra lo visto; delito lejano no alerta omnisciente a toda ciudad.

- Robo vigente: dueño testigo sin máscara reduce afinidad central en **`min(20,2+item_value/20)`**. El scalar anterior `record.relationships[offender]` se migra una vez a social_01.relationships y se retira del record. Procedencia en legacy_sources, sin dos autoridades. No se duplican reacciones si ambos IDs tenían un valor histórico.

- Timestamps de esos eventos son **LifeStore.game_time heredado**, no fecha calendárica nueva. Migrar/convertir mediante origen si social/job necesita calendario; no comparar directamente con `world_clock.now()`.



## 11. Vehículos actuales



- `world_vehicles.gd` + `vehicle_body.gd`; 10 tipos, uno de cada inicialmente; `Sistema/Datos/vehiculos_01.json`, modelos `Modelos/Vehiculos/01`, fuentes editables en `Blender`.

- Dimensiones nominales sin espejos/balizas (largo×ancho×alto, metros): sedan 4.30×1.68×1.39; coupe 4.44×1.76×1.29; sedan_large 5.47×1.98×1.45; sport 4.52×1.81×1.27; taxi/police 5.38×1.99×1.45; pickup 5.61×1.98×1.82; van 5.56×2.01×2.08; truck 6.45×2.22×3.15; ambulance 6.35×2.38×2.83. **780–892 triángulos** por modelo.

- Puertas separadas/pivotes: laterales abren **hacia afuera**, izquierda yaw negativo / derecha positivo. Portón pickup X positivo; van lateral desliza, traseras bisagra. No volver a signos de apertura hacia dentro.

- Entrada **2.15s**, salida **1.85s**: mano izquierda llega manija, pie derecho entra primero, cabeza baja antes del marco, caderas al asiento. `vehicle_driver_pose` rota rig temporal preservando offsets/longitudes; captura final para daño. Al salir restaura modificadores/cámara/equipo.

- V cerca lado del conductor con el auto detenido entra/sale; E puerta cercana; WASD acelerar/frenar/reversa/dirección; Space freno de mano; P pintura civil. Puertas no se manipulan a velocidad absoluta > .45 m/s. No teleport/F10/reset mientras ocupado.

- Spawn 50 m / release 70 m, **cap 12**; ocupado pinned. Guardar ID/posición/heading/color; parar si la siguiente zona no tiene colisión lista. Ruedas giran/delanteras orientan.

- Pintura de 7 colores por shader (blanco,negro,gris,rojo oscuro, azul oscuro, verde oscuro,marrón). Taxi/policía/ambulancia fijos. Atlas 256; vidrios/interior separados. Fuente pintada de Nico intacta.

- Conducción cinemática básica con gravedad/colisiones, no suspensión real, daño mecánico ni conductor/tráfico autónomo NPC. Clima suministra hooks de tráfico y faros del vehículo ocupado, no tráfico implementado.



## 12. Calendario, clima y sueño: valores vigentes



### Reloj único, persistencia y unidades temporales



- `world_time.gd`: raíz `WorldCalendar`, meta SceneTree **`world_calendar`**, deriva de `CharacterLives`. No crea otro reloj de físicas.

- Fórmula: `now = origin_calendar + (lives.game_time - origin_tick) * game_seconds_per_real_second`. Ratio **15.0**: **24 horas de juego = 96 minutos reales; un minuto de juego = 4 segundos reales**.

- **LifeStore.game_time conserva segundos heredados**, sin multiplicar por 15. Daño, físicas, animación, recoil y eventos antiguos mantienen esa unidad. Fechas, clima, timers nuevos y agendas usan segundos calendáricos de `now()`. Indicar la unidad al integrar otro sistema.

- Inicio de partida nueva o migración sin calendario: **lunes 14/03/1994, 08:00**, anclado al `origin_tick` actual. No modificar heridas/identidades para acomodar la fecha. No consultar hora del sistema operativo ni avanzar mientras la aplicación está cerrada.

- Calendario gregoriano con meses, años, weekdays y bisiestos, incluida la excepción de 2100. Weekday Godot: 0 domingo, 1 lunes, …, 6 sábado. Periodos: `LATE_NIGHT` 00–05, `DAWN` 05–07, `MORNING` 07–12, `MIDDAY` 12–14, `AFTERNOON` 14–18, `EVENING` 18–21, `NIGHT` 21–24. Son etiquetas fijas; el sol estacional se calcula aparte.

- Estado en **`world_state.time_environment_01`**: `version`, `origin_calendar`, `origin_tick`, `environment_at`, `wet_anchor`, `snow_anchor`, `energy`, `stamina`, `last_sleep`, `timers`, `due_events`, `bed_permissions`, `rentals`, `sleep_guards`, `weather`, `settings`, `calendar`, `current_time`, `current_weather`. `stamina` se añade cuando se configura su componente.

- `hold_time(owner, held)` usa un diccionario de dueños (`world_boot`, `bed_menu`, etc.), no un booleano que pueda cancelar otra pausa. Nunca multiplicar delta de animación/física por 15.

- `schedule(id, at, payload)` registra un plazo persistente. `timer_due` se entrega una vez por ID marcado `delivered`; `due_events` conserva el evento hasta `acknowledge(id)`. `cancel_timer` elimina y reconoce. `day_changed` anuncia la fecha final al cambiar de día: no asumir que emite cada fecha intermedia de un salto.

- APIs: `now()`, `date()`, `period()`, `energy()`, `business_open()`, `conditions_for_traffic()` y datos `weather/sun/season`. Señales: `advanced`, `day_changed`, `timer_due`, `sleep_completed`.



### Clima, estaciones y efectos



- `Sistema/Datos/tiempo_clima.json`: versión 1, seed **902104**, hemisferio **north**, **snow_enabled=false**. Clima templado septentrional. Configuración copiada al save: cambiar defaults no altera silenciosamente partidas anteriores. Para una partida existente usar `set_regional_options("south", false)` o la opción regional correspondiente.

- Estaciones meteorológicas: `WINTER` diciembre–febrero, `SPRING` marzo–mayo, `SUMMER` junio–agosto, `AUTUMN` septiembre–noviembre; sur invierte dos estaciones. Progreso por duración real del trimestre; blend final `smoothstep(.78,1,progress)`. Color/follaje varían continuamente por fracción anual.

- Sol: `sunrise=6.75-summer*1`, `sunset=19+summer*1.25`; `summer` es coseno anual con pico en fase `.468`. Verano aproximadamente **05:45/20:15**, invierno **07:45/17:45**. Amanecer/anochecer graduales.

- Temperatura base `14+summer*11`, amplitud diurna 5→2 según nubes, mínimo al alba y máximo a **15:30**; variación continua entre días, lluvia resta `2.3*intensidad`, especiales añaden offset. No sortear temperatura cada hora ni reiniciarla a medianoche.

- Estados: `CLEAR`, `PARTLY_CLOUDY`, `CLOUDY`, `OVERCAST`, `LIGHT_RAIN`, `RAIN`, `HEAVY_RAIN`, `THUNDERSTORM`, `FOG`, `WINDY`; opcionales `LIGHT_SNOW`, `SNOW`, `HEAVY_SNOW`. `VALUES` guarda nube/precipitación/viento/niebla en 0–1, no km/h. Tabla exacta en `world_weather_fronts.gd` y anexo.

- Frentes persistentes. Inicio `PARTLY_CLOUDY` durante 4 h. Etapas redondeadas a 15 min, mínimo 900 s; transición hasta **min(1800 s, 40% de etapa)** mediante smoothstep. Persistir `previous,target,start,end,queue,front,special,special_check,rng_state`; **rng_state es STRING** para no perder precisión int64 en JSON.

- Probabilidad base de frente de lluvia: primavera `.46`, verano `.20`, otoño `.51`, invierno `.49`. Secuencia normal: CLOUDY 3–7 h → OVERCAST 2–4 → LIGHT_RAIN 1–3 → RAIN 2–6 → posible lluvia fuerte/tormenta → LIGHT_RAIN 1–2 → OVERCAST 2–4 → CLOUDY 3–5 → PARTLY_CLOUDY 3–8. Buen tiempo incluye CLEAR 6–24 h y posible WINDY 2–5 h. No saltar de despejado a tormenta instantáneamente.

- Especiales: comprobación diaria con probabilidad `.075` si no hay uno vigente, duración **2–5 días**. `HEAT_WAVE` suma 5–8 °C, `COLD_SNAP` resta 4–7 °C; también `MULTI_DAY_RAIN`, `HEAVY_STORM`, `DENSE_MORNING_FOG`. Entrada/salida térmica suave de 6 h. Niebla matinal crece 03–05 y baja 08–10; frentes normales de niebla también pueden iniciarse en otoño/invierno entre 02–08.

- Humedad: minutos ambientales fijos con muestra central; fracción parcial desde ancla, sin deriva acumulada por frame. Ocho horas = 480 pasos ambientales, **no 480 pasos de IA/físicas por NPC**. Lluvia moja `1.4*intensidad/h`; secado según sol/nube/temperatura/viento. No secado instantáneo. Nieve opcional acumula, derrite y aporta agua.

- Desactivar nieve borra acumulación y convierte las etapas SNOW ya planificadas a lluvia. No basta ocultar partículas conservando nieve lógica.

- `world_atmosphere`: shaders de cielo, suelo húmedo, hojas y ventanas. Clona **solo materiales ambientales cargados en memoria**, sin modificar arte original. Cachés por **ruta fuente estable**, no instance ID temporal. Desconectar callables de resize/stream al salir: retener closures produjo avisos de limpieza.

- Lluvia local: máximo **420 CPUParticles**, nieve opcional **140**, área alrededor del jugador de unos 8 m. Bloqueada visualmente en interiores/auto/bajo techo según detección. Seis sonidos originales mono 22050 Hz: lluvia exterior, techo, interior, auto, viento y trueno. Backend headless no reproduce audio.

- Máximo **8 luces de calle locales** sin sombras, radio 14 m, energía 2.8. Encienden con ambiente `<.23`, apagan `>.31`; el hook lógico `weather.streetlights` usa `<.24`. Usar cabezales existentes de postes, no duplicar geometría. Ventanas según horario, ocupación y variación estable, hasta 24 bounds locales.

- Caducifolios cambian color y pierden copa; perennes mantienen copa. Ramas adicionales sencillas de 27 triángulos, conectadas al tronco, solo en memoria. No editar árboles fuente. Vehículo ocupado tiene dos faros ante oscuridad/lluvia.

- Hook de tráfico futuro: densidad `1.2` en horas `[7,8,9,17,18,19]`, `.35` antes de las 05 y `.75` resto; velocidad `1-rain*.18-snow*.25`; faros `streetlights || rain>.3`; seguimiento `1+rain*.4`. **No produce tráfico autónomo**.



### Horarios comerciales configurados



| Familia | Horas de juego |

|---|---|

| shop | 08–20 |

| bank / office / civic | 09–17; lunes–viernes `[1,2,3,4,5]` |

| restaurant | 08–23 |

| bar | 16–02, cruza medianoche |

| club | 20–05, cruza medianoche |

| factory / warehouse | 06–22 |

| workshop | 08–19 |

| dealership | 09–19 |



Sin horario configurado, la familia devuelve abierto; se aceptan `override_hours`. La salida del edificio nunca se bloquea por cierre.



### Energía y descanso del jugador



- Energía 0–100, inicial 100; baja **3 puntos por hora calendárica despierto**. Después de 16 h queda 52. Sin hambre/sed extra, pérdida de control, desmayo ni sueño forzado.

- Fatiga y multiplicadores de recuperación/capacidad: `RESTED` ≥50: `1/1`; `TIRED` 25–<50: `.93/1`; `VERY_TIRED` 10–<25: `.8/.9`; `EXHAUSTED` <10: `.65/.75`. No cambian geometría ni clips.

- `character_rest` del protagonista: stamina 100; sprint drena **2/s físicos**, resto recupera **12/s × factor**; capacidad `100*fatiga.capacity`. Factor de velocidad sprint `lerp(.78,1,smoothstep(0,12,stamina))`. Caminar conserva velocidad. Bostezo de 1 s cada 65 s físicos si energía <50, quieto, control habilitado, sin aim/daño y boca cerrada; muerte lo cancela.

- **E** a menos de **1.65 m horizontales** de cama abre menú de **1–8 horas enteras**, default 8, preview de fecha/hora/energía. Escape/Cancelar no salta tiempo. Dormir con 100 está permitido.

- Fórmula exacta: **`E_final = E_actual + (100-E_actual)*(horas/8)`**. 20 + 4 h → 60; ocho horas → 100. No +12.5 puntos fijos por hora, ni drenaje despierto durante salto. `last_sleep`: start/end/hours/before/after.

- Secuencia: MENU → LIE_DOWN **2.1 s** → fundido **.65 s** → SKIP → fundido **.65 s** → WAKE **1.75 s**. LifeStore avanza una vez por `horas*3600/15`, reason `sleep`. Clima, plazos y ubicaciones NPC se resuelven antes de mostrar. Se espera a representaciones requeridas bajo negro, con fallback acotado de **12 s**.

- Pose: sentarse al borde, pies por fuera, elevarlos sobre colchón y acostarse supino. Sin cruces/estiramiento. Se restauran cámara, colisión, controles, arma, animación, modificadores y blink al despertar.

- Casa propia **B0029**, entrada exterior **(14.5,.15,48.3)**, frente a autos cerca del inicio. También hay acceso mediante IDs en `world_state.owned_properties`.

- Hotel/motel: **$25** del saldo real por cama, hasta **11:00 del día siguiente, incluso llegando de mañana**. Alquiler vigente no se cobra de nuevo. No se permite elegir descanso que exceda vencimiento.

- Cama ajena requiere **permiso explícito**, no afinidad. Clave `building/bed` o `building/*`; expires<0 permanente, >now vigente; APIs grant/revoke. Celdas/camillas no se convierten en camas de descanso.

- Bloqueos: muerto, incapacitado, sangrado, combate reciente, amenaza cercana visible, persecución insegura o guard de misión. Reciente hit: **12 s físicos**; hostiles en grupo `hostile_to_player` a **18 m** con LOS; flag `world_state.unsafe_player_pursuit`. Delito lejano no bloquea. Guard con motivo/vencimiento, sin inventar sistema wanted completo.

- Cama ocupada: meta `sleep_bed = building/bed` del NPC impide reutilizarla. NPC sano con SLEEP en interior activo reserva cama libre y cierra ojos. Capturar transformaciones de daño **una sola vez, tras la pose final**: desconectar captura previa mientras duerme y restaurarla después. La doble captura creaba velocidades falsas que lanzaban el ragdoll.

- Impacto a NPC dormido: entrega pose acostada al daño/ragdoll existente, sin pasar a standing; `daily_life.sleep_interrupted_until=now+3600` segundos calendáricos. No borrar lesiones ni crear otro rig.



## 13. Agenda básica de los NPC actuales



- `pueblo.json.npc_descriptors`: **50 IDs de prueba**; `npc_female_001` preservado, protagonista separado. `world_npc_presence`: máximo **24 físicos**, spawn 50 m/release 65 m, un ensamblado por tick de `.25 s`; precarga ropa/pelo. No sortear apariencia al aparecer.

- `daily_life` inicial: `seed=abs(hash(id))`, `home`, `work`, `shift=seed%5`, `wake=6.4+(seed%17)/10`, `work_start=8.5+(seed%7)/4`, `bedtime=22.5+(seed%9)/4`, `space`, `activity`, `goal`, `path`, `path_index`, `base_route`. Otros campos: `previous_space`, `exit_pending`, `clothing_weather`, `default_clothing`, `auto_climate_clothes`, `sleep_interrupted_until`.

- Home: edificio entrable cercano house/villa/apartment, excluye safehouse. Work: shop/office/restaurant/warehouse/factory/workshop/club. Distancia al cuadrado ponderada por `.7+(abs(hash(id+buildingid))%100)/100`. Todavía no crea hogares familiares únicos, nombres civiles, plantilla laboral ni facciones. Varios NPC pueden compartir edificio.

- Evaluación cada `.6 s`; estados `SLEEP`, `WORK`, `HOME`, `OUTDOOR`, `SHELTER`, más `MEET` / `SOCIALIZE` de Sistema_social_01. No son scripts distintos por ciudadano.

- Turno nocturno `shift==3`: duerme 08–15 y trabaja 18–02, también fines de semana. Otros: sueño antes de wake/después de bedtime; trabajo 8 h desde work_start, pausa almuerzo `[12+(seed%5)*.15,13+(seed%5)*.15)`, sin trabajo sábado/domingo. `shift==4` no tiene trabajo fijo.

- Resguardo con lluvia>.55, o >.15 si seed%3==0. HOME a partir de `20+(seed%6)*.3` salvo nocturno. Prioridad vigente: sueño → trabajo → resguardo → encuentro social válido → hogar → salida. Es agenda básica con SOCIAL; no planner completo de cinco necesidades.

- Lejos: estado/posición lógica sin actor; un interior se representa por ID/entrada. Rutas exteriores heredadas tienen avance coarse, y durante salto fase analítica `now/240+seed%19` sobre base_route. No afirmar que ya existen eventos de comidas/sueldos.

- Cerca: motor compartido, NavigationServer y fallback AStar de calles; no caminos rectos que atraviesen casas. Eliminar nodos temporales de proyección. Repartir solicitudes `tick%8==seed%8`; llegada a puerta <.65 m cambia espacio y empuja hoja.

- Interior: representar solo NPC de active_id; usar markers `Actividad_`. Salida por front_exit/navegación. Heridos/muertos quedan bajo daño; no devolverlos sanos al trabajo.

- Salto de sueño: resolver intenciones, eliminar representaciones vivas bajo fundido con `free()` antes de recalcular posición final; `queue_free` tardío podía escribir snapshot viejo encima. Preservar muertos. `ready_after_skip` comprueba IDs requeridos según orden/cap del loader, no solo cantidad de actores cualquiera.

- Ropa climática al ensamblar: COLD<10 °C, HOT>24 °C, MILD resto. Frío usa abrigo/SWEATER/HOODIE de pools existentes. MILD restaura default_clothing; `auto_climate_clothes=false` deshabilita autoajuste individual. No cambiar ropa frente al jugador ni vestir automáticamente al protagonista.

- F8 es excepción de test: al faltar daily_life reconstruye `wake=7`, `work_start=9`, `bedtime=23` y sexo del descriptor. No usar esos defaults como migración de una vida normal.



## 14. Diseño de simulación completa todavía pendiente



Fuente íntegra: `Documentacion/Diseno/Idea_del_juego_NPCs_persistentes.txt`, también copiada en el anexo. Son decisiones de diseño aprobadas. SOCIAL, relaciones y duelo social tienen una implementación vigente en §15; el resto que este apartado declara pendiente no está entregado.



### Personas, población y hogares



- **LOS DATOS NPC SON LA PERSONA; EL MODELO 3D ES SU REPRESENTACIÓN TEMPORAL.** Mantener identidad al descargar, reaparecer, dormir o guardar/cargar. No reemplazos clonados.

- Reparto inicial de diseño: **50 personas únicas = 10 MAFIA_OLD_SCHOOL + 10 MAFIA_MODERN + 10 POLICE + 20 civiles**. Policía: **1 Chief, 2 Sergeants, 7 Officers**. Cada Mafia tiene un Boss; jerarquía Boss/Underboss/Capo-Lieutenant/Senior Member/Member.

- Old School: formal, conservadora, trajes y abrigos. Modern: camisas abiertas/chaquetas, algo desarreglada pero elegante; no matones aleatorios. Ropa y apariencia separadas de lógica de facción.

- Cada NPC requiere ID, nombre, apariencia/ropa, hogar, trabajo/rol, dinero, necesidades, relaciones, agenda, localización, inventario, estado vital e historia. Policía/mafia también comen, compran, duermen y tienen familia/vida privada; no quedan plantados en HQ.

- Cada hogar es instancia persistente única aunque repita plantilla arquitectónica. Objetos/nevera/posesiones persisten; no sustituir un hogar por nuevo ID al descargar geometría.

- Lejos: sin modelo, esqueleto, animación, ragdoll, colisión, navegación ni IA por frame. Resolver acciones/viajes por timestamps y elapsed time. Cerca representa la misma acción lógica. La animación no adjudica salario ni consume comida.

- Diseño exige histéresis y no desaparecer bajo observación/interacción; streaming por radio es la base, no prueba de todas las reglas perceptuales finales.



### Necesidades, comida y economía



- Cinco necesidades: **HUNGER, ENERGY, HYGIENE, SOCIAL, FUN**, rango propuesto **0–100**, decaimiento por tiempo transcurrido. Valores bajos motivan comer/dormir/ducharse/socializar/ocio. Tasas finales para necesidades pendientes no están fijadas; no inventarlas como recuerdos.

- SOCIAL es satisfacción de interacción reciente, **no afinidad**. La energía del protagonista ya implementada no equivale al NeedSystem de cinco necesidades por NPC.

- Nevera con ítems/categorías reales, no porcentaje `food_level`. Ejemplo documental: bread=3, milk=1, meat=2, vegetables=3, prepared_meal=2, drinks=4. **Ejemplo**, no inventarios actuales de hogares.

- Comer consume ítem, mejora HUNGER y gasta tiempo. Falta de comida crea BUY_GROCERIES. Comprar descuenta dinero y añade alimentos a la nevera. NPC lejos realiza la misma transacción; cerca se puede representar llegada/compra/vuelta.

- Dinero persistente por NPC: salarios, compras, alimentos, ingresos de facción y gastos futuros. No declarar que cobró sin modificar balance. El saldo inicial $100 del jugador no es un sistema salarial.



### Empleo y planificación



- Jobs reutilizables por datos: `job_id`, `workplace`, `schedule`, `wage`, `progression`, `experience`, `possible_activities`, `clothing_requirement`. Deben servir a NPC y jugador; trabajos **LEGAL/ILLEGAL**, repetibles con progresión, sin campaña obligatoria.

- Reparto civil sugerido, ajustable, suma 20: **3 retail/supermercado; 1 bartender; 1 cook; 1 waiter; 2 taxi; 2 mechanics; 2 construction; 1 delivery; 1 sanitation; 1 doctor; 1 nurse; 2 office; 1 security; 1 unemployed/flexible**.

- Agenda combina tareas fijas (trabajo, guardia, citas, sueño) y flexibles (comida, compras, ducha, social, ocio), según necesidades, dinero, comida, empleo, relaciones, facción y weekday. Ni rutina idéntica ni azar incoherente.

- Ejemplo del documento: 07 wake, 07:20 eat, 07:45 shower, 08 leave, 08:30 work, 13 lunch, 17 leave, 17:30 groceries, 18 home, 20 leisure, 23:30 sleep. **No es horario universal hardcodeado**.

- EAT, SLEEP, WORK, SHOP, SHOWER, TRAVEL, SOCIALIZE, LEISURE y FACTION_DUTY deben tener resultado lógico sin clips. WORK incluye progreso, experiencia, pago y tiempo; un marker o la ropa de oficio no lo implementan.

- Orden acordado para el núcleo completo: **primero UN civil** que despierta, come/consume nevera, se ducha, viaja, trabaja/cobra, detecta falta de comida, compra/paga/rellena nevera, vuelve y duerme. Probarlo cargado/descargado, save/load y saltos. Solo después ampliar al reparto final. Los 50 descriptores de prueba actuales no sustituyen esa validación pendiente.



### Muerte, funerales, duelo y sucesión



- Muerte permanente; historial se conserva. 50 vivos menos uno = **49 vivos + 1 muerto histórico**. Sin autorefill, clones ni inmigración automática; población nueva requiere futuro sistema aparte.

- Guardar día/hora/lugar/causa/facción/rango/oficio al morir; cancelar tareas normales. Salud/death ya persisten; Sistema_social_01 cancela encuentros y genera duelo en allegados. Consecuencias laborales y los campos de facción/rango/oficio siguen pendientes.

- Trabajador muerto → puesto VACANT. Si vivía solo → hogar VACANT sin borrar posesiones ni asignar nuevo residente. Convivientes siguen allí. Futuro empleo de una persona existente apta, no reemplazo generado inmediatamente.

- Funeral **al siguiente día de juego**, cementerio por defecto. El ejemplo dice por la tarde: no fija una hora exacta. Asistentes EXISTENTES por familia, pareja, amistad, colegas, vecinos, facción, rango u obligación institucional. No extras aleatorios. Lejos resuelve travel/attend/leave; cerca muestra esas personas. Sin cinemática obligatoria.

- Tumba persistente con ID del difunto, nombre, fecha y lugar: cementerio como historial, todavía pendiente. El documento original no fijó días de GRIEF. **Sistema_social_01 adopta 3 días** de duelo social en vínculos fuertes y afecta el humor de charla; efectos sobre FUN/ocio/tiempo en casa quedan para esos sistemas futuros.

- Boss muere → Underboss existente como Acting Boss → funeral → Boss formal. Ascender otros existentes aptos. Si sucesor no disponible, siguiente rango vivo apto. Arquitectura futura puede considerar lealtad, reputación, experiencia y apoyo. No generar sustituto.

- Chief muere → Sergeant apto de prioridad como Acting Chief → Chief; Officer apto puede ascender a Sergeant. Ascenso afecta autoridad, ingresos, responsabilidades y agenda, no solo título.

- Saltos de horas/días resuelven comidas, pagos, plazos, funerales, sucesión y duelo por eventos/timestamps, sin días de físicas. Integrar a `CharacterLives.character_died` y `world_clock`; no afirmar que sus consumidores futuros ya existen.



## 15. Sistema social — implementación vigente 01



Implementado en la escena normal `Sistema/Escenas/caminata.tscn`, sobre las 50 personas persistentes actuales. La fuente completa de Nico está en `Documento de Nico.txt`. No se generaron NPC adicionales ni se cambiaron modelos, ropa, caras, peinados, rigs o clips aprobados.



### Probar



Abrir `Caminar con protagonista.cmd`, acercarse mirando a un NPC disponible y pulsar **E**. El menú ofrece **Hablar** y, si hay un objeto regalable en el inventario, **Dar un regalo**. Elegir el objeto por nombre. **E/Esc** vuelve o cierra; interrumpir antes del final no concede afinidad. La charla dura dos minutos del calendario, aproximadamente ocho segundos reales a la escala actual 15:1. El mundo sigue funcionando durante el menú y la charla.



Los NPC no conversan mientras trabajan, duermen, se resguardan, están incapacitados, sangrando o con salud <=50. Tampoco hablan con quien rechazan fuertemente o recuerdan que los atacó. Un horario obligatorio que empieza durante el menú lo cierra. Se requieren distancia <=1,9 m y línea de visión. Para seleccionar con E, el NPC debe estar delante de la cámara; no se abre desde mapa, cámara aérea, vehículo, inventario, armario ni apuntado. Desde Necesidades_01, E usa vehículo → servicio de necesidades cercano → cama → NPC → objeto/mostrador; un objeto recogible suprime el servicio de necesidades para poder retirarlo. Ver §18. Las puertas de edificios siguen abriéndose al empujarlas.



El menú usa una cámara temporal que muestra a ambas personas, busca espacio a un lado sin atravesar paredes y restaura la cámara, control, órbita y ratón anteriores. No cambia los ajustes de apuntado. No permite equipar/disparar ni abrir otro visor mientras está abierto. Las opciones largas de regalos tienen scroll.



### Datos y arquitectura



- `Sistema/Scripts/relationship_system.gd`: relaciones, preferencias, necesidad social, resultados, recuerdos y consultas. Es una clase de datos; no necesita modelos 3D.

- `world_social.gd`: integración con personas reales, inventario, delitos/daño, calendario y planes de encuentro. Una instancia en `pueblo_caminata.gd`, para ambos sexos y protagonista.

- `social_interaction_ui.gd`: menú contextual. `register_action(id, valid, execute)` y la lista `actions` en la configuración permiten ampliar opciones sin reconstruirlo.

- `character_social_pose.gd`: asentimiento, orientación de cabeza, gesto leve de torso/antebrazo y alternancia de la textura de boca al hablar. Antes del modificador de daño; conserva la captura final única, longitud de huesos y rest transforms. Cede ante daño y sueño. El parpadeo existente conserva su control.

- `Sistema/Datos/social.json`: valores de esta primera versión, no cifras atribuidas retrospectivamente al documento de Nico.



Única fuente de verdad: `CharacterLives.world_state.social_01`. Se guarda en el archivo de vidas existente y su backup atómico. No se creó otro sistema de saves. Los vínculos siguen guardados si alguien se descarga o muere. F8 de prueba no borra relaciones ni fabrica una persona nueva.



Esquema versión 1:



```text

social_01:

  version, people, relationships, meetings, next_tick, contacts_seeded, history

people[id]:

  social, social_at, personality, liked_item_tags, disliked_item_tags,

  has_met_player, first_met_player_at, next_meeting_at, grief, display_name?

relationships[JSON.stringify([menor_id, mayor_id])]:

  npc_a_id, npc_b_id, affinity, familiarity, relationship_tags,

  last_interaction_time, positive_interactions, negative_interactions,

  memories, last_talk_reward, last_gift_reward, reward_day, positive_today,

  legacy_sources? (auditoría de migración, no otra afinidad activa)

meetings[pair_key]:

  id, a, b, position, routes, created, arrive_at, deadline,

  status, start, finish

```



Los índices `links` y `active_by_id` se reconstruyen al cargar. No se guardan nodos, RIDs ni instancias de modelos. Un par tiene una afinidad compartida; la clave canónica evita duplicados A/B y B/A. Los recuerdos incluyen `subject` para diferenciar quién recibió un regalo o sufrió un ataque.



Todos los timestamps sociales están en **segundos de calendario**, usando `world_clock.now()`. Los eventos de daño/robo heredados se convierten con `origin_calendar + (legacy_time - origin_tick) * game_seconds_per_real_second`. No se multiplican delta de animación ni físicas por 15.



### Valores vigentes



| Concepto | Valor / regla |

|---|---|

| Afinidad | -100..100. Bandas: <=-76 odio intenso; <=-41 fuerte rechazo; <-10 desagrado; <=10 neutral; <=40 positiva; <=70 amistad; <=90 amistad cercana; >90 vínculo muy estrecho. |

| Familiaridad | 0..100, independiente de afinidad. Una charla significativa suma 4; un regalo fuera del cooldown suma 2. |

| SOCIAL (solo NPC desde Necesidades_01) | 0..100. Inicial `35 + abs(hash(id)) % 46`. Decae 3 puntos/hora, analíticamente desde `social_at`. Bajo cuando <=35. No cambia afinidad. |

| Personalidad | `abs(hash(id)) % 3 - 1`: reservada, intermedia, cálida. Se guarda, no se sortea al aparecer. |

| TALK | 120 s calendario; +12 SOCIAL a participantes NPC al finalizar (el protagonista no tiene SOCIAL desde Necesidades_01). Afinidad -1, 0, +1 o +2 según resultado. |

| Antispam TALK | 21.600 s (6 h) por pareja para otro resultado significativo. Repetir puede satisfacer SOCIAL, pero no suma afinidad ni familiaridad. |

| Antispam GIFT | 86.400 s (24 h) por pareja. Transferir sigue siendo real, pero no repite el cambio de afinidad/familiaridad dentro del plazo. |

| Ganancia positiva total | Máximo +6 afinidad por pareja/día calendario, compartido por charlas/regalos/encuentros. Las pérdidas no se limitan a ese presupuesto. |

| Regalo | Preferido +4; neutral 0; rechazado -3. Si ya hay desagrado, no da bonificación positiva. Si coincide gusto y disgusto, prevalece disgusto. Receptor +6 SOCIAL. |

| Planificación | Cada 300 s calendario (20 s reales). No 50 cerebros por frame. Un encuentro máximo por persona; búsqueda por índice. |

| Encuentro NPC | Viaje por calles existentes, luego 1.800 s de charla. Completar da TALK más +28 SOCIAL a ambos (=40 total). Cooldown siguiente encuentro: 14.400 s (4 h). |

| Viaje lógico | Ruta sobre grafo de calles; duración `max(300, ceil(distancia_ruta * 1.6 * 15 / 300) * 300)`. Posición interpolada por longitud de ruta. |

| Llegada física | Ambos NPC a <=0,7 m de su posición asignada y con línea de visión. Dos posiciones separadas 1,3 m. No recompensa si solo llegó uno. |

| Plazo de llegada | `arrive_at + 1800`; cancelar si no llegan. Trabajo, sueño, lluvia/resguardo, herida, muerte o conversación del jugador interrumpen. |

| Recuerdos | Máximo 12 por pareja; se reemplaza el mismo tipo/sujeto. Historial diagnóstico limitado a 120 eventos. |

| Duelo social | Solo afinidad >=71, o familia/pareja con afinidad >10. Tres días calendario. Un registro por fallecido/superviviente; no resucita ni genera nuevos NPC. |



Resultado TALK: personalidad; -1 si SOCIAL>85 / +0,5 si SOCIAL<35; -1 con afinidad<-10; -1 con discusión reciente; -0,5 con duelo; posible lectura futura `reputation_willingness` acotada -1..1. Si score<-0,5: -1; si score==0 y hash determinista del par/contador da 0 de 3: 0; si score<1: +1; resto +2. El cooldown se fija también si la charla significativa fue neutral o negativa. Primera interacción real marca `has_met_player` y fecha; abrir el menú solamente no lo hace.



Recuerdos: conversación positiva 1 día; discusión 6 h; regalo preferido 3 días; regalo rechazado 1 día; robo 3 días; ataque identificado 7 días; pérdida de allegado/duelo 3 días. Se podan por fecha, también durante saltos al dormir.



Preferencias: FOOD, DRINK, BOOK, LUXURY, PRACTICAL, TOBACCO. Cada persona obtiene un gusto y un disgusto distintos; datos editables/persistentes. Mapa de objetos: botella DRINK; libro BOOK; radio PRACTICAL+ELECTRONIC; billetera/taza/herramienta PRACTICAL; cigarrillos TOBACCO; comida FOOD; reloj LUXURY. Llaves y documentos no son regalos de esta versión. Mercadería UNPAID no se regala. El inventario real debe tener `state=INVENTORY`, `holder=protagonist`; se usa la transacción existente, no se crea una copia.



### Agenda, sociedad y consecuencias



Se conservan los 50 IDs y agendas existentes. Se inicializan hasta dos vecinos cercanos por persona (hogares a <140 m) y hasta cuatro compañeros del mismo lugar de trabajo, excluyendo desempleados `shift=4`. Las selecciones recíprocas pueden dar más de ese número de contactos finales a una persona. Familiaridad inicial 12..28 y afinidad -8..8: compartir trabajo/barrio no da amistad automática.



No se inventaron hogares familiares, parejas, facciones ni nuevos civiles. Las etiquetas FAMILY, ROMANTIC_PARTNER, FRIEND, COWORKER, NEIGHBOR, FACTION_ASSOCIATE y DISLIKE coexisten. FRIEND se deriva de afinidad >=41 y DISLIKE de <-10 al ajustar el vínculo; parentesco/pareja/facción no se borran por bajar afinidad. Nombres de presentación se conservan en datos y respetan `record.display_name` o `record.name` si existen.



Con SOCIAL bajo, se elige entre contactos disponibles: pareja (600), familia (500), amistad cercana (400), amistad (300), compañero (200), vecino (100), más afinidad. Afinidad <=-11 excluye invitación voluntaria. Respeta trabajo/sueño/resguardo y no elige al protagonista como destino de una visita autónoma. La primera versión representa encuentros en el recorrido de vereda del contacto; no concede entrada a hogares ni permisos de cama por ser amigo.



Cerca, los mismos dos actores viajan con el motor compartido y se orientan para conversar. Lejos, el evento avanza sin crear skeletons, animaciones, navegación física ni clones. Dormir procesa los ticks en orden y resuelve encuentros analíticamente; las representaciones se actualizan al despertar mediante la infraestructura previa. Durante un salto largo, los frentes climáticos se reproducen en una copia para evaluar el resguardo de cada momento sin consumir otra vez el RNG real. Al terminar, se restaura también `activity.use_route` lógico para que un NPC descargado no quede detenido por su última charla física.



Regalar desde el inventario anterior también pasa por el mismo filtro/transacción y señal social, una sola vez. Robo: solo el dueño testigo que identificó al autor recibe `-min(20, 2+valor/20)`, preservando la regla anterior y sin informar a toda la ciudad. Los scalars viejos `record.relationships` se migran una vez al registro central, conservando procedencia en `legacy_sources` y retirando la copia independiente. Si había dos reacciones históricas sobre el mismo par se conserva la más negativa, no se suman dos veces.



`CharacterLives.harm_committed` se emite desde el daño real y se consume sin alterar fuerzas, salud, poses o ragdoll. Un proyectil identificado añade -30 afinidad y recuerdo de ataque; golpes accidentales del motor no se convierten en agresión social. Si el atacante está marcado `masked`, no se revela su identidad al vínculo personal; queda `unknown_attack_at`. Muerte cancela el encuentro y registra duelo de allegados vivos.



### Preparado, sin declarar sistemas inexistentes



`funeral_candidates(id)` devuelve personas vivas existentes, tags, afinidad, motivo personal y necesidad de consultar obligación de facción por separado. No organiza todavía un funeral, sucesión, tumbas ni despidos. El duelo afecta humor de charla; FUN/HYGIENE no se implementaron; HUNGER existe solo para el protagonista en Necesidades_01 y no se altera por duelo social.



`reputation_context(from,to)` es una lectura inyectable para futura reputación. No se creó una reputación policial ni se fusiona afinidad con facción. ROMANTIC_PARTNER persiste como tag; TALK nunca crea una pareja. Romance, pedir favores, invitar a casa y disculparse siguen siendo futuras acciones. No se asignaron empleos económicos, sueldos o familias al reparto de prueba.



### Verificación



- `verificar_relaciones.gd`: 45 verificaciones de bandas, datos compartidos, preferencias, antispam, recuerdos, duelo, consultas y serialización.

- `verificar_mundo.gd`: flujo real E/TALK/GIFT, objeto transferido, UI/input, pared, daño, migración, unload/respawn, encuentro físico/lógico, muerte, save/load y salto real de ocho horas. Resultado en `mundo_verificado.json`.

- Regresión de calendario/clima/camas: 32 verificaciones, todas correctas. El aviso conocido de ObjectDB al cerrar ese fixture anterior sigue apareciendo; no apareció en las pruebas sociales.

- `auditar_arte.py`: 1.981 archivos de arte sin cambios respecto a las huellas previas.

- `Conversacion.png`: captura real del juego, sin montaje.



Los tests se ejecutan siempre con `-- --damage-test`, con saves aislados dentro de esta carpeta. El guardado real de Nico no se usó ni se modificó. `Antes/` conserva los scripts y documentación previos a la implementación. El proyecto activo no es un repositorio Git; se conserva un manifiesto SHA-256 de entrega para seguimiento.





## 16. Controles vigentes y excepciones — UI_01 / presentación UI_02

**Esta sección y §22 sustituyen los atajos históricos de entregas anteriores.** No restablecer R teleport, Tab aéreo, N necesidades, H/J justicia, V vehículo, G soltar, P pintura ni F comparación de brazos.

| Control | Comportamiento |
|---|---|
| WASD / flechas | Caminar relativo a cámara; WASD conduce. |
| Shift mantenido | Sprint compartido existente; sin cambiar rig/clip ni poses. |
| Ratón / rueda | Cámara; zoom normal2.2–7.5m, pasos.4m; sobre mapa zoom1–6. |
| 2 | Sacar/guardar PPK. Bloqueado en vehículo. |
| RMB mantenido / LMB | Apuntar sobre hombro / disparar solo al apuntar. |
| R | Recarga:6 en cargador, reserva inicial36,1.4s; ver §22. |
| E | Único contexto por cámara/distancia/LOS: objeto, NPC, fixture/cama/puerta, auto, rendición. Confirma en menús. |
| Caminar contra puerta | Empujar/entrar/salir sigue disponible; E también. |
| E vehículo | En conductor: entrar o puerta en menú pequeño; sentado: bajar con comprobaciones originales. |
| Espacio en vehículo | Freno de mano. Espacio a pie sigue libre. |
| E ante policía | Rendirse con cargos/búsqueda; E rendido cancela; visita requiere policía en puerta real. |
| Tab | Player Menu, empieza en STATUS; Tab abierto cierra. |
| I / M | El mismo Player Menu en INVENTORY / MAP. También funcionan sentado. |
| A / D dentro del menú | Pestaña anterior/siguiente; dentro de sueño elige1–8 horas. |
| W / S | Navegar listas; expediente desplaza texto. E confirma; mouse también. |
| Esc | Submenú→padre; menú raíz→juego; juego→Pausa. Consumo se cancela sin perder objeto. |

Tab/I/M congelan SceneTree, calendario, NPC, física y recarga. Los menús contextuales/conversación bloquean input del jugador y mantienen el mundo activo. No abrir menús encima de tránsito, sueño, consumo ni custodia. La resolución judicial se confirma con E; Esc no evade condena. Inventario central contiene acciones sobre objetos concretos; para consumir guardar la PPK primero. Dar requiere≤2m, objeto válido y NPC disponible. Pausa ofrece controles/guardado/salida; fallo de guardado conserva el juego abierto.

Herramientas explícitas de desarrollo existentes, fuera de los controles normales: F2 conjuntos originales de npc_female_001; F3/F4 pelo/color del protagonista; F5/F6 pelo/color de NPC femenina cargada; F7 sprint de esa NPC; F8 reset EXPLÍCITO de salud que mantiene historia/ropa; F9 streaming; F10 visor de ropa; F11 inspector lógico, RePág/AvPág seleccionan. En vehículo se bloquean F2–F8/F10 además de2. F2/F5/F6/F7 requieren NPC física. 1/3/4/5, C, Q/F y Espacio a pie quedan disponibles para sistemas futuros; no hay nuevo melee/salto/agacharse.

Visores independientes conservan sus teclas propias; no trasladarlas al juego por inercia. `Ver peinados.cmd`, `Ver expresiones.cmd`, `Ver ropa femenina.cmd`, `Ver biblioteca de ropa.cmd`, `Ver edificio modular.cmd` son herramientas independientes. Todas las pruebas aisladas deben terminar en `-- --damage-test`.

## 17. Evidencia, límites conocidos y continuidad



- Última entrega funcional: `Documentacion/Sistema_social_01/{LEEME.md,entregado.json,huellas_entrega.json}`. Captura real `Conversacion.png`. Pruebas de datos y mundo en `relaciones_verificadas.json` / `mundo_verificado.json`; regresión de descanso/calendario en `regresion_tiempo.log`. §15 registra valores y límites. **1.981 archivos de arte** siguen coincidiendo con sus hashes anteriores.

- Entrega anterior: `Documentacion/Tiempo_clima_sueno_01/{LEEME.md,entregado.json,huellas_entrega.json}`. Catálogo **`Tiempo clima y descanso.html`**, capturas `Vistas/Tiempo_clima_sueno_01`; video `Descansar.mp4`, **5.5 s / 165 frames / 30 FPS**. Sus **195 comprobaciones** fueron 71 de calendario/clima/energía/acceso, 32 de integración y 92 de vehículos. No atribuir esas pruebas antiguas al social ni afirmar certificación para 1.000 NPC.

- Aviso pendiente: algunas ejecuciones automáticas de integración/recarga muestran `ObjectDB instances leaked at exit`; las pruebas funcionales pasan, pero no se afirmó cierre limpio en todas. Logs conservados. Una corrida limpia no borra esa observación.

- Primera construcción de NPC puede exceder 2.5 ms. Los topes de carga no certifican FPS. Ragdoll/impulsos no equivalen a Euphoria completo; no simulación real de tela. Nieve off por defecto, humo de arma sin implementar.

- Documentación de entregas protegidas: `Biblioteca_ropa_01`, `Locomocion_compartida`, `Sprint_inclinacion_alineacion`, `Ragdoll_peso_y_articulaciones`, `Dano_y_reacciones`, `Movimiento_con_PPK`, `Retroceso_PPK`, `Proyectil_PPK`, `Pueblo_streaming_03`, `Utileria_urbana_04`, `Vehiculos_01`. Consultar manifiestos antes de modificar arte aprobado.

- AGENTS.md acumula historia. Quedaron superadas notas de proyectil 24 m/s, heridas solo de sesión, dos cuadras/24 edificios, ropa 256, pelo de una primera revisión, «sin ropa femenina» o «sin horarios». Un encabezado CURRENT antiguo no prevalece frente a una entrega posterior.

- **Fuentes íntegras** en `Documentacion/Contexto_proyecto_2026_09_07/Fuentes`: diseño NPC, social, daño, vestuario/oficios, streaming, interiores, mobiliario y tiempo; snapshot de AGENTS previo y tuning clave. **`referencias_exactas.json`** preserva orígenes/tamaños/SHA256, catálogo completo de 80 referencias de ropa y colores, 92 conjuntos/alias/pools, 50 descriptores NPC y parámetros de streaming/clima/vehículos.

- Las fuentes de este anexo son snapshots fechados, no restauradores automáticos sobre ediciones posteriores. El script `guardar_fuentes.py` se niega a sobrescribir una copia cuyo contenido cambió.

- La actualización inicial de continuidad fue solo documental; su AGENTS original está en el anexo. La entrega posterior Sistema_social_01 sí implementó el social y ejecutó QA aislado con `--damage-test`; sus respaldos están en `Documentacion/Sistema_social_01/Antes`. No se usó el guardado real de Nico ni se regeneró arte.



### Protocolo tras compactar o ante incertidumbre



1. Leer **PROJECT_CONTEXT.md** en el proyecto activo. Si el cwd es fantasygamegodot, seguir su redirección.

2. Identificar la instrucción más reciente y sus límites; consultar sección y fuente exacta relevante.

3. Comprobar archivos guardados por Nico antes de asumir o reconstruir. No confundir snapshot con fuente editable actual.

4. Reutilizar servicios, IDs, unidades y rigs. No crear duplicados de personas ni cambiar huesos para adaptar una animación.

5. Actualizar aquí valores, decisiones, estado implementado/pendiente y evidencia. Preservar fuentes completas. Si una fuente cambió —como ocurrió con social system.txt— volver a leerla, no confiar en memoria desactualizada.





## 18. Necesidades del protagonista y consumibles — Necesidades_01





Todo se limita a 0..100. `WorldCalendar` mantiene ENERGY en `world_state.time_environment_01.energy`. `player_needs.gd` es un servicio único de SceneTree, meta `player_needs`, que mantiene `world_state.player_needs_01`. No hay una segunda energía ni reloj independiente.



El nuevo estado contiene `version`, HUNGER, THIRST, BLADDER, `at` (segundos de calendario), `notified`, `weather_minute`, `weather_multiplier`, `weather_anchor` y `purchase_serial` cuando se compra. `purchase_serial` es identidad de transacciones, no otra necesidad. Una partida anterior conserva energía, inventario, salud, identidades y relaciones; los tres valores nuevos empiezan en100.



| Necesidad | Descenso | Tiempo 100→0 sin reposición |

|---|---|---|

| ENERGY | 3/h de calendario despierto; no se drena al dormir | 33⅓ h despierto |

| HUNGER | 5/h de calendario | 20 h |

| THIRST | 100/14 por hora × factor térmico | 14 h en clima normal |

| BLADDER | 8/h de calendario; beber reduce además según la bebida | 12½ h sin beber |



La escala existente es15 segundos de juego por segundo real. Temperatura<8°C: sed×.95; >=28°C: ×1.10; `HEAT_WAVE`: ×1.25, con prioridad sobre temperatura. No se añade necesidad de temperatura. El replay privado del clima integra minutos fijos, sin consumir el RNG del calendario; ticks normales y saltos producen el mismo drenaje.



Bandas ENERGY: <10 EXHAUSTED, <25 VERY_TIRED, <50 TIRED, <75 NORMAL, >=75 RESTED. HUNGER: EXTREMELY_HUNGRY, VERY_HUNGRY, HUNGRY, NORMAL, FULL con esos mismos cortes. THIRST: EXTREMELY_THIRSTY, VERY_THIRSTY, THIRSTY, NORMAL, HYDRATED. BLADDER: 100 NO_NEED, >=60 NORMAL, >=30 NEEDS_BATHROOM, >=10 URGENT, <10 VERY_URGENT.



## Efectos moderados y sueño



ENERGY mantiene recuperación de stamina .93/.80/.65 para <50/<25/<10, y capacidad1/.90/.75. HUNGER y THIRST usan recuperación .95/.85/.70, y capacidad1/.93/.80 para esos cortes. Se toma **el menor factor** entre necesidades, sin multiplicarlos: recuperación nunca menor que .65, capacidad nunca menor que .75. Sprint conserva drenaje2/s reales y recuperación12/s×factor; solo al agotarse la stamina baja gradualmente la velocidad hasta .78. Caminar y controles no se alteran.



Bostezos existentes y gestos idle temporales: inclinación breve de cabeza, mano hacia abdomen o pequeño gesto de urgencia. Duración2.4s, separación65s reales;40s si ENERGY<10. Solo quieto, con controles, sin arma equipada ni daño; movimiento, aim o consumo los cancelan. No se cambian clips, mallas o rest poses. Avisos al bajar de25 energía/hambre/sed y20 vejiga, con cooldown1800s de calendario por necesidad.



Se conserva dormir1–8h en una cama válida y sus permisos/alquiler: `E_final = clamp(E + (100-E)*(horas/8),0,100)`. Ejemplos20+4h=60,70+4h=85,8h=100. HUNGER/THIRST/BLADDER siguen descendiendo durante el salto. El baño tarda45s de calendario (3s reales), con fundido; al completar BLADDER=100. Daño/interrupción no concede la recuperación.



Nunca causan daño, muerte, colapso, sueño automático, accidentes de vejiga ni pérdida involuntaria de control al conducir/combatir. No hay higiene, diversión, confort, felicidad ni temperatura del protagonista. **SOCIAL fue retirado solo del protagonista:** migración elimina `social`/`social_at` de `social_01.people.protagonist` y `satisfy(protagonist,...)` no los recrea. Las relaciones/preferencias siguen existiendo; SOCIAL y encuentros de los NPC siguen funcionando.



## Comidas y precios iniciales



| ID | Hambre+ | Sed+ | Precio |

|---|---:|---:|---:|

| CANDY_BAR | 8 | 0 | $2 |

| CHOCOLATE_BAR | 10 | 0 | $3 |

| COOKIES | 10 | 0 | $4 |

| SANDWICH | 20 | 0 | $6 |

| HOT_DOG | 22 | 0 | $5 |

| PIZZA_SLICE | 20 | 0 | $5 |

| BURGER | 30 | 0 | $8 |

| BOXED_LUNCH | 30 | 0 | $9 |

| TAKEOUT_MEAL | 40 | 0 | $12 |

| FULL_PIZZA | 50 | 0 | $16 |

| FAST_FOOD_MEAL | 40 | 20 | $13 |

| RESTAURANT_MEAL | 50 | 25 | $18 |

| FANCY_MEAL | 60 | 25 | $30 |



## Bebidas y precios iniciales



| ID | Sed | Vejiga | Precio |

|---|---:|---:|---:|

| WATER_BOTTLE | +35 | -10 | $2 |

| JUICE_BOTTLE | +30 | -10 | $4 |

| SOFT_DRINK_CAN | +25 | -12 | $3 |

| SOFT_DRINK_BOTTLE | +25 | -12 | $4 |

| TEA | +25 | -12 | $2 |

| COFFEE | +20 | -15 | $3 |

| TAKEAWAY_COFFEE | +20 | -15 | $4 |

| ENERGY_DRINK | +25 | -15 | $5 |

| MILK | +30 | -10 | $4 |

| BEER | +10 | -18 | $4 |

| BEER_CAN | +10 | -18 | $4 |

| WINE | +8 | -12 | $12 |

| WHISKEY | +5 | -10 | $25 |

| BOURBON | +5 | -10 | $24 |

| VODKA | +5 | -10 | $20 |

| RUM | +5 | -10 | $22 |

| CHAMPAGNE | +8 | -12 | $35 |



Alcohol hidrata poco. No se implementan embriaguez ni bonus de cafeína; beber café no recupera ENERGY. `TAKEAWAY_COFFEE` y `BEER_CAN` comparten efectos con café/cerveza y añaden presentaciones físicas.



## Objetos, animaciones y propiedad



`consumibles.json` tiene30 definiciones. Cada una incluye `item_id`, nombre, categoría, `world_model`, `mesh`, `texture`, `master`, tamaño en metros, masa kg, precio, flags pickupable/consumable/giftable/sellable/stealable, efectos, tags sociales, animación y ajuste de mano. El inventario actual usa texto, por lo que no necesita iconos. Las identidades del objeto y los campos `owner_type`, `owner_id`, `original_owner`, `origin`, `payment`, `holder`, `state`, `space`, `position`, `grants` viven en el registro real de `world_small_objects`, no en copias de la definición.



Biblioteca `Modelos/Necesidades/01`:30 comidas/bebidas +4 camas (`BED_SINGLE_A`, `BED_DOUBLE_A`, `BED_MOTEL_A`, `BED_HOTEL_A`) +2 inodoros (`TOILET_A`, `TOILET_PUBLIC_A`). **12–172 triángulos por modelo**. Caja/cilindro de6/8lados/cuñas; mismos constructores para latas, botellas y cajas, materiales distintos. `masters.json` vincula nombres como CANDY_BAR_MODEL, FOOD_PLATE_MODEL, LIQUOR_BOTTLE_A/B a los recursos existentes; no son copias extra de geometría.



Todas las texturas nuevas son **64×64**, colores opacos, rótulos/patrones simples, sin PBR complejo ni tipografía 3D. Los PNG son fuentes; el runtime usa la textura `.res` horneada del mismo nombre, referenciada por cada malla. **Editar solo un PNG nuevo no actualiza esa textura `.res` automáticamente.** Esto no cambia la sincronización ya existente de las prendas pintables. Para editar estas nuevas fuentes preparar una siguiente versión/importación específica; no volver a ejecutar un constructor sellado sobre una edición de Nico.



Las escenas de consumibles contienen `PICKUP_POINT`, malla y cuerpo rígido con caja simple; masa de la definición, CCD, damping1.5/2.5. La instancia del mundo usa la misma malla, tamaño, masa y `item_id`, dentro del límite existente de16 objetos físicos. Las camas/inodoros ya instalados están batched: se vinculan a las coordenadas exactas de las recetas existentes; no se superpone otro mueble/collider. Cada cama vinculada tiene SLEEP_INTERACTION_POINT. Los nuevos maestros tienen su marcador correspondiente para futuros interiores. Si la receta antigua omitió la expendedora en tienda/supermercado/gasolinera, se instancia el maestro existente Mundo03 una vez en un hueco libre junto a la entrada, comprobando sus colliders.



Cinco perfiles en segundos **reales**: EAT_HAND_SMALL3.8, EAT_HAND_LARGE4.8, DRINK_BOTTLE3.6, DRINK_CAN3.0, DRINK_CUP3.4. Controlador `character_consume.gd`, pose `character_consume_pose.gd`; misma implementación masculino/femenino. Derecha anatómica=Hand.L. IK de dos segmentos conserva longitudes y rests; punto de boca medido de la superficie vigente, sin modificarla. Plato/comida grande usa apoyo de la izquierda. El grip aprovecha el delta existente sobre copias runtime; no remodela las manos. Pose colocada **antes del modificador de daño**, sin añadir otra captura final ni reactivar parpadeo muerto.



`objects.use_item(id,actor_id)` valida posesión, pago, estado, disponibilidad y mano libre; instala el controlador al necesitarlo. Durante la animación `objects.reserved[id]=actor_id` bloquea soltar/regalar/usar de nuevo. El registro sigue en INVENTORY hasta completar: entonces se aplica el efecto y se marca CONSUMED una única vez con consumed_by/consumed_at. No quedan latas/botellas vacías en esta versión. Esc/daño/muerte/desmontaje antes del final libera reserva conservando el objeto; cargar una partida interrumpida no pierde el consumible. NPC puede usar la misma API/objeto/animación, sin simularle las cuatro necesidades ni crear otra población.



Mercadería física de tienda: TAKE→UNPAID→PAY→PAID/PLAYER; salida sin pagar conserva STOLEN/evento/testigos de la misma transacción. Heladeras tienen5 identidades persistentes iniciales (agua/refresco/sándwich/leche/cerveza). Propiedad del edificio: casa propia autorizada, casa ajena robo, frigo comercial de tienda/gas mercadería UNPAID. Identificadores del mueble derivan de tipo+coordenadas locales, no del orden de generación. No hay reposición gratuita al abrir/recargar. Compras de mostrador/expendedora/restaurante descuentan dinero real y crean un objeto WORLD pagado; si no hay dinero/espacio o la mesa está ocupada, no cobran. Comida del restaurante aparece en su mesa; bebidas expendedora salen delante de la máquina fuera de la cápsula del jugador. E las recoge antes de reabrir el menú. Regalos usan el ID real y tags FOOD/DRINK de los nuevos ítems. La venta contextual existente se amplió solo a libros/radio/reloj/herramienta en casa de empeños, al40%; sellable en consumibles queda como compatibilidad futura, no venta de sobras inventada.



## Evidencia y límites



**332 comprobaciones**, incluidas 62 core de necesidades, 70 en el mapa real y regresiones de relaciones, reloj y sueño. Se revisaron capturas de Estado, beber y comer, y catálogo de objetos. `verificacion_final.json` lista las seis suites. Todos los Godot se ejecutaron con `-- --damage-test`; ninguna prueba usa la partida real.



SHA-256 de **6329 archivos de arte anteriores** coincide exactamente con el respaldo:0 modificados. No se modificaron los modelos, fuentes pintadas, UV, rig ni clips aprobados. Las poses nuevas son componentes reversibles del runtime.



Esto no implementa necesidades completas NPC, sueldos, su abastecimiento doméstico automático, intoxicación, envases vacíos, simulación de cocina o animaciones con cubiertos. El baño usa el fundido simple permitido por la especificación; las camas conservan el sistema físico de sueño existente. Tarifas, efectos, stocks y menús iniciales son datos/reglas documentados, editables en una revisión posterior.





## 19. Vida lógica persistente — entrega Vida_logica_01



Esta sección sustituye las referencias anteriores a SOCIAL de NPC y a la agenda lógica antigua. Las notas históricas de §§14–18 conservan los valores anteriores para trazabilidad; la instrucción más reciente pide exactamente cuatro necesidades también en NPC.



# Vida lógica persistente — versión 01



Fuente: **Documento de Nico.txt**, copia íntegra de la especificación de 130 apartados

`ef152381-1d4c-4f71-838b-703fb751c1e1/pasted-text.txt`.

Proyecto activo: `C:/Users/Nico/OneDrive/Documents/Dark City Project`.



## Alcance vigente



La escena normal `Caminar con protagonista.cmd` instala este sistema. Los **50 ciudadanos

persistentes existentes** conservan ID, sexo, aspecto, hogar/trabajo asignados, objetos,

daños y relaciones. Se admite registrar otros ID persistentes con la misma estructura;

no se creó una población nueva en la partida. La prueba de 1.050 registros está aislada.



**Nueva decisión de Nico: ningún personaje tiene SOCIAL como necesidad.** El protagonista

y los NPC usan solo ENERGY, HUNGER, THIRST y BLADDER. Se eliminan `social` y `social_at`

de `social_01.people`, conservando preferencias, personalidad, contactos, afinidad,

familiaridad, recuerdos, duelo, TALK/GIFT y sus límites. Esto sustituye las reglas anteriores

de SOCIAL de NPC en Sistema_social_01 y Necesidades_01. No añadir HYGIENE, FUN ni otra barra.



La simulación lógica no tiene interfaz para el jugador: no se añadieron puntos de NPC,

rutas, horarios ni un segundo mapa visible. Controles anteriores sin cambios: WASD,

Shift sostenido, E, I, N, 2, ratón, V, etc. `debug_query(npc_id)` es una API de desarrollo.



## Arquitectura y autoridades



| Función | Implementación |

|---|---|

| Único reloj/calendario | `world_time.gd`, sobre `CharacterLives.game_time` existente |

| Base de datos de ciudadanos | `CharacterLives.records[npc_id].logical` |

| Grafo lógico | `logical_world_graph.gd`, un RefCounted global, AStar2D de calles |

| Simulación y eventos NPC | `npc_logical_world.gd`, Node global **sin _process ni _physics_process** |

| Cola temporal | `npc_event_scheduler.gd`, heap mínimo indexado por clave |

| Representación cercana | `world_npc_presence.gd` y `npc_physical_routine.gd` |

| Compatibilidad agenda/ropa/sueño | `world_npc_calendar.gd`; ahora adapta solo actores cargados |

| Salud persistente | `character_life_store.gd`, segundo heap global para cruces de salud/sangrado |

| Relaciones | `relationship_system.gd` y `world_social.gd`, almacén central anterior |

| Vehículos | `world_vehicles.gd` / `vehicle_body.gd`, mismos ID y entidades anteriores |



`pueblo_caminata.gd` crea `logical_npcs` después de calendario, presencia, objetos,

vehículos, agenda, descanso, social y necesidades. No hay un manager/Node/Timer por NPC

descargado. No existen su CharacterBody3D, esqueleto, animador, navegación, audio o IA física.

Las matrices de una pose guardada son datos; no instancias de esqueletos activos.



El viejo `world_npc_calendar.apply_logical` ya no teletransporta al NPC lejano al destino.

`world_npc_presence.advance_route` queda como no-op de compatibilidad. El viejo grafo

duplicado de la agenda fue retirado. `street_path` delega al único grafo nuevo.



Todas las fechas lógicas son **segundos del calendario del juego**, no tiempo de PC.

Se preserva la conversión existente **15 segundos de juego por segundo real**; 24 horas

son 96 minutos reales. No multiplicar delta de físicas, animación, ragdoll o vehículo.

El juego cerrado no avanza vidas. Inicio/calendario/clima anteriores no se reinician.



## Persistencia



La partida sigue siendo `user://character_lives_v1.json`, con escritura `.tmp`/`.bak`

y versión exterior 1. No se añade otro archivo de partida ni un segundo registro de salud.



`world_state.logical_npcs_01` contiene:



- `version: 1`.

- `events`: eventos externos pendientes, por ID único.

- `receipts`: ID de evento → NPC, clase, fecha, payload y estado; evita doble ejecución.

- `crimes`: hechos/participantes/testigos establecidos al producirse el evento.

- `vehicle_users`: vehicle_id → npc_id; impide dos usuarios lógicos del mismo coche.

- `serial`: contador de hechos creados por el adaptador de robo.

- `history`: últimas 256 transiciones de diagnóstico; el conocimiento importante vive

  aparte en los registros de crimen, recibos, `record.knowledge` y referencias del NPC.

- `climate` y `thermal`: reproducción privada del clima e intervalos horarios compartidos;

  no consumen el RNG climático del mundo.



Campos principales de `record.logical`:



`npc_id`, `alive`, `health_state`, `location_mode`, `current_activity`,

`location_id`, `current_logical_location`, `destination`, `route_id`, `route`,

`route_start_time`, `route_end_time`, `activity_start_time`, `activity_end_time`,

`activity_serial`, `effect_applied`, `schedule_id`, `schedule_overrides`,

`current_schedule_entry`, `schedule_boundary`, `home_id`, `workplace_id`, `job_id`,

`shift_start`, `shift_end`, `work_activity_type`, `vehicle_id`, `transport_mode`,

`energy`, `hunger`, `thirst`, `bladder`, `last_need_update_time`,

`last_simulated_time`, `next_significant_event_time`, `relationship_ref`,

`inventory_ref`, `knowledge_ref`, `event_refs`, `criminal_state`, `wanted_state`,

`pending_charges`, `incarceration`, `overrides`, `normal_schedule_paused`,

`next_social_time`, y referencias temporales de reunión/rutina.



Los campos de salud reales, lesiones, muerte y su causa siguen en el registro de vidas.

Relaciones/objetos/vehículos se referencian; no se duplican sus recursos en cada ciudadano.

Los campos opcionales se crean al utilizarlos. Un próximo evento indefinido se guarda

como **−1**, no Infinity/NaN; no ocupa una entrada en el heap.



`physical_snapshot` conserva punto real, espacio y fecha al guardar un actor cargado.

Al recargar se reconstruye su tramo pendiente desde ese punto y tiempo; no se toma la

posición ideal de una ETA que pudo divergir porque el coche o peatón se detuvo.

Se descarta al convertir definitivamente a lógico o al reconstruir bajo un salto de tiempo.

`spawn_snapshot` conserva brevemente el punto interior para la primera representación.



`daily_life` continúa como adaptador de los componentes anteriores: `SLEEP`, `WORK`,

`HOME`, `SHELTER`, `MEET`, `SOCIALIZE`, `OUTDOOR`, `space` y `goal`.

No usarlo como un segundo planificador ni restaurar su recorrido antiguo.



## Cola, consultas y saltos de tiempo



Claves del heap: `N/<npc_id>` (siguiente transición), `E/<event_id>` (evento externo),

`M/<meeting_id>` (reunión). Reemplazar/cancelar elimina realmente la entrada anterior:

no se acumulan eventos obsoletos. Empates por fecha se resuelven por clave estable.



El reloj consulta la cabecera, no toda la población. Al vencer un evento se integran

necesidades, se termina la actividad/viaje, se resuelven prioridades y se programa

la próxima frontera significativa. Una consulta puede integrar necesidades hasta ahora.

No se mueve ni reescribe `record.position` de cada NPC lejano cada frame.



Los saltos pasan por transiciones de turno, llegada, comida, baño, sueño, encuentro,

evento y liberación. No reproducen animaciones ni un ciclo por minuto por NPC.

La integración climática existente del mundo conserva su paso global por minuto;

la nueva integración térmica NPC reutiliza muestras **por hora compartidas**.



`world_sleep` reconstruye representaciones durante su fundido existente mediante

`temporal_npcs.finish_skip()`. Los futuros saltos de misión/cárcel deben llamar ese

mismo método **bajo su propio fundido o transición no perceptible**. No llamar a una

reconstrucción visible para simular un teletransporte de personajes delante del jugador.



## Grafo y lugares



`npc_activity_anchors.json` se extrajo leyendo metadatos de **67 tipos de interiores**,

sin instanciar escenas, con **776 entradas de ancla por función**. Fuente y SHA de cada

receta están guardados. `extraer_anclas.py` es una herramienta de esta versión, no un

regenerador de geometría. No volver a ejecutar cuando esté sellada o haya ediciones posteriores.



El grafo divide calles en intersecciones y añade referencias a los 785 edificios y

parques del plano. Una conexión guarda distancia, duración a pie/en coche y transporte.

No duplica NavigationMesh. Los lugares incluyen distrito, manzana/zona, building_id,

interior_id, familia, posición de acceso, capacidades, anclas y miembros del hogar.

En una ruta, la consulta deriva distrito/zona del segmento actual usando las manzanas.



Capacidades: `BED_ACCESS`, `FOOD_ACCESS`, `DRINK_ACCESS`, `TOILET_ACCESS`,

`WORK_ACCESS`, `FOOD_SERVICE`, `DRINK_SERVICE`, `SOCIAL_ACTIVITY`, `SHOPPING`,

`PARK_ACTIVITY`, `JAIL`, `HOSPITAL`. Los servicios elegidos son edificios entrables;

una fachada de relleno no convierte su puerta en un punto de consumo visible.

La casa privada elegible es la propia; baño laboral propio o baño público de servicio.

Varios ID pueden compartir `home_id`; esto no asigna automáticamente parentesco.



Anclas: BED_POINT, TOILET_POINT, DINING_POINT, WORK_POINT, SHOPPING_POINT, SOFA_POINT

y SAFE_POINT. Para trabajo se priorizan marcadores con rol máquina/estantería en industria,

escritorio en oficina, cocina/mesa/mostrador en comida, y médico/escritorio en hospital.

Si falta la función se usa un punto de actividad seguro; finalmente la entrada.

La capacidad aproximada del lugar está disponible como dato, **no es todavía un sistema

de reserva de asientos/camas ni una asignación de familias a dormitorios**.



Cache de rutas: máximo 1.024 entradas. Cache de elección de lugar: máximo 4.096, por

posición cuantizada a 20 m, capacidad, casa, trabajo, día de semana y hora de apertura.



## Viajes y representación física



Cada viaje guarda puntos, longitudes acumuladas, distancia total, modo, salida y ETA.

Al consultar se calcula `(ahora − salida)/(ETA − salida)`, limitado a 0–1, y se busca

el segmento por distancia, no por cantidad de vértices. No se interpola atravesando

edificios mediante una línea directa origen/destino.



Caminar usa `record.activity.walk_speed` (1 m/s mientras no haya captura previa;

luego la velocidad real compartida de ese sexo), convertido al calendario por ×15.

DRIVE usa 8 m/s lógicos. Lluvia fuerte `rain > .55`: duración WALK ×1.10, DRIVE ×1.05.

Las rutas de coche terminan en la calle; los últimos metros a la entrada son a pie.



Índice espacial de 100 m: un trayecto se registra en las celdas que cruza; presencia

consulta la celda y sus ocho vecinas, más actores/peticiones existentes. Solo entonces

calcula posiciones de candidatos. Un interior consulta sus ocupantes lógicos.



Se mantiene el límite de **24 NPC físicos**, carga a 50 m, liberación básica a 65 m.

Hay salvaguarda de percepción hasta 85 m con cámara/oclusión, y retención para consumo,

conversación, arma en transición, caída en movimiento y overrides que piden control físico.

Prioridad de petición: override 300, nombrado/conocido por el jugador 200, civil 100.

No se elimina un actor visible solo para sustituirlo por uno prioritario.



Antes de crear el cuerpo se requiere colisión del sector, suelo válido y espacio para

una cápsula de radio .23 m/altura 1.80 m. Se prueba el punto y desplazamientos locales

de .40 m. Un obstáculo rechaza el spawn; no se fuerza dentro de una pared.

Un actor muerto conserva su pose/posición de daño; un conductor usa su coche cargado.



Los actores cercanos usan el motor/rig/animaciones compartidos existentes. El adaptador

físico se actualiza cada .20 s **solo sobre loaded** y solicita rutas físicas al cambiar

de objetivo; no hay NavigationAgent o navegación frame a frame para cada NPC lejano.

Un viajero visible debe llegar realmente: si se retrasa, se espera una llegada física,

con comprobación lógica aplazada 300 segundos del calendario. No se teletransporta por ETA.



Al salir de un interior se hace un handoff de coordenadas al portal exterior. La marca

runtime `logical_handoff` evita que un destructor vuelva a escribir coordenadas de la

escena interior situada en Y=−120 sobre el estado que ya cruzó al mundo exterior.

El mismo guard protege el resultado de una reconstrucción bajo el fundido del sueño.



## Rutinas y necesidades



Configuración: `Sistema/Datos/npc_simulation.json`. Migración inicial sin necesidades

anteriores: **85** en las cuatro. Rango 0–100, valores altos son mejores.



| Necesidad | Descenso por hora del calendario | Umbral de rutina |

|---|---:|---:|

| ENERGY | 3 despierto | <20: volver a casa/dormir si no manda trabajo/evento |

| HUNGER | 5 | ≤30; durante pausa almuerza si <75/80 |

| THIRST | 100/14 | ≤35 |

| BLADDER | 8, más efectos de bebida | ≤25 |



Tolerancia numérica .01 en los tres umbrales de atención. Sed térmica: ×.95 bajo 8 °C,

×1 normal, ×1.10 desde 28 °C; ola de calor ×1.25 tiene precedencia. Se muestrea el centro

de cada hora en una reproducción privada y se integra el solapamiento temporal exacto.



Sueño normal **7.5 h**, máximo **8 h por sesión**. Recuperación:

`energía_inicial + (100 − energía_inicial) × clamp(horas/8, 0, 1)`.

Se conserva la energía inicial y fecha de la sesión; no se aplica una curva exponencial

al consultar repetidamente. Dormido no pierde ENERGY; las otras tres siguen descendiendo.

No hay muerte, daño, desmayo ni pérdida de control por llegar a cero.



Plantillas:



- DAY_WORKER: lunes a viernes (weekday 1–5), inicio individual previo, turno de 8 h,

  pausa desde 12:30 por 1.800 s. Si no encaja, pausa a las cuatro horas de comenzar.

- NIGHT_WORKER: días 0–6, 18:00–02:00, pausa 22:00 por 1.800 s; sueño 08:00–15:30.

- RESIDENT: sin turno. Conserva casa, identidad y comportamiento cotidiano.

- Se conserva la hora de acostarse diurna individual de `daily_life.bedtime`.

- Fuera del turno: recado 11–12, comida/pausa 13–13:30, parque 14–17, ocio 20–22,

  casa el resto. Necesidades, apertura y clima pueden reemplazar esas actividades.

- `schedule_overrides`: entradas absolutas start_time/end_time, activity, location,

  priority y entry_id; `WORK_SHIFT_CHANGE` puede actualizar plantilla/trabajo.



No se trabaja o consume en un servicio cerrado. El cierre recorta la frontera del turno

y se comprueba nuevamente al llegar. Lluvia >.55 reemplaza parque/ocio exterior por casa.

Se eligen servicios cercanos; no se manda a cada NPC al mismo punto lejano prefijado.



Las necesidades no abandonan continuamente el trabajo. Bebida/baño propios pueden

interrumpirlo brevemente; hambre normalmente espera la pausa y <10 permite atenderla.

ENERGY baja no desplaza un turno de prioridad 80. Sueño tiene 70, ocio 30; eventos y

overrides usan prioridad explícita (misión 90; peligro/justicia normalmente 100).



Comer: **1.200 s** del calendario. Beber: **90 s**. Baño: **360 s**, al acabar BLADDER=100.

Comida rutinaria BOXED_LUNCH: +30 HUNGER. Agua WATER_BOTTLE: +35 THIRST, −10 BLADDER.

Se reutilizan valores de `consumibles.json`; no otra tabla de efectos incompatible.



Fuera de pantalla se resuelven provisiones lógicas de casa/trabajo/servicio; no se crea

hamburguesa, taza, plato o RigidBody. No se añadió una economía salarial/abastecimiento

completa para esas provisiones. Los objetos importantes/regalados/robados sí siguen

en el inventario persistente existente.



Cerca del jugador se usa el mismo `ConsumeAction`, grip y malla de objeto real. La acción

visible se inicia al final del intervalo lógico para coincidir con su finalización.

ID de provisión: `routine_<npc_id>_<activity_serial>`, estado INVENTORY/OWNED y origen

ROUTINE_PROVISION. Reserva durante la animación, commit una vez, misma modificación

de necesidades. `effect_applied` impide que luego la transición lógica vuelva a premiar.

Cancelación conserva el objeto mientras existe el actor; la provisión desechable se limpia

en el handoff/completado lógico, sin borrar regalos o propiedad robada/transferida.

La PPK equipada impide beber; no se alteró el apuntado ni los clips de locomoción.



`npc_activity_pose.gd` añade únicamente una postura suave de actividad antes de daño;

las poses de cama y consumo son las ya compartidas. No hay esculturas, rigs o clips nuevos.



## Social, justicia, eventos y muerte



El planner antiguo de 300 s que escaneaba a todos para rellenar SOCIAL deja de ejecutarse.

Cada NPC tiene oportunidades de encuentro cada **3.600 s**, según horario/disponibilidad,

contactos previos y preferencias. Distancia entre contactos ≤180 m, trayecto planeado ≤1 h.

ENERGY <25, HUNGER <30, THIRST <30, BLADDER <20 o consumo impiden aceptar un encuentro.

Trabajo, sueño, lluvia fuerte, daño y overrides siguen prevaleciendo.



Se mantienen reuniones de 1.800 s, cooldown posterior de 4 h y llegada real conjunta si

son físicos. La relación cambia solo por el evento TALK/GIFT válido, no por permanecer

co-localizados. TALK conserva 6 h de cooldown por pareja; GIFT 24 h; máximo positivo +6

por pareja/día; no hay decaimiento automático. Se retiró el término de humor basado en

SOCIAL, no la personalidad ni el duelo o los recuerdos.



API interna principal, sobre `town.logical_npcs`:



- `get_npc_state(id)` / `get_logical_location(id)` / `debug_query(id)`.

- `register_npc(id)` después de crear su registro persistente, sin instanciar un modelo.

- `queue_event(event_id, npc_id, kind, at, payload)`; ID idempotente.

- `interrupt(id, owner, kind, activity, end, priority, location, pin_physical)`.

- `release_override(id, owner)` y `script_control(id, owner, enabled, location)`.

- `incarcerate(id, jail_id, release_at)`.

- `record_crime(event_id, offender, position, explicit_witness_ids, known_identity, space)`.

- `witness_report(id, crime_id)` y `assign_vehicle(npc_id, vehicle_id)`.



Eventos implementados: WANTED, HOME_SEARCH, ARREST/INCARCERATE, RELEASE,

WORK_SHIFT_CHANGE, FLEEING, HIDING, COMBAT, INJURY, MISSION_EVENT,

WEATHER_EMERGENCY, POLICE_ARRIVAL, PLAYER_INTERACTION.

Eventos emiten `significant_event`; los que necesitan representación policial emiten

`physical_event_requested`. La decisión policial, persecución, escolta/arresto animado y

misiones completas son consumidores futuros de estas APIs, no un sistema policial creado aquí.



Encarcelado: se cancelan viaje/agenda/reunión y se fija cárcel/fecha de salida; necesidades

provistas lógicamente, sin caída. Al liberar se conservan al menos 80 en las cuatro y se

consulta el horario actual. **Si el NPC está visible al arrestarlo, queda ARRESTED en su

sitio con transferencia pendiente**; no desaparece delante del jugador. El handoff seguro

completa INCARCERATED en la cárcel. El evento avisa al futuro controlador de escolta.

Las misiones pueden pausar indefinidamente con fin −1 y liberar después al horario actual.



Testigos se registran al producirse un hecho, con ID explícito, mismo espacio y distancia

≤100 m. El adaptador del robo reutiliza además los testigos que el sistema físico ya

comprobó con distancia/visibilidad. Identidad tapada conserva UNKNOWN_MASKED.

Consultar después no inventa presencia ni identidad. No hay tiradas masivas de crímenes.



Muerte normal: estado DEAD, sin siguiente actividad, viaje, trabajo ni consumo. No se borra

ID, causa, asesino conocido, relaciones, crimen o historia. F8 sigue siendo exclusivamente

el reinicio explícito de prueba anterior, no un comportamiento del streaming.



Salud/sangrado: los sanos lejanos no se recorren por frame. Los heridos lejanos tienen

eventos de cruces **75/50/25/8/0 HP** y muerte calculada por tasa/fecha. Consultar o guardar

integra el intervalo pendiente. Solo los heridos cargados reciben actualización continua.

`track_bleeding(record)` se llama al cambiar lesiones; `rebuild_health_events()` al cargar.

Para herramientas que editan directamente `record.bleeding`, llamar track_bleeding.

Impulsos, joints, ragdoll, límites humanos, heridas y fuerzas anteriores no se modificaron.



## Vehículos y límites de esta entrega



No se inventa propiedad de coches para todos los ciudadanos. `assign_vehicle` vincula

un coche persistente disponible a un NPC y rechaza duplicados/vehículo del jugador ocupado.

DRIVE es funcional para esos vínculos: trayecto lógico y, cerca, el mismo coche con el

mismo actor sentado, pose compartida, colisiones y conducción física básica de hasta 8 m/s.

La última aproximación a la puerta es a pie. No se creó tráfico urbano completo,

semaforización, taxis, economía de empleo, cárcel del protagonista ni policía autónoma.



El sistema es extensible a esas decisiones sin mantener los cuerpos de toda la ciudad

cargados. La capacidad aproximada y los puntos de hospital quedan disponibles como datos;

tratamientos médicos automáticos/curación y reserva de asientos no se añadieron.



## Verificación y protección de fuentes



Ver `verificacion_final.json`, informes `verificacion_*.json` y logs `final_*.log`.

Incluyen motor real, roundtrip de streaming, necesidades, sueño/trabajo interiores,

vehículo NPC, arresto sin teleport visible, guardado, equivalencia de saltos, salud y relaciones.

Todos los ejecutables de QA terminan con **`-- --damage-test`**, con partida real desactivada.



Las métricas de 50 ciudadanos/30 días y 1.050 registros/un día son tiempos de resolución

de datos en esta máquina, no mediciones de FPS ni promesa de renderizar 1.050 cuerpos.

Se conservan respaldos previos en `Antes`, fuente íntegra, huellas de entrega y auditoría

de modelos/animaciones/pinturas. Los generadores de versiones selladas anteriores no se usaron.



Verificación final: **119 comprobaciones correctas**, cero errores en los logs finales.

Arte protegido contrastado por SHA-256: **6480 archivos, cero cambios**.

Fuente de Nico SHA-256: `20f456c4da48b59751e9b8239ccd218a02829f0a14b8ec6f071bac28b28986d3`.



Métricas registradas, ejecución aislada sin partida real:



- 50 NPC / salto8h: 533 eventos, 176 ms.

- 50 NPC / salto30d: 59397 eventos, 12564 ms; cola53.

- 1050 registros / salto1d: 28339 eventos, 3306 ms; cola1050; cero cuerpos físicos.

- Diferencia numérica entre8h en pasos y8h de golpe: 0.0.



## 20. Empleo y estabilidad de vida — entrega Empleo_vida_01

Esta sección sustituye las referencias históricas anteriores a empleo económico pendiente. No cambia las cuatro necesidades, arte ni reglas de muerte del juego. Respaldo previo de código/configuración en Documentacion/Empleo_vida_01/Antes.

# Empleo y estabilidad de vida de los NPC — versión 01

Implementación de los 77 apartados del documento de Nico conservado en esta carpeta. Integra empleo, ingresos y gastos, desempleo, apoyo, estrés, alcohol, accidentes, recuperación y salida de la ciudad en los NPC persistentes existentes. Las cinco fases se implementaron y comprobaron en orden: primero un empleado, luego estabilidad/apoyo, alcohol, accidentes y crisis.

## Uso en el juego

Abrir `Caminar con protagonista.cmd` en la raíz del proyecto activo. Los 50 habitantes actuales usan estas reglas tanto cargados como fuera de pantalla. **F11** abre el inspector de desarrollo; **Anterior/Siguiente** o **RePág/AvPág** seleccionan un NPC; F11/Esc lo cierran y restauran los controles y el modo de ratón previos. El mundo sigue avanzando mientras el inspector está abierto.

El inspector muestra identidad/residencia, oficio, rendimiento, revisión/avisos, habilidad/experiencia, saldo/atrasos/presión financiera, estrés/resiliencia/apoyo, respuesta elegida/crisis, tendencia/frecuencia/hábito/intoxicación, riesgo por viaje, actividad/destino, pesos de la última decisión y sucesos recientes. Se instala solo con `OS.is_debug_build()` y no procesa cuando está cerrado. `Panel_NPC.png` es una captura de Godot con una partida aislada de prueba.

Los cuatro indicadores de necesidad siguen siendo **ENERGY/HUNGER/THIRST/BLADDER**. Estrés, alcohol y apoyo son estado de vida, no necesidades nuevas. No se restauró SOCIAL ni se alteró el sistema del protagonista.

## Autoridades y persistencia

| Componente | Responsabilidad |
|---|---|
| `LogicalNPCWorld.jobs` / `npc_employment.gd` | Empleo, posiciones, turnos, evaluación, sueldo, facturas, búsqueda, contratación, ascensos, registro de residentes. Es `RefCounted`. |
| `npc_life_stability.gd` | Perfiles, estrés, apoyo derivado de relaciones, decisiones, alcohol, crisis y salida de la ciudad. `RefCounted` propiedad de jobs. |
| `npc_life_risk.gd` | Riesgo por viaje, contacto de coche, consecuencias mediante CharacterLives y recuperación médica. `RefCounted` propiedad de jobs. |
| `CharacterLives.records[id].employment` | Estado individual de empleo. |
| `CharacterLives.records[id].life` | Estado de estabilidad, alcohol, crisis y atención médica. |
| `CharacterLives.records[id].life_status` | `ACTIVE`, `LEFT_CITY` o `DEAD`. |
| `CharacterLives.world_state.npc_employment_01` | `version:1`, `positions`, `pending`, `initialized`, `population_month` y, cuando corresponde, `vacant_homes`. |
| `WorldSmallObjects.balances[id]` | **Único saldo monetario**; no se copia dinero dentro de employment/life. |
| `RelationshipSystem` | Afinidad, contactos, tags, conversación/regalos, historial social. Se utiliza la misma base. |
| `WorldCalendar` | Único reloj: **15 segundos de calendario por segundo real**. No multiplicar las físicas por 15. |

Todos los tiempos nuevos son segundos de calendario del juego. La interfaz con lesiones convierte explícitamente a los ticks físicos históricos de CharacterLives. Cerrar el juego no simula tiempo de pared transcurrido. Dormir/saltar tiempo usa los mismos eventos que el avance normal.

La cola indexada ya existente guarda claves `J/<npc_id>/<kind>`, junto a N/ (rutina), E/ (eventos externos), M/ (encuentros). `pending` guarda datos serializables; cada clave tiene una sola entrada. Tipos: `SHIFT_BEGIN`, `SHIFT_END`, `DAY`, `SEARCH`, `APPLICATION`, `OFFER`, `SUPPORT`, `REST`, `LEISURE`, `ANOTHER_DRINK`, `JOURNEY_RISK`, `CARE_TRANSFER`, `CARE_RECOVERY`. DAY vence a las **00:01** del día siguiente. No se crearon nodos, procesos, temporizadores, modelos ni físicas por NPC descargado.

La migración conserva identidades, apariencias, salud, relaciones y dinero existentes. Inicializa una sola vez campos ausentes y ocho vacantes iniciales. Los NPC que tenían agenda RESIDENT empiezan sin empleo; a los trabajadores previos se les asigna su edificio válido o el lugar de trabajo válido más cercano. Esto **no redefine el reparto social final 10+10+10+20**.

Si falta un saldo, los ahorros iniciales son un entero **240–1600**, derivado establemente de `hash("employment/"+id)`. No se vuelve a conceder al cargar. RNG individual persistido: `rng = (rng * 48271) % 2147483647`; valores iniciales 1–2147483646. No se vuelve a sortear personalidad al aparecer físicamente.

Datos individuales de empleo: `employment_status`, `review_status`, `job_id`, `position_id`, `workplace_id`, `performance`, `job_proficiency`, `skills`, `experience`, `warning_count`, `probation`, `good_reviews`, `last_review`, `review_shift_count`, `days_employed`, `days_absent`, `late_count`, `previous_job`, `previous_workplace`, `date_fired`, `reason_fired`, `unemployment_start`, `history`, `recent_shifts`, `active_shift`, `next_shift`, `leave`, `applications`, `interview`, `plan`, `arrears`, `financial_pressure`, `reduce_spending`, `last_daily`, `last_month`, `rng`, `promotion_level`, `last_promotion`, `reliability`, `motivation`, `supervisor_id`, y overrides/recibos cuando se usan. `days_employed` cuenta turnos finalizados; `experience` almacena equivalentes de ocho horas realmente trabajadas por familia laboral.

Datos de vida: `stress`, `resilience`, `impulsivity`, `risk_taking`, `coping_profile`, `coping_choice`, `decision_weights`, `decision_context`, `last_coping`, `events`, `last_social_relief`, `last_help`, `alcohol_tendency`, `drinking_frequency`, `habit`, `intoxication`, `intoxication_at`, `drink_serial`, `drinks_today`, `peak_today`, `drink_day`, `last_drink`, `crisis`, `physical_modifiers`, `accident_risk`. Se añaden `stress_components`, `stress_target`, `life_stability`, `risk_factors`, `journey`, `drink_session`, `care` y colisiones según los eventos realmente ocurridos.

## Puestos, turnos y evaluación

Definiciones en `Sistema/Datos/npc_employment.json`. Días: **0 domingo, 1 lunes … 6 sábado**. Se normalizan los números JSON a enteros, también los días personalizados recuperados de un guardado.

| Familia de trabajo | Edificios | Inicio / horas | Días | $/hora | Habilidad inicial |
|---|---|---|---|---:|---:|
| RETAIL | shop, dealership | 09:00 / 8 h | 1,2,3,4,5,6 | 8 | 45 |
| OFFICE | office, bank | 09:00 / 8 h | 1,2,3,4,5 | 10 | 50 |
| MECHANIC | workshop | 09:00 / 8 h | 1,2,3,4,5,6 | 11 | 55 |
| FOOD_SERVICE | restaurant | 10:00 / 8 h | 0,1,2,3,4,5 | 8 | 45 |
| INDUSTRIAL | factory, warehouse | 08:00 / 8 h | 1,2,3,4,5 | 10 | 45 |
| MEDICAL | hospital | 08:00 / 8 h | 1,2,3,4,5 | 13 | 65 |
| CIVIC | civic, police | 09:00 / 8 h | 1,2,3,4,5 | 10 | 50 |
| HOSPITALITY | bar, club, hotel | 18:00 / 8 h | 0,2,3,4,5,6 | 9 | 40 |

El horario efectivo respeta apertura/cierre del edificio y turnos que cruzan medianoche. La pausa es de **1800 segundos** en el punto medio. La salida se anticipa por la ETA a pie desde casa más **300 segundos** de margen. Sueño, lesiones, necesidades urgentes y otros overrides existentes siguen pudiendo impedir puntualidad; no se concede asistencia por pose o por estar cerca del trabajo.

La asistencia acumula intervalos en `WORKING`, `AT_LOCATION`, dentro del workplace. Se integra antes de cambiar de actividad o necesidades. Llegar tarde, salir antes, ausentarse y una falta justificada quedan registrados. Un guardado antiguo migrado a mitad del turno solo evalúa/paga el tiempo restante; no inventa horas pasadas.

Reglas generales: rendimiento requerido **55**, tolerancia a llegada tarde **600 s**, tolerancia a ausencias **1 por revisión**, aviso por media inferior a **50**, aviso final inferior a **40**, posible despido inferior a **30**. MECHANIC/INDUSTRIAL toleran **900 s**; MEDICAL tolera **300 s**, **0** ausencias injustificadas y aviso bajo **55**. Los umbrales están en datos.

Al terminar el turno:

- Horas esperadas = duración menos `min(pausa, duración × 0.1)`, con mínimo 1 s. Asistencia = trabajado / (esperado − excusado), limitada a 0–1.
- Puntualidad penaliza solo lo que supera la tolerancia; escala hasta una hora y se agrava por reincidencia hasta factor **1.5** con cinco llegadas tarde acumuladas.
- Factores: habilidad × **0.6**; asistencia × **40**; tareas × **15**; puntualidad × **−12**; falta de energía × **−14**; hambre × **−8**; lesión × **−25**; intoxicación × **−35**; estrés × **−18**; experiencia × **0.03** hasta **+8**; motivación centrada en 50 y escalada por **6**; errores × **−3** hasta **−15**; afinidad con supervisor /100 × **3** cuando existe un supervisor asignado.
- Sin un productor específico de tareas del oficio se utiliza asistencia como aproximación de cumplimiento. `report_task` permite tareas terminadas/fallidas y errores reales, deduplicados por task_id. No se fingió una simulación física de cada profesión.
- Resultado 0–100. Rendimiento persistente mezcla **35%** del resultado nuevo y 65% previo. Habilidad mejora **0.12 × asistencia** por turno. Fiabilidad mezcla 15% de asistencia y 85% previa; motivación inicial **65**, fiabilidad **75**, rendimiento **65**.
- Sueldo = redondeo de `(horas trabajadas + horas excusadas × 0.6) × tarifa × (1 + nivel × 0.1)`. Se ingresa una vez en el saldo existente al cerrar el turno; repetir el evento no vuelve a pagar.

Revisión cada **3 turnos no excusados**. La media de esos tres resultados y las ausencias decide: `NORMAL → WARNING → FINAL_WARNING → PROBATION → FIRED`. Con fallos suficientes en todas las ventanas requiere al menos **12 turnos malos**. No se despide por un día o por tocar momentáneamente un umbral. **Dos revisiones buenas** devuelven NORMAL y limpian avisos/probation; el historial permanece. Se conservan **14** turnos recientes y **64** eventos laborales/de vida. La experiencia/habilidad por oficio sobrevive al cambio de empleo.

`approve_leave` admite `INJURY`, `HOSPITALIZATION`, `FUNERAL`, `EMERGENCY`, `APPROVED_LEAVE`. Estar derribado o tener salud ≤50 también justifica INJURY. Si al menos la mitad del turno fue justificada, no se degrada el rendimiento ni se suma una revisión mala. Los permisos pueden pagarse al 60%; no se trata hospitalización como ausencia arbitraria.

Ascensos evaluados mensualmente: al menos **30 días** desde el anterior, rendimiento ≥**85**, habilidad ≥**70**, estado NORMAL; máximo **3 niveles**, cada uno agrega **10%** a la tarifa base. No inventa un puesto físico o edificio nuevo.

Las posiciones guardan `id`, `workplace_id`, `job_id`, `occupant`, `status`, `vacant_since`, `previous_occupant`, `filled_at`. Claves iniciales `<edificio>/INITIAL_<id>` y `<edificio>/OPEN_01`. Despido/muerte/salida liberan la posición; no crean reemplazos. Un contratado establece hasta **8** contactos COWORKER existentes en ese lugar, evitando una matriz de todos con todos. Al irse se quita el tag laboral, no la afinidad ni la amistad.

## Desempleo, búsqueda y economía

El despido conserva anterior oficio/lugar/fecha/motivo, elimina turno/tareas/sueldo y da agenda RESIDENT. No elimina casa, posesiones, necesidades ni contactos. Búsqueda normal a las **10:00**, probabilidad diaria **0.8**, actividad de **3600 s**, resolución de solicitud después de **7200 s**. No se duplica una solicitud si ya espera APPLICATION/OFFER.

Puntuación de candidato: habilidad relevante × **0.65** + experiencia × **0.2** (máximo **15**) + fiabilidad × **0.3** + contacto laboral (máximo **5**, afinidad × 0.05). Orden por puntuación y luego ID de posición. Mínimo **40**. Cárcel, lesión excusada, overrides y compromisos de prioridad ≥80 impiden aplicar. Recontratación al puesto que acaba de liberar: enfriamiento **14 días**.

Entrevista el siguiente día admisible tras el plazo base de **86400 s**, una hora después del inicio laboral o apertura, respetando días y edificio abierto. Se calcula salida anticipada por ETA +300 s. Dura **3600 s** y requiere **900 s de asistencia real** en JOB_INTERVIEW dentro del lugar y horario. La observación se guarda y no se reinicia por streaming/JSON. Ausencia produce MISSED_INTERVIEW y nueva búsqueda, no contratación silenciosa. Oferta revalida vacante y elegibilidad. Un NPC con reservas puede rechazar salario inferior al **55%** de su salario anterior. Se conservan **12** solicitudes recientes.

Gastos diarios en dólares abstractos del juego: alquiler **10** + servicios **2** si tiene casa, comida **7**, transporte **1**. Reducir gastos baja comida al **75%**; es una preferencia persistente de presupuesto, no una lesión ni inanición automática. Se cobra lo disponible y el resto pasa a `arrears`. Se amortiza hasta media jornada de gastos adicional por día. Saldo no se hace negativo.

Reserva = saldo / gastos diarios. Objetivo financiero = `clamp(100 × (1 − reserva/14) + atrasos/(gastos × 7) × 40, 0, 100)`. Presión se acerca **30%** por día. Cobrar dos veces el mismo día está bloqueado. `unexpected_expense` cobra o agrega atrasos y usa recibos por event_id para no repetir una factura. **La comida cotidiana de NPC sigue usando las provisiones de la rutina previa**, cubiertas aquí por presupuesto diario; no se creó una economía completa de frigoríficos, reposición de tiendas y compras físicas de todos los NPC.

## Estrés, apoyo y elecciones

Configuración: `Sistema/Datos/npc_life_stability.json`. Estrés inicial **18**, rango 0–100, valor de presión de juego, sin diagnóstico médico. Perfiles persistentes 0.15–0.85 en `problem_solving`, `social_support`, `avoidance`, `alcohol`, `risk_taking`, `stay_home`, `work_focused`. Resiliencia 35–85, impulsividad 20–80, riesgo 15–75. Modifican pesos, no determinan destino.

Objetivo de estrés: base **20** + presión financiera ×**0.5** + salud perdida ×**0.22** + desempleo (**0.4/día**, máximo **18**) + eventos + problemas legales **15** + no tener vivienda **12** − apoyo ×**0.25** − resiliencia ×**0.08** − empleo NORMAL **6**. Se limita a 0–100. Cambio diario: **22%** de distancia al objetivo, limitado a subir **4** o bajar **5** puntos.

Eventos tienen fuerza y días de duración. Efecto inmediato limitado: fuerza ×**0.35**, moderado por `1 − resiliencia × 0.004` para sucesos negativos. Influencia posterior decae linealmente hasta expirar; suma limitada a −25…45, máximo **32** eventos activos.

| Evento | Fuerza | Días |
|---|---:|---:|
| FIRED | 12 | 14 |
| JOB_WARNING | 4 | 5 |
| PERFORMANCE_RECOVERED | −6 | 7 |
| NEW_JOB | −12 | 14 |
| PROMOTED | −8 | 14 |
| PARTNER_BREAKUP | 18 | 21 |
| FRIEND_DIED | 12 | 21 |
| FAMILY_DIED | 22 | 35 |
| PARTNER_DIED | 28 | 42 |
| SERIOUS_ACCIDENT | 16 | 21 |
| HOSPITALIZED | 8 | 14 |
| MOVED_HOME | 3 | 7 |
| ARRIVED_CITY | 4 | 7 |
| SUPPORT_RECEIVED | −8 | 7 |
| POSITIVE_INTERACTION | −3 | 3 |
| ARGUMENT | 5 | 3 |
| UNEXPECTED_EXPENSE | 5 | 7 |

Apoyo deriva de contactos vivos/residentes con afinidad ≥10. Se usa un peso por contacto: pareja **40**, familia **32**, amistad cercana (≥71) **30**, amistad (≥41) **22**, compañero confiable **12**, multiplicado por afinidad/100; suma hasta100. El protagonista puede aportar apoyo si existe relación, pero **nunca se gasta su dinero automáticamente**.

Interacción favorable con un contacto de apoyo reduce estrés **9** y emite SUPPORT_RECEIVED; enfriamiento de pareja **21600 s**. TALK/GIFT conservan sus límites previos y los resultados llegan por `interaction_committed`. La llamada de apoyo es una actividad lógica temporal y comprueba disponibilidad real del destinatario. Ayuda económica solo NPC→NPC: presión del receptor ≥60, afinidad ≥41, hasta **$25**, **7 días** de enfriamiento por pareja, el donante conserva **14 días** de sus propios gastos. Se resta y suma el mismo dinero. Un argumento/ruptura no borra arbitrariamente relaciones; el humor por estrés>60 e impulsividad solo aplica un modificador negativo limitado a **0.75** en TALK.

Coping se evalúa diariamente, estrés mínimo **30**, enfriamiento **86400 s**, sin overrides activos. Ventana habitual **19:00**, trabajadores nocturnos **16:00**. Respuestas: LOOK_FOR_WORK, REDUCE_SPENDING, SEEK_SUPPORT, REST, LEISURE, STAY_HOME, GO_TO_BAR, DRINK_AT_HOME, WORK_FOCUSED. Los pesos incluyen empleo, saldo/inventario, energía, afinidad, perfil, estrés e historial. Se guardan pesos, contexto, elección y RNG para inspección. No se elige de nuevo cada frame.

La acción usual dura **1800 s**; descanso y ocio quitan **4** y **3** de estrés solo al realizarse en la ubicación/actividad previstas. WORK_FOCUSED añade **1** a motivación, máximo100. Beber tiene una ventana de plan de dos horas con consumo individual temporal. La crisis aumenta el peso de apoyo ×3 y descanso +1, suprime elección de beber. No se implementó delincuencia autónoma por estrés; la integración con el estado legal existente sí afecta las decisiones.

LIFE_STABILITY es solo resumen de inspección: `(100−presión)×0.25 + (100−estrés)×0.3 + apoyo×0.2 + salud×0.15 + 10 si empleado`, limitado0–100. No decide por sí mismo crisis ni muerte.

## Alcohol y representación física

Un consumo usa un objeto real del inventario; si falta, compra una BEER con identidad `life_drink_<id>_<serial>`, pago y estado INVENTORY/PAID/LIFE_PURCHASE. Precio en casa **$4**, en bar **$6**. Duración **900 segundos de calendario**. Máximo **3 consumos autónomos diarios**. Tipo/intoxicación: BEER **18**, BEER_CAN **16**, WINE **23**, LIQUOR **28** si ese tipo llega a existir en el catálogo; no se crearon recursos artísticos adicionales.

`WorldSmallObjects.finish_consumption` es el punto de commit compartido físico/lógico. `reserved_routine_item` identifica el objeto reservado. Animación existente ConsumeAction para los NPC visibles, resultado lógico cuando no están cargados; un consumo interrumpido conserva el objeto comprado. `life_effect_applied` impide duplicar intoxicación. Dinero/inventario y tiempo preceden al efecto, no son cambios gratis de estadísticas.

Cada bebida terminada reduce estrés **5**. Intoxicación máxima100, baja analíticamente **7.5 puntos/hora**. El promedio integrado durante el turno determina penalización laboral; no se utiliza solo el nivel del último frame.

Una sesión iniciada por coping dura **3600 s**; puede repetir después de **60 s** si sigue en ese lugar, estrés ≥60, sin override ni trabajo inminente. Probabilidad contextual `0.15 + tendencia × 0.45 + estrés/100 × 0.15`. Siempre vuelve a pagar o usar inventario y completar el consumo; mantiene máximo3/día. Consumir fuera de esa sesión no crea una cadena automática.

Hábito sube **0.5/día** solo si el pico diario alcanza **50**, de otro modo baja **0.18/día**, rango0–100. Frecuencia mezcla **4%** hacia100 si bebió ese día o hacia0 si no. Tendencia = perfil alcohol + hábito ×**0.003**, limitada0–1. No existe dependencia instantánea ni espiral inevitable.

Con dosis = intoxicación/100: pérdida de balance `1 + dosis ×0.65`; recuperación interpola1→**0.55**; velocidad1→**0.82**; aceleración1→**0.6**; reacción1→**0.55**. Son modificadores del CharacterDamage/balance, locomoción/levantarse y control de coche actuales, aplicados al actor cargado. No hay otro ragdoll, masa artificial, cambios a joints, animaciones, huesos, mallas o siluetas. El protagonista no recibe estos modificadores NPC.

## Accidentes y recuperación

Cada trayecto DRIVE recibe una sola decisión lógica a mitad del recorrido. Guardado/reconstrucción de ruta conservan el ID y `evaluated`; no se tira un dado cada segundo. Con el NPC visible se marca PHYSICAL_CONTACTS_ONLY y el accidente depende del contacto real del coche.

Riesgo base por trayecto = **0.0003** + intoxicación² ×**0.014** + fatiga² ×**0.002** + lesión ×**0.002** + lluvia ×**0.001** + deterioro del vehículo ×**0.003** + personalidad de riesgo ×**0.0006**. Factores normalizados0–1. Multiplica distancia/1000 limitada **0.2–3** y `(velocidad/8)^1.5`; máximo **0.06** (6%). Fuera de pantalla la velocidad de referencia es **8 m/s**. Ni embriaguez máxima garantiza accidente.

Tras un accidente lógico, la gravedad usa otro sorteo: **78%** menor, **19%** moderado, **2.9%** serio y **0.1%** fatal. Cerca del jugador se usa velocidad normal real del choque: mínimo **2 m/s**, moderado desde **6**, serio desde **11**, fatal desde **20**; enfriamiento **2 segundos reales**. Se registra normal, velocidad, conductor/asiento y fecha. `minor_speed:3` está reservado en datos; actualmente el tramo menor comienza en collision_min_speed2.

Consecuencias usan `CharacterImpactEvent` tipo `vehicle_accident`, CHEST, sin arma ni atacante, y `CharacterLives.apply_hit`. Daño por gravedad **4/18/55/110**. La salud previa decide si un herido sobrevive; no se crea una segunda salud. Condición de coche baja daño×**0.8**, serio/fatal deja `operable=false`. El chequeo físico de estos NPC no sustituye los controles del coche del protagonista.

Accidente menor lógico añade **300 s** de demora desde la posición del choque. Moderado/serio genera permiso médico de **2/7 días**, coste **$40/$140**, cobrado del saldo y resto a atrasos. Se detiene el plan normal en AWAITING_MEDICAL_HELP; traslado abstracto después de **1800 s** a hospital existente (casa como fallback). Un NPC visible permanece en su sitio, con reintentos cada1800 s hasta poder resolver fuera de vista; no aparece una ambulancia inexistente ni se teletransporta delante del jugador. La estancia termina al menos un día después del traslado efectivo.

CARE_RECOVERY cura el **80%** del daño/lesión atribuible a ese accidente a través de `CharacterLives.recover_injury`. Conserva lesiones previas y nunca resucita. Muerte real sigue el flujo de muerte/relaciones/posición vacante del juego. No se alteró sangrado, rig ni restricciones del ragdoll.

## Crisis, residencia y expansión

La crisis es abstracta, reversible y no diagnóstica. Un día extremo requiere estrés ≥**85** y al menos **3** presiones diferentes: finanzas≥80; desempleo≥30d; apoyo<10; salud<40; hábito≥20; pérdida familiar/pareja/ruptura todavía activa. **No es obligatorio que estén todas ni basta desempleo solo**. Los días extremos suben1 cuando se cumplen condiciones y bajan2 de otro modo.

Después de **14 días extremos**, NORMAL puede entrar en SEVERE_CRISIS con probabilidad diaria **3% × (1−protección)**. Después de **28**, SEVERE puede pasar a SELF_HARM_CRISIS con **0.2% × (1−protección)**. Protección = apoyo ×**0.01**, hasta**0.95**. Los estados priorizan apoyo y descanso. No hay métodos, acciones gráficas ni llamadas a daño/muerte desde crisis; **fatal_crisis_enabled=false**.

Recuperación: **7 días favorables** con estrés<65 o apoyo≥50 y finanzas<50. Severidad sube3 en condiciones extremas, baja4 mejorando o1 de otro modo. Al recuperarse vuelve NORMAL y limpia contadores de crisis; se mantiene historial. Empleo, reservas, relaciones y eventos positivos afectan los mismos factores que causan presión.

Salida mensual: desempleo≥**60 días**, presión≥**80**, apoyo<**20**, sin crisis ni override, probabilidad **8%**. Se planifica viaje LEAVE_CITY hacia `CITY_EXIT_NORTH` (nodo de carretera más al norte, solo datos). **Solo al llegar** marca LEFT_CITY, mantiene vivo al NPC y toda su historia, cancela rutinas/eventos pendientes, libera puesto y quita su candidatura a encuentros/spawn. Hogar queda vacante únicamente si no quedan miembros. La muerte también retira al residente del hogar; cargar un LEFT_CITY no lo reinserta. Al regresar o asignar vivienda se elimina la vacante ocupada, conservando historial.

`register_arrival` recibe una identidad adulta persistente que otro productor crea, nunca clona al empleado anterior. Rechaza protagonista, muerto y residente ACTIVE ya registrado. Puede reincorporar al mismo LEFT_CITY con historia intacta, desempleado, cualificaciones conocidas0–100, vivienda válida y fondos de llegada aplicados solo una vez. Se reanudan agenda y búsqueda. `MONTHLY_RESIDENCY_OPPORTUNITY` se emite una vez por mes con vacantes reales, para el futuro productor de inmigración.

No existían un autobús mensual completo ni funerales físicos. Esta entrega deja APIs/eventos y justificación FUNERAL, pero no afirma haber construido esos sistemas, sucesión, facciones, romance completo, policía ni tráfico autónomo. Los NPC no se sustituyen instantáneamente ni desaparecen al quedar desempleados.

## APIs para futuros productores

Usar `town.logical_npcs.jobs`, con ID persistente y fecha de calendario:

- `hire(id, position_id, at)` / `fire(id, reason, at)` / `ensure_position(workplace, kind, slot)` trabajan sobre posiciones persistentes. No asignar un oficio solo cambiando ropa.
- `report_task(id, task_id, completed, mistakes, at)` integra tareas reales del oficio sin añadir simulación por frame.
- `approve_leave(id, start, end, reason)` para permisos; funerales futuros deben producir el motivo, no asumir un funeral existente.
- `unexpected_expense(id, event_id, amount, at)` para facturas extraordinarias idempotentes.
- Evento externo `WORK_SHIFT_CHANGE` delega en `apply_work_event`: `workplace_id`, `job_id`, `start_hour`, `shift_hours`, `work_days`, `schedule_id`, `schedule_overrides`. Inicio0–23.99, duración0.5–12h, días0–6. Cambio de horario conserva turno activo y aplica los nuevos siguientes; un traslado explícito liquida horas, libera posición y contrata en `<edificio>/TRANSFER_<id>_<familia>`.
- `jobs.log_event` / `stability.major_event` para sucesos reales nuevos como PARTNER_BREAKUP/MOVED_HOME. El productor debe emitir una vez por suceso; no duplicar eventos cada consulta. Muertes/avisos/contratos/interacciones/accidentes actuales ya están conectados.
- `register_arrival(id, qualifications, home, funds)` y señal `significant_event` para futura población/transportes. El alta de persona corresponde a Population; no crear un clon desde JobSystem.
- `stability.modifiers`, `risk.probability`, `record(id).last_shift.factors`, `life.decision_weights` sirven para balance y herramientas de desarrollo, no para alterar modelos fuente.

## Correcciones de continuidad y excepción F8

Guardado JSON usa `JSON.stringify(payload, "", true, true)` para conservar precisión. Solo la **cola lógica** usa resolución temporal **0.001 s**, con desempate de clave estable. La cola de sangrado mantiene **time_quantum=0**: redondear umbrales de salud puede reinsertar el mismo evento indefinidamente. La caché de rutas usa posiciones con seis decimales, los destinos por celdas de20m usan el centro de celda, y los desempates de contactos se hacen por ID. Esto evita que pequeñas diferencias de guardado decidan quién llega primero a un encuentro y cambien sueldos posteriores.

La carga no reinserta N/ inmediato para todos ni añade SEARCH cuando ya existe APPLICATION/OFFER. Estado de asistencia, entrevista, facturas, bebidas y viajes sobrevive al streaming. `dispose()` desconecta señales y referencias de los módulos al cerrar para evitar ciclos RefCounted.

**F8 continúa siendo una excepción explícita de pruebas**, no una regla de vida normal. En un NPC vivo limpia daño manteniendo identidad, empleo, avisos, estrés y dinero. Si se usa para revivir uno muerto, vuelve ACTIVE/UNEMPLOYED, conserva historia y comienza nueva búsqueda; no roba el antiguo puesto ya vacante o ocupado. No se usa F8 automáticamente al descargar/cargar, y R no resucita.

## Verificación y límites de medición

Pruebas reproducibles en `verificar_todo.ps1`: empleo, estabilidad, alcohol, riesgo, crisis, bordes, integración, persistencia, escala y física con captura OpenGL. Cada ejecución de Godot termina en **`-- --damage-test`** (la captura agrega `--employment-capture` antes de `--damage-test`). No leer ni modificar la partida real.

La integración produce solo `partida_aislada.json`; persistencia/escala la usan como fixture. Las pruebas recorren un ciclo de buen trabajador→advertencia→recuperación y otro de avisos→despido→vacante→contrato, comparecen y faltan a entrevistas, contrastan dos respuestas a perder trabajo, compra/consumo/cancelación, balance físico sobrio/intoxicado masculino/femenino, accidentes/cuidados/muerte, crisis reversible, salida/regreso, saltos de calendario y guardado/recarga sin duplicación. F11 se abrió y renderizó en Godot.

El ensayo de 1.000 habitantes mide **simulación lógica sin cuerpos 3D**, no 1.000 NPC visibles ni FPS de juego. Los tiempos dependen de esta máquina; las cifras finales y hashes constan al final de este documento y en verificacion_final.json. Los archivos `diagnostico*` y `*_en_curso.log` conservan investigación previa, no son informes de aceptación. Los informes válidos son `verificacion_*.json` listados por `verificacion_final.json` y `final_*.log`.

Una vez exista `entregado.json`, no reejecutar este generador/cierre ni sobrescribir capturas/pruebas de esta versión. Copiar a una nueva revisión para cambios posteriores. Modelos aprobados, cabeza, cuello, proporciones, pelo, UV, pinturas y clips deben permanecer protegidos.

## Resultado verificado

**149 comprobaciones correctas**, sin errores en los diez logs finales. Tres de ellas verifican además residencia después de guardar LEFT_CITY, regreso sin vivienda falsamente vacante y muerte sin reingreso. No se utilizó la partida real.

**Arte protegido: 6480 archivos contrastados por SHA-256, cero cambios.**

Fuente de Nico SHA-256: `a240aa439eabccd471f8e8c694f23507838c2c22893e1b6522c5669acce5534d`.

| Ensayo | Resultado medido |
|---|---|
| 50 NPC / 8 días, mismos servicios de la escena | 4274 ms; 43 empleados, 7 desempleados; 11 personas buscaron trabajo. |
| 50 NPC / 30 días sin cuerpos | 72974 eventos en 13913 ms; cola final 192. |
| 1.000 identidades / 1 día sin cuerpos | 50761 eventos en 8479 ms; cola 3752, 6304 relaciones. Preparación 501 ms. |
| 8 horas en 96 pasos frente a salto único | Error máximo 0.0; mismo dinero, empleo y RNG. |
| Guardar/reanudar y continuar 3 días | Sueldos, rendimiento y RNG coinciden; no se duplican entradas. |
| Física / interfaz | Ambos sexos, consumo compartido, balance, accidente, despawn/respawn y F11; captura OpenGL revisada. |

La prueba de ocho días registra suma de incrementos positivos de saldo $8807; **no es el sueldo bruto agregado**, ya que incluye gastos y otras entradas/salidas. Las cifras de escala son tiempos de avance lógico aislado en esta máquina, no una promesa de FPS ni de 1.000 personajes físicos.


## 21. Justicia, investigación y condenas — entrega Justicia_01

Esta sección sustituye las referencias históricas a policía/justicia pendientes. Los futuros productores de delitos deben usar estas validaciones, sin dar omnisciencia ni volver a duplicar castigos sociales.

# Justicia_01 — justicia, investigación, arresto y prisión

Implementación integrada en la escena normal `Sistema/Escenas/caminata.tscn`. Fuente completa: `Documento de Nico.txt` (95 apartados). Copia previa de código/configuración: `Antes`. Esta entrega continúa Vida_logica_01 y Empleo_vida_01; no reemplaza sus bases de datos, reloj, empleo ni relaciones.

## Uso en el juego

Abrir `Caminar con protagonista.cmd`.

- **J:** abrir/cerrar el expediente: búsqueda actual, cargos pendientes y últimas cinco condenas. El historial completo permanece en los datos.
- **H:** rendirse ante una intervención policial; volver a pulsar permite cancelar antes de la detención. Dentro de una vivienda visitada, H también permite responder y autorizar la entrada del policía que llegó a la puerta. En coche hay que detenerse y salir primero.
- La pantalla de arresto detalla cargos, días de condena, multa calculada/cobrada y número de objetos confiscados. **Cumplir condena** presenta la celda y avanza el calendario hasta la liberación.
- Escapar puede terminar la persecución. Los cargos ya identificados permanecen; los antecedentes tampoco desaparecen al salir de prisión.

Rendición y arresto detienen el uso del arma; la pose se aplica por encima de las animaciones compartidas. Modelos, cabezas, ropa, pelo, UV, texturas pintadas, esqueleto y clips aprobados se conservan.

## Autoridad y persistencia

`LogicalNPCWorld.justice` es un RefCounted. Subservicios: `perception`, `relations`, `police`; `justice_world.gd` es la interfaz y puente para personajes cargados. `justice_pose.gd` es un SkeletonModifier3D compartido, con IK de dos segmentos, rotaciones solamente y mezcla a 3/s. Se desactiva durante daño/ragdoll/vehículo.

Todo persiste dentro de `CharacterLives.world_state.justice_01`, versión 1:

`crimes`, `persons`, `charges`, `pending`, `mask_links`, `social_reactions`, `units`, `operations`, `incidents`, `property_receipts`, `reputation_receipts`, `serial` y marcas de migración inicial.

Cada persona mantiene variables **separadas**: `wanted_level`, `wanted_status`, `wanted_until`, `pending_charges`, `criminal_record`, `incarceration`, `criminal_reputation`, `arrest_policy`, `protected_until`, `known_residences`, `suspect_records`, `surrendered` y contadores de visitas. Antecedentes: `convictions`, `total_time_served` en segundos de calendario, `last_conviction_date` y `crime_types`.

La cola existente admite claves **K/**. Sus eventos son REPORT, DISCOVERY, CONVICTION_NEWS, WANTED_EXPIRE, RELEASE, BOOK, DISPATCH, OPERATION y HOME_CHECK. `pending` reconstruye esa cola al cargar. No hay un Node, Timer o `_process` por NPC fuera de pantalla. Operaciones terminadas quedan como historial; un índice transitorio contiene únicamente las activas.

Reloj único: WorldCalendar, **15 segundos de juego por segundo real**. Fechas, búsquedas, multas, condenas, cooldowns y noticias usan segundos de calendario. Solo contactos físicos, mezcla de poses y transiciones de interfaz usan tiempo real. Dinero único: `WorldSmallObjects.balances`; inventario único: `WorldSmallObjects.records/inventories`.

## Evidencia y conocimiento

Un CrimeEvent conserva tipo, severidad, responsable interno, víctima, lugar, espacio, hora/fecha, arma, lesión/muerte, testigos, pruebas, notificación, sospechoso identificado, resolución y cargo. `true_offender_id` no es conocimiento policial. Un caso interior guarda además `interior_position` en coordenadas locales del suceso; nunca se actualiza con la ubicación secreta posterior del sospechoso.

- Radio inicial de investigación: **100m alrededor del delito**.
- Percepción de testigos: **45m**, campo de visión **140°**; reconocimiento hasta **22m**. Rayos reales, obstáculos, espacio y conciencia se verifican. Una víctima puede percibir el ataque dirigido hacia ella sin tener que estar mirando previamente.
- Observador dormido, encarcelado, muerto, derribado o con salud ≤8 no testimonia en ese estado.
- NPC lógicos: consulta espacial local; línea exterior bloqueada por las huellas de edificios. En interiores se exige la misma ancla/actividad espacial como aproximación conservadora de estar en el mismo cuarto; no se simula percepción a través de tabiques.
- Un testigo conoce el evento y puede no conocer la identidad. Las APIs rechazan pruebas inventadas, fuera de alcance o que no correspondan a una observación válida.
- Reporte de civil: **90s de calendario**; policía testigo directo: inmediato. Un testimonio identificado puede reportarse después de que el responsable se alejó 500m. Reportar exige estar consciente.
- Sin testigos: descubrimiento a los **1800s**, hasta seis reintentos adicionales, solo si alguien válido observa la víctima o detecta sus bienes faltantes. Descubrir el delito no identifica a su autor.
- Máscara válida: `abs(affinity) ≤ 25` impide reconocer normalmente al desconocido; fuera de esa banda puede reconocerlo si lo percibió correctamente. Ver ponerse la máscara vincula durante **1800s**; retirar la máscara a un agresor todavía seguido permite reconocerlo durante la ventana visual de **450s**. Tras perder contacto, una máscara exige un nuevo fundamento de identificación.
- La API de máscara utiliza `masked/mask_valid` existentes; no se creó una prenda ni una tecla nueva para máscaras.

Si un desconocido sale del radio sin ser reconocido, queda el delito sin cargos contra una identidad. La policía no recibe una flecha secreta hacia el jugador. La persecución física navega hacia el último punto observado; las paredes bloquean la visión y también la ruta directa.

## Delitos conectados al juego

El servicio recibe las señales reales del inventario, daño y muerte. Integra hurto, hurto comercial, robo en inmueble, robo mayor (valor ≥500), uso no autorizado de vehículo, amenaza apuntando a una persona, agresión, tentativa y homicidio; la muerte de un policía usa MURDER_POLICE. Amenazar requiere apuntado suficientemente mezclado (≥0.85), traza del arma y víctima realmente alcanzada por esa traza.

Una amenaza y sus impactos posteriores se agrupan por responsable/víctima en un episodio de **900s**. Un impacto con proyectil eleva ese episodio a tentativa; la muerte lo eleva a homicidio. No se cobran repetidamente amenaza + cada bala + muerte como delitos independientes de ese mismo episodio. Múltiples víctimas son episodios distintos y suman condena. Un resultado mortal posterior a una condena genera un caso relacionado FATAL_RESULT y reutiliza el recibo social del incidente original.

Los objetos robados tienen recibos por identidad; el mismo evento del inventario no entra por dos subsistemas. Un vehículo conserva propietario y conductores autorizados, con recibo de episodio de 900s. En la migración inicial se conserva toda titularidad preexistente; el sedán actual o coche guardado como conducido se asigna al protagonista, el patrullero a la comisaría con autorización para sus agentes, y los otros coches actuales a residentes estables.

TRESPASSING, VANDALISM, PROPERTY_DAMAGE, ARMED_ROBBERY y MULTIPLE_MURDER también tienen definición y API para productores concretos. Esta entrega no inventa una IA que decida robos autónomos, un sistema de extorsión, destrucción de edificios o una regla que convierta toda entrada por una puerta abierta en allanamiento. Los NPC usan la misma ley al recibir eventos reales de esos productores.

## Policía y visitas

Se asignan **10 residentes existentes**, sin duplicar población: un jefe, dos sargentos y siete agentes. Se eligen por proximidad inicial a la comisaría, desempate por ID estable; se conserva identidad, apariencia, vínculos, salud y vida. Puesto laboral CIVIC en la comisaría; uniforme del catálogo ya aprobado. El trabajo de campo autorizado cuenta como asistencia laboral. Un policía muerto/incapacitado/protegido por actividad incompatible no se selecciona para responder.

Máximo **4 operaciones activas**, un agente por operación. Despacho: 120s de calendario; actualización lógica: 300s. Buscar en escena: 1800s; visita de casa: 900s. Viaje no completado caduca a las 12h. Una operación que no obtiene unidad reintenta a los 900s. Comprobación física limitada al conjunto cargado y operaciones activas, cada 0.2s reales. Prioridad de presencia de policía en intervención: 400, dentro de los límites globales de streaming.

Contacto de arresto: **≤2m**, percepción real y cooperación/inmovilidad; **1s real** si se rinde, **1.5s** si está quieto (<0.65m/s), incapacitado o detenido. La cooperación NPC se solicita a <6m; estados FLEEING/HIDING/COMBAT no se sustituyen automáticamente por rendición. BOOK ocurre 30s de calendario después de la detención. Si el oficial muere o una protección impide el arresto, se aborta el procesamiento y quedan los cargos.

Wanted 1–5 expira sin nuevos avistamientos a **900/1800/2700/3600/4500s** respectivamente. Se conserva la separación entre terminar la búsqueda y resolver cargos.

| Severidad | Probabilidad de visita | Demora mínima |
|---|---:|---:|
| 1 | 0% | No se programa |
| 2 | 15% | 4h |
| 3 | 45% | 3h |
| 4 | 80% | 2h |
| 5 | 100% | 1h |

La elección es determinista por ID/día; cooldown **8h**, máximo **2 intentos/día**. Una búsqueda inicial fallida puede programar la visita conforme a esa regla. El domicilio inicial del protagonista es el primer safehouse del plano (B0029 en el mapa actual); solo ese domicilio público se registra automáticamente. Casas adicionales requieren `know_residence` con fuente explícita. Hogar inicial NPC: registro público de su vida lógica. No se descubren escondites por consultar sus propiedades.

En casa ausente la policía espera/busca y se retira; los cargos sobreviven. Un NPC cooperativo puede atender el llamado real; no se obliga a despertar a un incapacitado o protegido por misión. Delitos de severidad ≥4 permiten entrada cuando hay prueba de presencia interior (avistamiento real al entrar, reciente ≤30s a ≤5m del acceso). Para leves se requiere respuesta/consentimiento. H desde la vivienda solo autoriza al agente que llegó a ≤4m de esa puerta. Una denuncia dentro de un edificio autoriza visitar la **escena denunciada**, independientemente de que sea vivienda; no revela otro escondite.

La respuesta actual es **a pie** con navegación/streaming existentes. No se implementó un convoy, tráfico policial autónomo ni transporte animado en patrullero. Un NPC arrestado visible tiene rendición/acompañamiento por la ruta del agente y pasa a prisión lógica al llegar a la estación o quedar fuera del conjunto cargado. Fuera de la zona visible, detención exige encuentro lógico y percepción/identidad válidos; no basta un cargo pendiente para teletransportarlo a prisión.

## Condena, bienes y paso del tiempo

Suma de días por cargos no resueltos; reincidencia **1.0 / 1.1 / 1.2**, tope 1.2; redondeo hacia arriba y máximo **90 días**. Modificadores principales se expresan por tipo de delito, lesión/muerte, policía víctima y suma por víctimas, sin cálculo jurídico complejo. Las cifras de cada delito constan en la tabla de configuración al final.

Multa calculada por suma; pago hasta el saldo disponible, nunca saldo negativo ni deuda nueva. Se confiscan objetos robados vinculados a los cargos y objetos marcados `illegal_weapon`. Se conservan QUEST_ITEM, STORY_ITEM y MISSION_REQUIRED_ITEM salvo `mission_confiscation_allowed`. No se declara ilegal automáticamente la PPK de prueba ni se crea un sistema nuevo de licencias/compra de armas.

Intake detiene sangrado como estabilización médica; no cura HP, no repara extremidades ni resucita. Traslado de caídos conserva pose y longitudes del rig, busca un destino libre de muebles/paredes y reconstruye las representaciones físicas del cuerpo al cambiar de espacio para no conservar contactos del lugar anterior. No cambia límites articulares, masas ni configuración de daño aprobada.

El menú pausa el reloj mientras se revisa. Después se usa la celda existente de la comisaría B0001, presentación breve de 1.4s reales, fundido y saltos de hasta un día por frame a través del **mismo calendario y cola lógica**. Avanzan fecha, estación, clima, necesidades NPC, sueldos, gastos, entrevistas, relaciones, temporizadores y liberaciones. No se simulan todos los frames físicos de esos días.

Necesidades del jugador se mantienen mientras está preso; al salir: **ENERGY90, HUNGER70, THIRST70, BLADDER80**. No se agregan necesidades. Salida al exterior de la comisaría, expediente persistente y controles restablecidos. Guardar/cargar conserva condena y reanuda el flujo; si quedó una liberación pendiente se completa una sola vez.

NPC: `logical.incarceration` y el dato de justicia se vuelven a vincular al cargar. `npc_id/start/end/jail/sentence_days/charges/conviction_id/release_location` conservan identidad y fecha. Preso no trabaja, no vuelve a casa ni aparece en calle; puede representarse en anclas de celda si está cargada esa prisión. Sale exactamente en fecha y retoma su vida con el mismo ID. Muerte cancela procesos propios y no resucita por liberación ni streaming.

Protecciones: `NORMAL`, `SCRIPT_CONTROLLED`, `TEMPORARILY_PROTECTED` hasta una fecha futura. Un override existente `MISSION_EVENT` también protege del arresto sistémico. La API rechaza protección temporal sin vencimiento válido.

## Relaciones y reputación

Una reacción social requiere conocer delito **e identidad**, y relación significativa con responsable/víctima. Bandas: conocido25–49, amigo50–74, cercano75–100. Desconocidos sin conexión no pierden afinidad por noticias globales. Víctima directa sí puede reaccionar aunque fuera desconocida.

Penalidades base = puntos medios de los rangos de Nico. Tabla al final. Se conserva afinidad inicial en el recibo, evitando cambiar de banda y volver a castigar por el mismo caso. Delito violento de severidad ≥3 presenciado directamente multiplica ×1.25. Vínculo con víctima agrega el mayor peso pertinente: pareja45, familia40, amigo cercano25, amigo15, compañero8, jefe12, subordinado12, facción10; se usa 100% para homicidio/severidad5, 50% para otra violencia y 20% para propiedad. Víctima directa: mínimo30 violencia / 8 propiedad. Pérdida máxima acumulada por caso: **70**.

Personalidad usa `record.personality_type` si existe; el sistema social actual guarda -1/0/+1, que se interpreta como SERIOUS/INTELLECTUAL/FRIENDLY. No se reemplaza la personalidad global. LOYAL/REBELLIOUS/MATERIALISTIC no reducen violencia; NERVOUS/FRIENDLY/TOUGH/ROMANTIC no modifican propiedad. Multiplicadores exactos al final. No se agregó la probabilidad opcional de negarse a denunciar.

Recibo único por observador + incidente. Denuncia, arresto, condena y cargar partida no repiten la pérdida; un delito agravado aplica únicamente la diferencia. Noticias de condena llegan a la hora a contactos existentes con afinidad ≥25 y contactos significativos de la víctima, nunca a toda la ciudad. `CRIME_REACTION` entra en los eventos sociales que alimentan la estabilidad existente; se conserva el duelo.

`criminal_reputation` jamás aumenta por herir, matar, robar, wanted, multa o cárcel. Única API de aumento: `award_criminal_work`, con recibo persistente y fuente CRIMINAL_JOB/CRIMINAL_MISSION/FACTION_WORK; rango0–100. No se generaron misiones criminales ni facciones nuevas.

## API para próximos productores

Todos los accesos desde `town.logical_npcs.justice`:

| API | Uso |
|---|---|
| `emit_crime(kind, offender, victim, position, space_id, detail, evidence, id)` | Crear un hecho real; evidencia se observa/valida, un ID existente no duplica. No usar para acusaciones ficticias. |
| `add_witness(crime_id, evidence)` / `report(witness, crime_id)` | Validar observación y transferir conocimiento almacenado. |
| `notify(crime_id, reason)` | Autoridades saben que existe el suceso; no identifica por sí solo. |
| `weapon_threat(id, victim)` / `vehicle_taken(id, vehicle)` | Adaptadores de eventos existentes compartidos con NPC. |
| `perception.change_mask(id, enabled, valid=true)` | Cambiar máscara preservando observadores que lo vieron. |
| `know_residence(id, building, source)` | Añadir conocimiento explícito de domicilio. |
| `set_arrest_policy(id, policy, until=-1)` | Protección de historia. |
| `detain(id, officer)` | Requiere cargos, política y contacto comprobado; no es un comando mágico de cárcel. |
| `sentence(id)` | Previsión de cargos/días/multa/reincidencia; sin mutación. |
| `release(id, at)` | Respeta fecha final; idempotente. |
| `award_criminal_work(id, receipt_id, amount, source)` | Reputación criminal por trabajo explícito, una vez. |

No escribir directamente `suspect_id`, `charge_created` o `wanted_level` desde una IA nueva. Los viejos eventos ARREST/INCARCERATE/RELEASE/WANTED/HOME_SEARCH se redirigen a validaciones actuales. La antigua copia paralela de castigos de robo/daño social queda desactivada cuando justice está presente.

## Verificación y mantenimiento

Todos los ensayos usan `-- --damage-test` y fixtures aislados. `partida_prueba.json` es exclusivamente QA; no se leyó ni se modificó el guardado real. `verificar_todo.py` agrupa suites; la evidencia final autoritativa está en `verificacion_final.json`, los `final_*.log` y sus hashes. Los logs de iteraciones anteriores se conservan como diagnóstico, no son el resultado final.

`auditar_cambios.py` compara runtime con Antes y verifica SHA-256 de arte aprobado. `huellas_entrega.json` fija código, datos, documentación, pruebas y capturas de esta revisión. Una vez creado `entregado.json`, **no reejecutar estas herramientas encima de la entrega**: copiar a una revisión nueva.

Los ensayos de 1.000 identidades son simulación lógica sin cuerpos; no equivalen a 1.000 personajes físicos ni prometen FPS. El salto de 90 días es un límite de condena verificado, no un simulador de prisión física continua.

## Configuración exacta de delitos

| Tipo | Severidad | Días | Rango de diseño | Multa | Violento |
|---|---:|---:|---|---:|---|
| TRESPASSING | 1 | 1 | 0–1 | $25 | No |
| VANDALISM | 1 | 1 | 1–2 | $50 | No |
| PETTY_THEFT | 1 | 2 | 1–3 | $50 | No |
| SHOPLIFTING | 2 | 2 | 1–3 | $75 | No |
| PROPERTY_DAMAGE | 2 | 2 | 1–3 | $100 | No |
| MINOR_ASSAULT | 2 | 4 | 2–5 | $100 | Sí |
| SERIOUS_ASSAULT | 3 | 6 | 4–8 | $200 | Sí |
| VEHICLE_THEFT | 2 | 5 | 3–7 | $200 | No |
| BURGLARY | 3 | 7 | 4–10 | $250 | No |
| WEAPON_THREAT | 3 | 6 | 4–10 | $200 | Sí |
| ARMED_ASSAULT | 4 | 11 | 7–15 | $350 | Sí |
| ARMED_ROBBERY | 4 | 14 | 10–20 | $550 | Sí |
| MAJOR_THEFT | 4 | 14 | 8–20 | $500 | No |
| ATTEMPTED_MURDER | 4 | 22 | 15–30 | $750 | Sí |
| MURDER | 5 | 30 | 20–40 | $1000 | Sí |
| MULTIPLE_MURDER | 5 | 40 | 30–50 | $1500 | Sí |
| MURDER_POLICE | 5 | 40 | 30–50 | $1500 | Sí |

Penalidades sociales base (conocido / amigo / cercano):

| Delito | Conocido | Amigo | Cercano |
|---|---:|---:|---:|
| PETTY_THEFT | 0.5 | 1 | 0.5 |
| VEHICLE_THEFT | 2 | 3 | 2 |
| BURGLARY | 4 | 4.5 | 3 |
| MINOR_ASSAULT | 3.5 | 6 | 5 |
| SERIOUS_ASSAULT | 5 | 8 | 7 |
| ARMED_ROBBERY | 6 | 9 | 7.5 |
| ATTEMPTED_MURDER | 12 | 14 | 15 |
| MURDER | 11.5 | 20 | 22.5 |

Multiplicadores de personalidad: PROFESSIONAL ×1.2, NERVOUS ×1.15, FRIENDLY ×1.1, LOYAL ×0.8, TOUGH ×0.85, REBELLIOUS ×0.75, MATERIALISTIC ×0.85, SERIOUS ×1.1, ROMANTIC ×1.15, INTELLECTUAL ×1.0.

Alias sociales: MURDER_POLICE/MULTIPLE_MURDER→MURDER; SHOPLIFTING/VANDALISM/TRESPASSING/PROPERTY_DAMAGE→PETTY_THEFT; ARMED_ASSAULT→SERIOUS_ASSAULT; tipos sin fila específica usan [2,3,2].

## Resultado verificado

**185 comprobaciones correctas en 11 suites**, sin errores ni avisos de objetos pendientes en los logs finales. Rendición, resolución, celda y liberación se revisaron con render OpenGL. La revisión adicional del herido detectó un destino que intersectaba mobiliario; se corrigió comprobando volumen libre y altura respecto al suelo, manteniendo marco y pose al transferir el cuerpo. Pasó nuevamente en modo gráfico y sin ventana. No se utilizó la partida real.

**6480 archivos de arte contrastados por SHA-256: cero cambios.** Fuente de Nico SHA-256: `2d7fcce25816ca5e07d4a813c461ae7c024c3988c667d32c9131f442ee15297e`.

| Suite | Comprobaciones |
|---|---:|
| arranque | 5 |
| casos | 40 |
| condenas | 33 |
| social | 17 |
| fisico | 20 |
| domicilio | 9 |
| persistencia | 14 |
| escala | 10 |
| eventos | 19 |
| interior | 7 |
| herido | 11 |

| Ensayo | Resultado medido |
|---|---|
| 50 NPC / 90 días | 217821 eventos, 46937ms, cola final 203. |
| 1000 identidades / 1 día | 47331 eventos, 8914ms, cola 3788, 6717 relaciones. Preparación: 611ms. |
| Cuerpo herido en traslado | 348 muestras de pose final; error máximo de longitud 0.00000021m. Salud 7/100 conservada, sin elevar el cuerpo sobre el suelo en la celda/salida. |
| Ronda de pruebas | Testigos, máscaras, conocimiento, condenas, multas/objetos protegidos, relaciones, domicilios, interiores, persistencia y señales reales de daño/robo. |

Los tiempos de escala son mediciones aisladas de avance lógico en esta máquina, no FPS. Las capturas y archivos `verificacion_*.json` preservan el detalle; `corrida_final.json` corresponde a la ronda conjunta inicial y las suites físicas tienen además revisiones posteriores registradas en los logs finales autoritativos.


## 22. UI, controles y Player Menu — UI_01 (2026-09-07)

### Fuente y autoridad

Documento completo de Nico (86 apartados) preservado en `Documentacion/UI_01/Documento de Nico.txt`, originalmente attachment `cc8df261-b851-4da6-853f-da80ab1f5dc7/pasted-text.txt`. Nico añadió «si ves que faltan controles agregalos». Elegir dentro del sistema sin preguntas. Entrega verificada con167 comprobaciones en6 suites con render, teclado/ratón inyectados y guardados aislados.6480 archivos de arte/rig/UV/animaciones sin cambios SHA-256. Antes/ guarda respaldo previo; no ejecutar integrar_ui.py o pruebas sobre evidencia sellada. Detalle completo, muestras, algoritmos y límites en LEEME.md y verificacion_*.json; final_*.log autoritativos.

### Arquitectura

- `pueblo_caminata.player_menu` CanvasLayer45 se instala tras justice_ui/npc_life_debug. `player_menu.gd` es dueño de entradas y presentación. `ui_controls.gd` comparte estilo/navegación; `player_context.gd` arbitra contexto; `player_ui_data.gd` proyecta conocimiento; `player_map.gd` dibuja mapa público sin cargar recursos3D.
- Menú único5 pestañas: STATUS/CONTACTS/INVENTORY/MAP/RECORDS. UI_02 sustituyó las antiguas etiquetas españolas por esas etiquetas inglesas; los identificadores y funciones originales continúan. `mode` vacío/PLAYER/PAUSE, `pages` pila. Atajos I/M nunca crean otro inventario/mapa. A/D cicla, W/S navega, E confirma, Esc retrocede. Listas siguen foco, ratón permite selección y scroll.
- Pausa de menú: PROCESS_MODE_ALWAYS de UI, `get_tree().paused=true`, `CharacterLives.hold_time("player_menu",true)`. Restaura exactamente la pausa previa y otros holds, controles/órbita/cursor; no reactiva a quien tiene incapacidad/traslado/custodia. Borra `_fire_requested` al abrir/cerrar. Movimiento y animación quedan congelados; no altera sus clips.
- Diálogos/menús pequeños bloquean input, no pausan mundo. Conservan conversación/cámara y TALK/GIFT. Cierre por invalidación, distancia, desaparición, traslado o golpe; `opening_hit` también detecta daño ligero en conversación. Single-action E usa directamente los controladores de objeto/baño/puerta; dormir mantiene selector1–8h original. Múltiples acciones auto/comercio usan menú pequeño. NPC mission/favor/romance/follow se agregan con `register_action(id,valid,execute,label="")`; callback valid controla presentación y ejecución. Sin implementar esas mecánicas futuras ni botones bloqueados ficticios.
- HUD: salud; PPK y magazine/reserve si equipada; resistencia si<98 y fuera del auto; wanted activo con5 indicadores; una interacción; avisos temporales (cambio de dinero3s). Necesidades/reputación/expediente/datos internos fuera del HUD permanente. Avisos de necesidades mantienen umbrales y cooldown anteriores. Ventanas de depuración solo explícitas.

### Interacciones y objetos

- Árbitro cada.15s, E revalida. Score menor: `.55*(distancia/límite)+.65*(1-alineación)-prioridad`; rechaza alineación<-.10. LOS jugador+cámara con máscara1, permite collider objetivo o golpe final≤.35m. Prioridad objeto.05, fixture.02, rendición.3; resto0. Límites objeto1.5m, fixture1.7m, cama2m (selector previo1.65 horizontal), puerta exterior2.4m/interior2.5m, auto2m y detector previo de manija1.35m, NPC según social.json, policía5m. Aim oculta/deshabilita interacción, nunca roba LMB de disparo.
- Un solo almacén de objetos y dinero: WorldSmallObjects. Categorías UI FOOD/DRINKS/GIFTS/TOOLS/CLOTHING/ELECTRONICS/VALUABLES/COLLECTIBLES/MISC/IMPORTANT_ITEMS/WEAPONS; solo categorías presentes. Alias legacy DRINK→DRINKS, BOOK→COLLECTIBLES, ELECTRONIC→ELECTRONICS, WATCH→VALUABLES, TOOL→TOOLS, KEYS/DOCUMENT→IMPORTANT_ITEMS. PPK no se convirtió en copia de inventario: el arma sigue componente de personaje.
- Muestra nombre/valor/ganancias y SIN PAGAR o ROBADO según `payment`; acciones válidas. Giftable respeta flag explícito de record/catálogo, reservas, unpaid y objetos protegidos. Dar muestra destinatarios reales≤2m y transfiere mismo ID por backend existente; sin copias ni bonus numéricos en UI. Objetos quest/story/mission y llaves/documentos protegidos frente a dar/soltar/vender, también en APIs de objetos. ConsumeAction reserva hasta terminar, cancelación conserva item; no comer con PPK equipada/en transición.
- Compras usan world_needs.purchase: un objeto físico pagado aparece sobre mostrador/mesa para recoger conE. Mantiene stock, balances, robo de estantes y salir sin pagar. Casa de empeños agrega fixture PAWN sobre Mostrador existente y acceso al backend de venta (radio/watch/tool/book40%,mínimo1), sin menú de comida ficticio. Un trabajador con workplace_id igual al interior y a<3m del propio mostrador accesible puede atender durante WORK. No se creó sistema general de tiendas para ropa/armas.
- Auto: E conductor abre acciones entrar/puerta, otras manijas puerta; E sentado usa request_exit y límites de seguridad originales. No altera modelos o animaciones. Rendición y respuesta a visita por E, juez E cumplir; códigos de justicia/traslados y correcciones de ragdoll herido siguen los de§21.

### Conocimiento / privacidad

- Persistencia UI `world_state.player_ui_01`: version1, contacts/locations/markers, starter_known. No almacena otro NPC ni otro grafo. `has_met_player` del backend social sigue autoridad para contactos/nombres. Antes de conocerse: Civil/Policía/Comerciante/Mecánico según contexto; abrir menú solo no introduce identidad.
- Interacción satisfactoria puede revelar ocupación actual (`employment.job_id`→etiqueta, sin empleo si vacío). Trabajo/residencia/notas solo mediante `reveal_contact(id,field,value,source)` y persona conocida; contacto atendiendo su comercio revela ese trabajo. No infiere viviendas ni posiciones/rutas ocultas. Los datos del contacto son conocimiento, pueden quedar viejos, no seguimiento vivo.
- Lugares: casa inicial, visitas existentes `world_state.doors[id].visited`, nuevas visitas/entradas visibles. Índice espacial50m; cada.5s hasta5 puertas de9 celdas adyacentes, ≤22m, dentro de proyección de cámara y rayo libre. Mapa: calles/río/manzanas/distritos públicos, jugador y lugares revelados. Zoom1–6, centrar usa3; no cargan interiores ni actores desde la UI.
- `add_marker(id,position,label,source,expires_at)`: solo MISSION/PHONE/APPOINTMENT/SCRIPT_REVEAL, caducidad obligatoria futura. Marca posición revelada, nunca actualiza automáticamente desde NPC lógico. Sin puntos de todos los NPC, porcentajes de ruta, grafo ni búsqueda policial interna.
- Bandas de presentación: Enemigo[-100,-76], Hostil[-75,-51], Desagrado[-50,-26], Neutral[-25,24], Conocido[25,49], Amigo[50,74], Amigo cercano[75,99], Vínculo máximo100. Cortes para valores flotantes: <-75/<-50/<-25/<25/<50/<75/<100. Recompensas, familiaridad, tags y voluntad históricos no se modificaron; solo etiqueta mostrada. Sin números de afinidad ni personalidad/multiplicadores.

### Munición y nueva escala criminal

- `character_weapon.gd`: MAGAZINE_SIZE6, INITIAL_RESERVE36, RELOAD_SECONDS1.4. `request_reload/advance_reload/cancel_reload/load_ammunition/store_ammunition` compartidos por jugador y ambos perfiles NPC. Recarga temporizada con la pose existente; no nueva animación de extracción/inserción de cargador. Disparos mantienen cadencia.28s, grip, retroceso, projectile y aim existentes; ahora restan1bala, no disparan vacíos/recargando.
- Al finalizar recarga traslada min(6-magazine,reserve). Cancelar por holster/drop/incapacidad/consumo no cambia balas. Menú pausa el tiempo. Record `weapon_ammo_01={magazine,reserve}`, lectura diferida tras instalar damage y persistencia inmediata al gastar/recargar; no refill al streaming/cargar. Progreso parcial no se persiste, al reingresar no se completa gratis. Sin nueva IA de combate ni suministro automático de munición.
- Fuente UI sustituye explícitamente reputación criminal0–100 por0–500. `Justice.migrate_reputation(state,records)` x5 una vez, clamp0–500, flag `state.reputation_scale=500`; no se repite al cargar. `award_criminal_work` recibos/fuentes autorizadas sin cambios, cap500 y cantidades futuras expresadas en nueva escala. Delitos genéricos no premian reputación.
- Niveles:0–99 Desconocido;100–199 Conocido;200–299 Respetado;300–399 Temido;400–500 Notorio. Wanted0–5/cargos/condenas/tiempo cumplido/afinidad siguen autoridades distintas. Antecedentes muestra historial y multas efectivamente pagadas; menú no modifica pruebas ni culpabilidad.

### Evidencia y límites

Seis suites: UI38, interacciones49, servicios29, vehículo/justicia22, seguridad/persistencia20, runtime9 =167. Pruebas con escena real, ratón/teclado renderizado, objetos físicos y almacenamiento real con rutas aisladas; default50 identidades, máximo24cuerpos. QA runtime dejó avanzar calendario/NPC y verificó pausa; el hold de teardown evita que el calendario programe actividad nueva mientras se destruye la escena de prueba. Esto no es un benchmark de1000NPC físicos. No ejecutó, inspeccionó ni sobrescribió partida real; comandos terminan -- --damage-test. Capturas01–14 en Documentacion/UI_01. Las suites pasan sin errores ni avisos de objetos filtrados en sus logs finales. No borrar errores intermedios; el manifiesto señala evidencia final.

Todos los cambios son código/UI/datos de conocimiento: modelos masculinos/femeninos, cabeza original, rig, UV, texturas pintadas, ropa, pelo, clips y parámetros físicos aprobados intactos. Prueba de identidad de6480archivos en auditoria.json. No se añadieron romance, seguidores, misiones/trabajos del protagonista, armas físicas nuevas ni nuevas prendas. Próximos sistemas deben usar E/contextos y Player Menu, no restablecer teclado lleno de atajos.


## 23. Presentación neón e idioma inglés — UI_02 (2026-09-07)

### Fuente, alcance y límites

Nico aportó 5 PNG en `stuffimadeuseonlyifiask/main menu and hud UI`: `DARK CITY MENU.png`, `main hub.png`, `inventory.png`, `needs.png`, `save screen - load screen too.png`. Son referencias de estilo/colores/estética, no una especificación de nuevas mecánicas. El juego debe estar completamente en inglés. No se añadieron el arma HG-9, rango mafioso, salario del protagonista ni objetos ficticios de las imágenes. Inventario conserva categorías/listas y acciones reales; no se inventaron iconos de productos ni objetos para llenar una cuadrícula. Modelos, texturas pintadas, UV, rig, animaciones, física y reglas de simulación permanecen intactos.

### Presentación e inicio

- `main_menu.gd` + `Sistema/Escenas/main_menu.tscn` es la escena inicial; superficie lógica960×540 adaptada al viewport. `Play Dark City.cmd` y el antiguo lanzador Caminar llaman `Sistema/abrir.ps1 -Caminar`, ahora al menú. Caminar directamente sigue siendo una escena válida de desarrollo.
- Home: CONTINUE solo con autosave recuperable, NEW GAME, LOAD GAME, CONTROLS, EXIT. New Game y Exit piden confirmación dentro del juego. CONTROLS muestra la ayuda real, W/S desplaza. E/Enter confirma y Esc vuelve; ratón también funciona.
- Paleta `#00EF79` verde, `#FB17C8` magenta, fondos `#001910`/`#001B12`. `ui_neon_style.gd` compartido por player/NPC/tienda/descanso/justicia. Alias de consumidor `Palette`; no llamarlo `Skin`, clase nativa de Godot.
- Bordes escalonados: SVG48×48 generado en código → ImageTexture → StyleBoxTexture9patch, márgenes de textura14, contenido configurable. No son imágenes de referencia superpuestas a botones. Skyline2D determinista (seed941117) y ruido ligero, sin cargar el mundo3D en el título.
- Pixelify Sans para texto, Press Start2P para logo/cabeceras/botones principales; antialiasing/subpixel desactivados. Fuentes y licencias OFL en `Sistema/UI/Fonts`. Logo82; controles principales16. Detalles/fuentes oficiales en LEEME.
- `ui_game_hud.gd`: LIFE y salud real arriba izquierda; arma PPK/munición real arriba derecha cuando equipada; stamina condicional y wanted0–5 con estrellas existentes. Ningún valor ilustrativo reemplaza salud o munición. LifeRect18,16,205,79; WeaponRect752,16,188,119 a960×540. Cabeceras LIFE18/WEAPON16 alineadas dentro del marco.
- Minimapa usa `player_map.gd` con `mini=true`, refresh0.12s y escala0.62, calles públicas/lugares conocidos, sin GPS de NPC. Frame18,367,165,136; contenido24,378,152,120. Se oculta con menús/contextos/congelamiento de streaming. Sigue siendo el mismo conocimiento de `player_ui_01`.
- Player Menu conserva STATUS/CONTACTS/INVENTORY/MAP/RECORDS y su pausa. STATUS agrega iconos7×7 nativos y10 segmentos para HEALTH/ENERGY/HUNGER/THIRST/BLADDER. HEALTH es salud, no quinta necesidad. Contextos pequeños mantienen sus reglas de tiempo/propiedad/foco.

### Inglés y compatibilidad de datos

- `game_english.gd` instala Translation con localeen antes de construir UI en main_menu y pueblo_caminata. Fallback/test localeen en project.godot. `Sistema/UI/english.tsv` convierte textos heredados solo para presentación: también avisos compuestos, nombres de objetos/edificios y Label3D de señalización.
- Las propiedades fuente de muchos controles siguen en español; Godot dibuja la traducción. No renombrar IDs, tipos de habitación, keysJSON, nodos, huesos, fuentes de Nico ni nombres propios de NPC. Las pruebas antiguas que consultan Button.text siguen viendo la propiedad original; capturas verifican inglés visible.
- Prioridad exacta, luego frases más largas con límites Unicode. Regex precompiladas y cache de hasta4096 mensajes compuestos; limpieza al superar ese tamaño. No usa red en ejecución. Textos nuevos se escriben directamente en inglés; extender léxico al exponer una etiqueta heredada nueva.
- Textos Canvas dibujados no reciben autotraducción: player_map traduce marcadores explícitamente; debug de streaming usa inglés directo. SpinBox de descanso usa prefix `Sleep`, suffix `hours`, ya que el prefijo español no se traducía automáticamente en su LineEdit interno. Una prueba verifica `Sleep 2 hours` real.
- `ui_language_lifetime.gd` libera el Translation registrado al salir del árbol y limpia referenciaestática. Es necesario: el prototipo sin esa liberación provocaba un crash de Godot4.4.1 al cerrar por el callbackscript que retenía TranslationServer. Las ocho suites finales terminan sin ese error.
- `language_audit.json` registra441 candidatos del código anterior; además se revisaron acciones unitarias, catálogos de objetos/lugares y etiquetas de prendas. Nombres propios como Andrés/Lucía/Pérez se conservan. La política de inglés del juego no exige traducir nombres de archivos ni documentación histórica/visores de arte externos.

### Guardar y cargar sin otro sistema de persistencia

- `ui_save_slots.gd`, COUNT6: `user://saves/slot_01.json`…`slot_06.json`. `Pause → Save game` abre selección; ocupar un slot pide confirmación dentro del menú. Usa `CharacterLives.save_file` original con escritura temporal/atómica y `.bak` de la versión anterior.
- Autosave sigue `user://character_lives_v1.json` con su cadencia original. LOAD GAME muestra autosave y6manuales, vacíos/no legibles deshabilitados. Primario faltante o JSON inválido se recupera con `.bak` válido; `CharacterLives.load_file` también admite primario faltante. Validación de slot: version1, recordsDictionary y world_stateDictionary. JSON.parse local evita ERROR de parser por un archivo inválido esperado.
- Metadata visible: lugar, fecha de calendario y dinero reales. Fecha deriva de `origin_calendar + (game_time-origin_tick)*settings.game_seconds_per_real_second`, default15. Dinero de `small_objects.balances.protagonist`. `world_state.ui_save_preview` guarda location/date/money y se refresca en town.snapshot_world, también para autosaves; legado sin lugar muestra Dark City. No inventar horas jugadas/miniaturas.
- NEW GAME archiva autosave y/o.bak disponibles en `user://saves/archives/autosave_<Unix>_<ticks>.json[.bak]` antes de iniciar. Manuales permanecen; error de copia impide iniciar. No borra autosave para crear la nueva historia; ésta lo reemplazará por el escritor normal.
- `selected_save_path` y `start_new_game` son metadata transitoria del SceneTree, mutuamente excluyente, consumida una vez por `CharacterLives.service` y retirada. Carga los mismos NPC/calendario/objetos/munición/salud; no otra base de datos. Inicio real desde LOAD GAME verificado con salud83, cargador4, reserva30.
- Modo`--damage-test`: rutas exclusivamente`res://Documentacion/UI_02/QA/saves`, incluido autosave y archivo. `CharacterLives` acepta selección de QA solo de ese prefijo cuando save_enabled=false. Nunca usar partidas reales para pruebas. Generación de previews y fixtures no implica inspección de user:// del jugador.

### Verificación y mantenimiento

192 comprobaciones en8 suites con render: UI38, interacciones49, servicios30, vehículo/justicia22, seguridad/persistencia20, runtime9, estilo18, inicio6. Las suites comprueban escena real, entradas, pausa, inventario, servicios, NPC, arma/carga, new-game/requestmetadata, backups dañados/faltantes y transición real menú→mundo. Logs finales sin SCRIPT ERROR/ERROR/fugas/crash; 19 capturas00–18 revisadas. SHA-256 de runtime incluye scripts, escenas, fuentes/léxico, project.godot y abrir.ps1 antes/después de probar.

6480 archivos de arte protegido sin cambios; datosJSON existentes también comparados con Antes. FuentesPNG de las5referencias registradas con huellas; nuevas fuentesUI llevan licencias. Respaldos en `Documentacion/UI_02/Antes`; fuentes, código, manifiesto y evidencia en esa revisión. `entregado.json` sella la entrega: nunca ejecutar prepare/install_style/contexto_final/finalizar ni sobrescribir QA en una entrega sellada; crear UI_03 para trabajo posterior. UI_01 y todas las entregas anteriores preservadas.


## 24. Inicio fijo frente a la casa — UI_03 (2026-09-07)

Nico pidió solamente que New Game inicie siempre en un punto fijo frente a la casa del protagonista para probar el menú y el juego. Se reutiliza `Play Dark City.cmd` → NEW GAME → START NEW GAME; no hay otro proyecto ni menú duplicado.

Único cambio de runtime: `const SPAWN=Vector3(14.5,.175,49.5)` en `pueblo_caminata.gd`, reemplazando `(0,.065,56)`. Casa B0029, puerta `(14.5,.15,48.3)`, normal exteriorZ+1. Spawn1.2m delante de la puerta; margen vertical inicial0.025m sobre veredaY0.15. Tras suelo/física quedaY0.15013. Heading del modeloPI y yaw de cámara0 ya existentes lo orientan hacia la puerta, sin cambiar controlador/cámara/animaciones.

Las posiciones de registros existentes sobreescriben start_point durante `_ready`; el contexto interior también conserva restauración. Continue/Load no resetea a casa. La escena directa sin registro del protagonista y el fallback existente de posiciónY<-2 usan el mismo SPAWN. No modifica la metadata histórica plan.spawn ni regenera pueblo.json/modelos. Streaming se enfoca en start_point y libera movimiento tras sus3frames y colisiones iniciales existentes; no teletransporta por frame ni al reabrir menú.

21 comprobaciones en2tests renderizados, -- --damage-test, solo fixturesUI_03. Inicio de main_menu mediante contrato start_new_game + launch, sin ejecutar archivo/overwrite sobre fixtures selladosUI_02. NewGame11: presencia de botón, escena jugable, punto fijo, suelo, orientación, movimiento y aislamiento. Restauración10: archivo de prueba CharacterLives leído, conserva `(0,.05013,56)` y no salta a casa. Las acciones de selección/archivo del menú siguen las ya verificadasUI_02. Movimiento muestreado60frames con la anticipación de giro actual, distancia0.77049m; no modificar inercia para satisfacer un test demasiado corto. Captura New_Game_Spawn.png.6480archivos protegidos SHA-256 intactos; todos los archivos del manifiestoUI_02 salvo este script coinciden antes de actualizar contexto/AGENTS. Entrega sellada en Documentacion/UI_03; no reejecutar sus pruebas/finalizador encima de evidencia final. No se leyó ni escribió partida real.


## 25. Biblioteca de armas — Biblioteca_armas_01 (2026-09-07)

Fuente autorizada y conservada: `stuffimadeuseonlyifiask/weapons/weapons/readme.txt`, `Prices.txt` y los cinco PNG de esa carpeta. Primero se modelaron las cinco armas desde sus hojas; después se integraron. Entrega verificada con **310 comprobaciones**, cinco `.blend` reabiertos y 6480 archivos de arte anterior intactos por SHA-256. Detalle: `Documentacion/Biblioteca_armas_01/LEEME.md`, `verificacion.json`, cuatro suites QA y `arte_verificado.json`. Entrega sellada; no regenerar encima. `Probar armas.cmd` sí es un acceso de prueba reutilizable, separado de las herramientas QA archivadas.

### Modelos y convenciones

Armas nuevas: `Modelos/Armas/Biblioteca_01/{revolver,pistol,shotgun,smg,rifle}.tscn`, mallas `.res`, fuentes `Edicion/*.blend` con imágenes originales empaquetadas. Volumen 3D, biseles amplios, tubos de ocho lados, guardamontes y asa del rifle con huecos. Triángulos respectivos:380/420/372/356/500. Longitudes de escala del juego:.182/.217/.99/.315/.995m; no son afirmaciones de especificaciones reales. Unidades metros; origen centro del agarre, Godot+Z delante/+Y arriba, Blender-Y delante/+Z arriba. Marcadores Grip/Muzzle/Support; Support del shotgunZ.38 y rifleZ.245 sobre el extremo trasero del guardamanos, ajustados para ambos cuerpos. Texturas PNG byte-idénticas al material de Nico; importador size_limit128, cuatro128×128 y SMG128×85 respetando proporción. Edicion tiene .gdignore.

El revólver reemplaza visualmente la PPK. La carpeta PPK se conserva porque contiene el grip aprobado, proyectil, sonido y efectos comunes. No alterar ni borrar esos recursos por considerarlos obsoletos.

`weapon_library.gd` es la definición compartida; `character_weapon.gd` continúa siendo el componente de protagonista/NPC de ambos sexos. No se añadió decisión de combate autónoma ni una segunda base de NPC. En este rig, brazo derecho anatómico=UpperArm.L/Forearm.L/Hand.L; apoyo izquierdo=.R. Se conservan nombres, rest transforms, jerarquías y longitudes. GripPPK conserva el delta aprobado y GripSupport es su transferencia al apoyo, ambas sobre mallas privadas en memoria; cabeza/cuerpo/UV/animaciones originales intactos. `character_hit_surface.gd` reconoce weapon_support_vertices para que las heridas sigan el cierre de esa mano.

### Manejo y lesiones

Revolver/Pistol requieren1mano; Shotgun/SMG/Rifle requieren2. El apuntado original a una mano se contrastó contra el solver archivado. Llevar cualquier arma sin apuntar conserva las rotaciones entrantes de caminar/correr; el grip modifica los dedos.

En dos manos se gira Chest-.60rad*aim_blend conservando la orientación de Head; no se modifica la geometría. Mano dominante: target shoulder+aim_dir*held_reach+Vector3(-.08,-.085,0); held_reach interpola.20→.075 al bajar la mira según clamp(-aim_dir.y/.6,0,1); SMG usa.195. Apoyo usa el marcador Support del modelo y IK de dos segmentos, solo rotaciones, seguido del recoil dominante. Seguimiento amortiguado34/s,21/s con lesión moderada; atraso limitado a.018m. Con severidad2, variación adicional6mm y puntería multiplicada por injured_aim_rates del apoyo; error de apoyo suma injured_aim_degrees*.8. Las constantes anteriores de daño, ragdoll, retroceso y joints permanecen intactas. Bases de orientación se normalizan; apuntar verticalmente usa eje alternativo para evitar matrices degeneradas.

Severidad existente0NONE/1MINOR/2MODERATE/3SEVERE/4CRITICAL. RIGHT>=3 bloquea toda arma. LEFT>=3 bloquea solo armas de2manos y las suelta si estaban equipadas. LEFT2 las hace más lentas/inestables; brazo libre lesionado no penaliza disparo normal de revólver/pistola. Una lesión durante la extracción cancela la extracción. Se conserva la política de caída temporal del sistema previo; este cambio no obliga a soltar por todo tropiezo. Muerte sigue soltando mediante CharacterDamage. En recarga de1mano con apoyo inutilizable, la pose dominante baja a la cintura; el apoyo sano participa en la carga cuando está disponible.

Orden conservado: locomoción/giros → WeaponPose → DamageAndBalancePose/ragdoll → captura final. **Las poses del SkeletonModifier son temporales**: al soltar se usa `damage.last_world[Hand.L] * grip.gun_bind`, no get_bone_global_pose fuera del callback. Proyectil, muzzleflash e impactos usan la captura final. BoneAttachment3D HeldWeapon en Hand.L tiene interpolación desactivada para no interpolar dos veces.

### Munición, precios y persistencia

| id | manos | capacidad | recarga | duración de ajuste del juego | precio | paquete/precio |
|---|---:|---:|---|---:|---:|---|
| revolver |1|6|ROUND, individual|.65s/cartucho|300|18/25|
| pistol |1|15|MAGAZINE|1.4s|450|30/35|
| shotgun |2|5|SHELL, individual|.85s/cartucho|750|12/45|
| smg |2|30|MAGAZINE|1.8s|1200|30/55|
| rifle |2|20|MAGAZINE|2.0s|1600|40/75|

Toda compra entrega capacidad completa una sola vez y reserva0. Munición separada por tipo. Paquetes acumulativos, sin intercambiarlos entre armas. Se usa exclusivamente `WorldSmallObjects.balances`, su snapshot y CharacterLives; no otra billetera. Una unidad poseída de cada tipo. En los mostradores PAWN de las casas de empeño existentes se ofrece Weapons & ammo; la transacción revalida el fixture real, mismo interior, distancia1.6m, LOS, estado del personaje y saldo. No se inventó un edificio nuevo ni un horario independiente de tiendas.

`record.weapon_loadout_01={selected:String,weapons:{id:{magazine:int,reserve:int}}}` es la autoridad del armamento. `magazine` mantiene su nombre por compatibilidad y significa munición cargada también en cilindro/tubo. `weapon_ammo_01` se migra una sola vez al revólver y se retira; conserva cantidades exactas. Starter gratuito anterior6/36 se mantiene como6/36 del revólver; no es una compra. Selección no rellena; cambiar estando equipado guarda el arma anterior y saca la nueva con la secuencia.90s/contacto.38s existente. Recargas individuales confirman cada cartucho y conservan los ya insertados al interrumpir; cargadores confirman el intercambio al terminar. No se persiste el progreso temporal incompleto.

Intervalos mínimos de prueba por id:.28/.24/.80/.12/.30s. Solo SMG repite al mantener LMB. Perfil balístico compartido sigue siendo el proyectil de prueba existente (`ppk_ballistics.gd`:244m/s, masa, curva y sweep intactos); esta entrega no define un perfil nuevo de calibre, dispersión de perdigones o daño para los demás tipos. Audio existente shotpistol.wav. El tipo real del arma viaja en hit.weapon_id/ImpactEvent/justicia; no se informa PPK para todos los disparos.

Arma caída: elimina la unidad poseída, conserva carga y toda su reserva en `world_state.dropped_weapons[id]`, version2, type, ammunition, transform, velocidades/interior. Frame de guardado=agarre; restauración instancia el tipo correcto independientemente de lo seleccionado. Legacy typePPK/frame de boca se convierte a revólver conservando esa ubicación y sin inventar munición. Masas de props:.58/.85/3.1/2.8/3.4kg; collider simple, layer4/mask1. Se conserva límite20 y radios de virtualización180m/restauración135m. Recoger conE requiere alcance1.6m, LOS, estar capaz y tener el arma guardada; no permite duplicar un tipo ya poseído ni recoger dos veces la misma instancia. Arma perdida no reaparece con2.

### Controles, revisión y límites

Menú central conserva5pestañas. I→Weapons selecciona,2 saca/guarda,RMB mantenido apunta,LMB dispara,R recarga;1 sigue reservado para melee. Selección bloqueada durante transición/en vehículo. HUD inglés muestra nombre/carga/reserva/capacidad del tipo real y ajusta texto para no desbordar. No cambia menú principal, spawn fijo ni guardados UI_02/03.

`Probar armas.cmd` → `Sistema/probar_armas.ps1` → `weapon_playtest.gd -- --damage-test`: mismo pueblo/50NPC, nueva sesión frente aB0029, cinco armas cargadas y tres paquetes por arma solo en esta revisión. Abre Inventory/Weapons. No carga ni escribe la partida real. `Play Dark City.cmd` sigue siendo el inicio normal. Herramientas QA en Documentacion/Biblioteca_armas_01 quedan selladas y deben copiarse a una revisión nueva para futuras pruebas con escritura.

310 comprobaciones:188 mecánica/poses capturadas/recargas/lesiones/caída/persistencia,52 integración con pueblo/menú/compras/streaming,66 conservación de carry/apuntado anterior/ángulos/cambio de ropa,4 acceso de prueba. Revisiones visuales y fuentes Blender adicionales;6480 archivos aprobados sin cambios. Capturas: Weapon_library.png, Weapon_test_launcher.png, Weapons_shop.png, Rifle_HUD.png y vistas de cada arma en ambos modelos. No se ejecutaron QA/finalizadores sellados anteriores ni se tocaron partidas reales.


## 26. Continuidad física — Continuidad_01 (2026-09-07)

Entrega verificada: 183 comprobaciones en 23 suites; 6480 archivos de arte idénticos. Reglas vigentes: los atajos antiguos de transporte/prisión quedan sustituidos por esta sección.

La ciudad utiliza las mismas personas y vehículos durante desplazamientos, turnos, llamadas, arrestos y atención médica. Cuando están cargados, caminan y conducen; fuera de pantalla conservan una ruta con tiempos y progreso. El reloj no los coloca directamente en su destino.

Solicitud original íntegra: `Solicitud.txt`, 87 secciones. Esta revisión se integra en el proyecto existente; no genera otra ciudad, población, sistema de guardado o biblioteca de personajes.

### Probar

Abrir **Probar continuidad.cmd** en la raíz del proyecto. Inicia una sesión aislada frente a la casa B0029 con los mismos 50 residentes. Prepara los desplazamientos laborales en incrementos de 30 minutos, hasta disponer de ambas dotaciones o alcanzar cuatro horas. Esta preparación es exclusivamente del acceso de desarrollo. Nunca carga ni escribe la partida real. El menú normal **Play Dark City.cmd** conserva su horario, punto inicial y comportamiento de guardado.

- **F11:** inspector del NPC seleccionado, tarea, origen/destino, ruta, salida, ETA, progreso, medio de transporte, turno y vehículo asignado.
- **F12:** inspector desplazable de cobertura de puestos, personal de servicio/fuera de turno, relevos, unidades, posición de vehículos y cola de llamadas. Es información de desarrollo, no un GPS de contactos del protagonista.
- **E:** interacción contextual con teléfono fijo/cabina; elegir Police o Ambulance. También permite reportar a un policía próximo de servicio.
- El resto mantiene sus controles: WASD caminar, Shift correr, 2 equipar/guardar, RMB apuntar, LMB disparar, R recargar, Tab/I/M menú/inventario/mapa. Dormir se hace desde una cama accesible mediante el menú existente.

Una llamada puede esperar: actualmente existe **un patrullero y una ambulancia**. Los trabajadores deben llegar antes de atender o salir. Las tiendas representadas no atienden sin un empleado presente en su puesto.

### Arquitectura y persistencia

`CharacterLives` sigue siendo la autoridad de identidad, salud y guardado. `LogicalNPCWorld` conserva su grafo vial/peatonal, planificador y cola de eventos. No hay un Node por NPC descargado ni una segunda base de personas.

`world_state.continuity_01`, versión 1, contiene `staff`, `posts`, `units`, `calls`, `custody`, `events`, `markers`, `report_trips`, `history` y `serial`. La historia retiene hasta 512 entradas; cada puesto hasta 24 relevos. Eventos `C/` comparten la cola existente; supervisión de servicio cada 30 segundos de calendario. El reloj mantiene **15 segundos de juego por segundo real**.

`travel_plan.gd` agrega al recorrido original `traveler_id`, `origin`, `destination`, `departure_time`, `expected_arrival_time`, `route_progress`, `current_status`, `last_position`, `last_update`, `elapsed_distance` y `replans`. Conserva `points`, `lengths`, `distance`, `route_start_time`, `route_end_time`, `route_id` y `transport_mode`. Una interrupción guarda el punto alcanzado; continuar recalcula desde allí y conserva salida y distancia recorrida. La llegada visible depende del movimiento, no de que haya vencido una ETA.

Los autos civiles usan `record.logical.vehicle_trip` y el vehículo propio ya asignado. Secuencia `ACCESS → BOARDING → DRIVING → ALIGHTING → FINAL_WALK`; `last_vehicle_trip` conserva tramos completados. No se crean autos por viaje ni se usa un vehículo de servicio como auto privado. Entrar tarda 2.15 segundos reales y salir 1.85; se abre la puerta, se usa el mismo adaptador de asiento y se sale únicamente detenido. El trayecto de automóvil termina aproximadamente 3.2 m antes del destino vial cuando hay espacio, para poder completar a pie. Una interrupción detiene el auto y conserva la posición.

Guardar en asiento, entrada parcial, escolta, celda, camilla o traslado médico conserva personas, auto, posición, ruta y fase. `seat_progress` guarda progreso, edad, salida, postura inicial, estado de puerta y objetivo. `service_carrier_01` guarda elevación y objetivo de camilla para no sumar otra elevación al cargar. Los modificadores médicos publican su pose mundial real en `damage.last_world`: la captura habitual está suspendida durante restauración de ragdoll y no debe dejar una pose antigua junto a una posición nueva. La verificación comprueba también cercanía del cuerpo a su camilla/vehículo, no solamente longitudes óseas. No se restauran salud, libertad o munición como consecuencia de cargar.

### Trabajo y relevos

Se reutilizan diez policías y nueve residentes existentes para emergencias médicas. No aumenta la población. Tres turnos diarios de ocho horas: **00–08, 08–16, 16–00**, incluidos fines de semana y sin pausa de almuerzo en estos puestos esenciales.

Policía, B0001: `POLICE_DISPATCH`, `PATROL_DRIVER`, `PATROL_PARTNER`; el décimo policía es `POLICE_RESERVE`. Hospital principal, B0002: `HOSPITAL_EMERGENCY_DESK`, `AMBULANCE_DRIVER`, `PARAMEDIC`. B0152 es una clínica, no la base de ambulancias.

`arrived_at` y `work_ready_at` impiden contabilizar trabajo antes de llegar y recorrer el interior. Cuando el trabajador es visible, debe alcanzar su puesto dentro del mismo edificio a menos de 1.3 m. El retraso alimenta el sistema de empleo existente. El uniforme se cambia en el lugar laboral; no a mitad de la calle.

El saliente esencial espera al relevo real. El límite de espera es cuatro horas extra o energía inferior a 15; en ese caso el puesto puede quedar descubierto. Una operación en curso conserva su tripulación hasta volver o completar la transferencia. Para estar disponible se exige empleado vigente en ese lugar, vivo, capaz, sin encarcelamiento/interrupción incompatible y energía mayor que 8. Un puesto descubierto durante 30 minutos puede convocar al policía de reserva existente si tiene energía de al menos 40: viaja desde su ubicación, cubre hasta ocho horas y luego recupera su rol original. El relevo parcial puede conservar al compañero que ya está en la base.

Las reglas universales de desplazamiento se aplican al resto de empleos y rutinas existentes. Esta entrega no inventa nuevos oficios, dotaciones completas para cada edificio vacío ni sustitutos que aparecen de la nada.

### Llamadas, patrullas y vehículos

Cabinas existentes: identificadores estables `PAYPHONE_%04d`, indexación espacial de 100 m. Cada interior activo dispone de un teléfono fijo sencillo junto a la entrada. Usar un teléfono exige mismo espacio, línea de visión y distancia máxima de 1.8 m al acceso. Reporte a policía: hasta 2.5 m, visibilidad y servicio activo. No hay móvil universal.

Un testigo busca una cabina existente, interrumpe su rutina con prioridad 95, viaja y tarda 45 segundos de calendario en reportar. Puede reportar directamente a un agente realmente próximo. El viaje de reporte tiene límite de dos horas y luego la rutina se recalcula desde la ubicación actual.

La llamada guarda identidad, interlocutor, teléfono, ubicación de llamada/incidente, creación, prioridad, receptor, unidad y estado. Prioridades 3/2/1; desempate por antigüedad e ID. Debe existir personal de recepción presente o reporte directo válido. Se elige la unidad disponible con menor ETA vial; nunca se duplica una ocupada. `WAITING` permanece esperando si no hay recursos.

`PATROL_UNIT_01` usa `vehicle_police_001`. `AMBULANCE_UNIT_01` usa `vehicle_ambulance_001`. Conservan condición, tripulación, ocupantes, patrulla, progreso interrumpido y llamadas. Después de atender, recorren físicamente/lógicamente la vuelta a base o la reincorporación a la patrulla. Una avería o incapacidad detiene el vehículo en su posición; repararlo/recuperar la misma tripulación permite reanudar. No resucita ni crea reemplazos.

Control vial físico: objetivo 8 m/s en recta, 4 en curva y 2.1 en giro cerrado; freno ante obstáculos, nueva ruta si no progresa, reversa limitada a 1.7 m/s y 2.8 m con comprobación trasera. Los accesos al auto rodean sus esquinas con margen de 0.4 m. Los respondedores aparcan unos 5 m antes de la escena para no detenerse encima del paciente. El tráfico puede retrasar la ETA; no atraviesan edificios para cumplirla.

### Arresto y atención médica

El arresto requiere un policía real próximo y las reglas de evidencia existentes. La custodia mantiene el movimiento del detenido: escolta a pie, puerta trasera, asiento, conductor/compañero, recorrido por las calles, descenso, puerta de comisaría, pasillo y celda. No se completa al descargar el NPC ni mediante una cuenta atrás independiente de su posición.

El booking exige llegar al punto de ingreso. La reja física cierra después de salir el agente y abrirá al liberarse la sentencia. Aceptar la sentencia no salta días ni mueve al protagonista; puede dormir en la cama permitida de la celda. El objetivo de celda es `(-3.2,.025,4.75)` en el interior; reja en `(-1.2,1.25,4.75)`, apertura deslizante 1.5 m con progreso normalizado a 1.25/s (1.875 m/s). Se conserva el resultado previo de liberación de necesidades: energía 90, hambre 70, sed 70, vejiga 80.

La ambulancia usa conductor y paramédico existentes. Caminan, abren/suben, conducen, descienden y se acercan al cuerpo antes de tratarlo. Estabilizar tarda **150 segundos de calendario / 10 reales** y detiene sangrado; no restaura HP ni lesiones. Los pacientes caídos o con HP menor que 35 se transportan. La camilla básica desplaza el cuerpo íntegro a 0.7 m/s, elevación 0.65 m a 0.22 m/s; no cambia longitudes de huesos. En la ambulancia se conserva una pose rígida en el área trasera. Camilla técnica: 0.62 × 0.08 × 1.8 m.

En una llamada interior, ambos miembros entran por la puerta, recorren las habitaciones y se aproximan a menos de 1.55 m. Fases `ENTERING_SCENE`, `APPROACH_INTERIOR`, `ON_SCENE`, `EXITING_SCENE`, `LOAD_PATIENT`. También salen por el mismo camino si no hay paciente o ha fallecido. El traslado recorre la vuelta al hospital, su puerta y pasillo. Ingreso médico local `(-3.2,.025,11.05)`; hospitalización lógica durante ocho horas con prioridad 100, sin curación automática ni resurrección.

### Puertas, interiores y streaming

Los interiores existentes usan el origen técnico `(0,-120,0)`. Cruzar el umbral transforma posiciones y poses al marco local de esa misma puerta; no omite el trayecto urbano. `continuity_interiors.json` extrae dimensiones y puertas de las 58 escenas existentes. Las rutas internas recorren puertas de habitaciones y pasillo, en vez de unir puntos a través de paredes.

Los NPC entrantes pueden materializarse detrás de la puerta cerrada y caminar hacia adentro. Se añadió un pequeño vestíbulo técnico de runtime detrás del `PortalFront` real; no se editaron escenas de arte. Para cruzar el respaldo grueso de la fachada exterior, `world_portal_passage.gd` aplica excepciones temporales únicamente a ese respaldo localizado: mantiene el suelo y la hoja móvil. El personaje recorre el paso y queda oculto antes de liberar su representación; no hay un salto para corregir navegación.

Se conservan actores/vehículos observados. Los descargados continúan desde su posición capturada con ruta y tiempo; al encontrarlos de nuevo se materializan en progreso coherente. El detector de desarrollo registra desplazamientos inexplicados mayores de 50 m por frame; reconoce carga explícita, herramientas de desarrollo, puertas equivalentes y asiento asociado al vehículo.

### Sueño y límites de esta entrega

El sueño sigue siendo el único salto grande de tiempo del juego normal. Se captura el estado físico antes del avance y se intercalan eventos lógicos y de salud por fecha. Un tratamiento anterior puede impedir una muerte posterior; una hemorragia no tratada puede matar mientras el protagonista duerme. Calendario, empleo, necesidades, economía, justicia, clima y vida lógica continúan por sus sistemas existentes.

Las pruebas incluyen cama real 23:00→07:00, trabajador visible, viaje civil, arresto completo, ambulancia completa, llamada dentro de casa, observación desde dentro del hospital, falta de recursos, avería, relevos y ocho restauraciones de fases. `verificacion.json` contiene el recuento final sin duplicar corridas intermedias. Capturas revisadas y hashes en esta carpeta. Se verifican **6480 archivos protegidos de arte** sin cambios; no se remodelan cabeza, cuerpo, ropa, manos, rig o clips.

La camilla y el ingreso son adaptadores básicos de estado/pose; no una nueva animación detallada de manos sujetando camilla. No se añade una simulación avanzada de prioridad de tráfico. Se verificó la población actual de 50 NPC; no se afirma rendimiento medido para 1000. Algunas pruebas headless emiten al cerrar un aviso genérico de 1–2 `RefCounted`; sus comprobaciones funcionales pasan. La cola de recursos queda vacía y la auditoría no detectó instancias de nuestros scripts retenidas; la causa exacta del aviso no está demostrada. Las últimas pruebas renderizadas de arresto, hospital e inspector terminan sin ese aviso.

`entregado.json` sella esta revisión al terminar. Después, no reejecutar los generadores ni QA archivados sobre esta evidencia: crear una revisión nueva. El acceso **Probar continuidad.cmd** sí es reutilizable y no pertenece a ese conjunto de herramientas archivadas. Nunca usar partidas reales para QA; todos los procesos de Godot de esta revisión usan `-- --damage-test`.


### Convenciones técnicas adicionales

No cambiar el RIGHT anatómico=.L ni jerarquía/rest transforms: los adaptadores de asiento/camilla se instancian temporalmente sobre el mismo rig. Prisión e ingreso médico conservan la celda/sala existente. Station front door=(-165,.15,236.3), normal+Z, rotation0; hospital door=(251.5,.15,63.7), normal-Z, rotation2. Origen interior(0,-120,0), suelo local≈.025. PortalFront real está en depth/2 y no coincide con front_exit (0.85m más adentro). Vestíbulo técnico: piso1.55×.12×1.5, ladosx±.86, altura3 y fondo a face+1.42; puntos entrantes z=face+.36. world_portal_passage usa caja(.65,1.45,.65) en door-normal*.9+UP*.95, solo StaticBody; cruza hacia door-normal*1.3 y devuelve colisión al quedar>.9m delante o>2.6m lejos. Mantener hoja AnimatableBody y piso. Desvío peatón/persona: distancia de paso.56 y tangente.78; no saltar destinos finales al omitir waypoints tapados por autos. Preparación de salida interior y work_ready_at usan distancias por puertas de habitaciones/pasillo. Devolver llamada sin paciente/deceso requiere EXITING_SCENE y misma puerta antes de volver al vehículo. Pose guardada por hueso=[x,y,z,qx,qy,qz,qw]; transformaciones de portal son rígidas. No confundir la posición raíz actual con la pose de un frame antiguo: carrier/medical seat publican last_world explícitamente. prepare_unload toma snapshot antes de liberar asientos y drena loader hasta8000ms; dispose limpia referencias a propietarios. No usar antiguos preparar.py/integrar_*.py: no son idempotentes. El estado de entrega se sella en entregado.json; no ejecutar QA archivado de esta revisión ni anteriores después de sellar. Probar continuidad.cmd es la única entrada reusable nueva.

## 28. EN CURSO — Job tasks / work orders (2026-09-07)

**Actualización2026-09-08: leer Documentacion/Tareas_laborales_01/ESTADO_EN_CURSO.md antes de continuar.** Describe la implementación y pruebas posteriores a los párrafos iniciales de abajo, incluidos rutas reales/negocios/servicios/autobús/facciones. NO hay entrega final. 71definiciones,5054targets,12h2359órdenes/2000completadas. Facciones20ahora afiliación separada de empleo legal, no nómina falsa;bus físico1vehículo regionalnuevo al primer evento. Persistencia en prueba resume_load_04 tras corregir register_npc antes de reconstruir work. Párrafos siguientes son corte anterior, no lista vigente de todos los pendientes. No dar por terminado hasta comprobar los pendientes concretos del ESTADO_EN_CURSO.

Solicitud activa: C:/Users/Nico/.codex/attachments/dd3deea1-0059-42ab-a81e-f20bf1ab471e/pasted-text.txt (2337 líneas, 106 apartados). Copia íntegra en Documentacion/Tareas_laborales_01/Solicitud.txt. NO está entregada ni sellada. No confundir lectura, definiciones y pruebas iniciales con todas las profesiones terminadas. La solicitud manda fases: 1 núcleo universal, 2 retail/mechanic/taxi, 3 delivery/sanitation/security, 4 police/paramedic/fire, 5 restaurant/hospital/hotel/industry/construction/office/utilities/terminal, 6 small businesses/factions. Continuar automáticamente sin preguntas ni agentes. Todas las interfaces del juego en inglés.

Respaldo previo: Tareas_laborales_01/Antes incluye Sistema/Scripts, Sistema/Datos, project.godot, AGENTS.md y este contexto. Ragdoll_y_poblacion_01 y todas las entregas anteriores siguen selladas; no reejecutar ni sobrescribir sus QA/generadores. Las nuevas pruebas van exclusivamente a Tareas_laborales_01 y siempre -- --damage-test, nunca partidas reales.

Implementación EN CURSO: npc_logical_world.gd.work posee work_order_system.gd (RefCounted) y módulos worker_task_controller.gd, work_task_world.gd, work_task_services.gd, work_task_player.gd. Persistencia única world_state.work_orders_01: orders,workplaces,workers,targets,reservations,requests,receipts,pending,factions,serial,hazards. Cola existente claves T/<worker> y T/PUMP. PUMP300 segundos de calendario, comprobación física30s, jugador15s. No nodos para empleados descargados. Definiciones68 en job_tasks_01.json, 129 bindings de interiores aprobados leídos por build_data.py; no se modifica arte. job_task_definition.gd valida campos; work_order.gd crea instancias. Estados PENDING/ASSIGNED/IN_PROGRESS/INTERRUPTED/BLOCKED/COMPLETED/FAILED/CANCELLED. Progreso/pasos/tiempos/targets/recibos serializables. Limitar cola24 por workplace e historial32 por trabajador. Finales antiguos se podan después de2d si no están en historial; revisar aún límites de recibos.

Pruebas actuales, NO entrega final: core_01 13/13 (compila y crea servicio/población420/3054targets); prototypes_07 18/18 (reposición tras caminar/trabajar, misma unidad física, deduplicación; mecánico herramienta+inspección+pieza+reparación +20 condition; JSON básico); life_01 6/6 (12h naturales de calendario con2037órdenes completadas/2308creadas en41402ms). Las iteraciones prototypes_01..06 conservan fallos de desarrollo. Taxi y jugador todavía requieren pruebas completas, al igual que guardado/carga real de fixtures, visualización física y demás fases. No afirmar completado todo.

Decisiones: inventario real WorldSmallObjects.records/inventories/balances sigue autoridad. Seed finito una vez por workplace, 6provisiones,6partes,1herramienta, más los pickups originales con mismos IDs; no repetir al cargar. STOCK pasa a HELD y WORLD en estante; partes CONSUMED al reparar. Herramientas reutilizadas se sueltan donde acabó el trabajador, nunca regresan mágicamente al depósito. Cuatro meshes caja sencillos de runtime work_package/work_stock/work_part/work_waste; no alteran archivos protegidos. work_task_presentation.gd muestra prop en Hand.L y HUD compacto del jugador. Se integra npc_activity_pose.gd con acentos por acción (fuentes/rig/animaciones intactos), npc_physical_routine.gd camina hacia target, world_npc_calendar.gd materializa el paso vigente. En objetos exteriores, target.space conserva edificio semántico pero travel_location usa marcador WORK_ACCESS_* en el grafo existente. task_position debe guardar interior:bool para no mezclar metros de ciudad con coordenadas locales del interior a Y=-120. Ya corregido ese error en los prototipos.

Player: npc_employment.gd ahora admite protagonist como empleado, sin añadirlo a sim.ids ni darle IA/rutina autónoma. Inicializa record.employment por mismo registro, contratos/puestos/report_task/review/end_shift/payroll existentes. No sueldo solo por presentarse. work_task_player observa tiempo interactuando en target. UI Tab > Status > Work & employment, vacantes solo en mostrador del edificio actual; E contextual toma/interactúa/ficha; botón de dejar turno/renunciar. Debug worker/workplace dentro de esa página. Revisar todavía toda la ruta jugable, controles/pagos y presentación.

PENDIENTES concretos de la implementación actual: taxi/player y fases3–6 todavía no verificadas ni completas; recipe declarations no garantizan flujo funcional. Sustituir antiguo city_work_fleet "llegar/esperar900/regresar" por órdenes reales; delivery debe usar VEHICLE_CARGO y entrega en mano; sanitation debe referir props reales y basura finita; security rutas múltiples; servicios deben conservar incidents/crew/vehículos reales y prioridades/interrupciones. Refinar cooking/serving/payment (no vender stock como si eso ya fuera cocinar), hotel actual rooms, herramientas/fixtures, factions legales separadas, terminal bus mensual físico. Restaurar targets dinámicos/markers al cargar; verificar reservas, rotura de herramientas/targets, salida temprana y salarios remotos. Protagonista taxi debe transportar pasajero real. No activar clases falsas como forklift. Falta manifiesto de arte, pruebas visuales y nuevas instrucciones/LEEME/entregado. No finalizar hasta verificar lo autorizado, o informar con precisión cualquier límite real.

## 27. Cadáveres y núcleo de población — Ragdoll_y_poblacion_01 (2026-09-07)

Implementados en el proyecto activo Dark City Project: optimización de cadáveres y núcleo del documento maestro de población/empleo/turnos/desplazamientos/autos/estacionamiento/vida fuera del trabajo. Fuentes originales completas en Documentacion/Ragdoll_y_poblacion_01/Solicitud_ragdoll.txt y Solicitud_poblacion.txt. Voces expresamente fuera. La lectura anterior NO había significado implementación; no repetir esa confusión.

La ampliación ya está habilitada con expand_population=true en Sistema/Datos/city_population_02.json. Play Dark City.cmd mantiene menú normal y New Game frente a B0029. Probar poblacion.cmd → Sistema/probar_poblacion.ps1 → population_playtest.gd -- --damage-test abre el mismo mundo como sesión nueva aislada, sin leer ni escribir partidas reales ni adelantar horas. No usar las herramientas archivadas para abrir el juego. Ctrl+F11 inspector de población; Ctrl+F10 cadáveres; F11 desplazamientos; F12 servicios; F10 ropa. Estos atajos no sustituyen los controles ingleses de UI_02/03.

### Cadáveres: arquitectura, estados y valores

character_ragdoll.gd conserva los19 PhysicalBone3D y el solver articulado anterior (proyección propia24 iteraciones, solver nativo48 por espacio mientras hay simulación). Masas corporales originales75kg masculino/62kg femenino, límites angulares/joints/longitudes y autocolisión selectiva intactos. No es una conversión a animación FK ni una nueva malla o rig.

Estados: ACTIVE_RAGDOLL → SETTLING → SLEEPING_CORPSE; FAR_CORPSE es registro descargado. freeze_corpse se difiere hasta después de capturar la pose final mundial. Desconecta los19 cuerpos del espacio físico, detiene simulador/proyección/coordinador, aplica la pose congelada una sola vez y crea corpse_proxy.gd: StaticBody layer2/mask0 con3 cápsulas (tronco y dos piernas). Proxy de tronco radio.15m; piernas.085m escalado al cuerpo. No reescribir huesos dormidos en cada frame ni mantener un segundo collider vivo interno.

Despertar reconstruye los mismos19 cuerpos y constraints desde la pose guardada exacta, luego aplica impulso localizado. corpse_wake_impulse=.12N*s; despertar por vehículo a partir de.45m/s; aviso activo18s; tolerancia de reposo.035m y.18rad; amortiguación de asentamiento12/s cuando el núcleo apoyado está por debajo de.18m/s y ya pasó la edad mínima. El cadáver vuelve a dormir cuando se asienta; no se borra por rendimiento, no pierde identidad ni se reinicia a pose neutral.

character_damage.gd detiene AI/física del actor, apuntado/arma, IK/balance, locomoción/animación y parpadeo al morir; cierra ojos/boca. El coordinador de daño trabaja únicamente mientras el cuerpo se mueve. La caída viva conserva el proceso original de levantarse. Dormidos guardan corpse_physics.settled y pose; al cargar restauran el cuerpo desde el archivo. vehicle_body.gd despierta antes del bloqueo por obstáculo con transferencia de momento reducida y excepciones breves de contacto350ms, sin tratar el cadáver como pared inmóvil. Un ocupante muerto se separa del adaptador de asiento en su pose mundial capturada; no se restaura collider ni modificadores vivos ni se arrastra el cuerpo con el auto.

Ctrl+F10 muestra estados/cuerpos activos/constraints/métricas; oculto tiene process=false. F10 de ropa excluye Ctrl y el menú no consume Ctrl+F10 dentro del auto. Ctrl+F11 usa city_inspector_open para conservar el bloqueo de controles aunque termine una pausa de streaming; se integra con other_modal del menú.

### Población, persistencia y contratos

Un CharacterLives, un NPCLogicalWorld, la misma cola de eventos y WorldCalendar15 segundos de calendario por segundo físico. city_population.gd integra los recursos, no crea una base paralela de NPC. world_state.city_population_02 guarda identity_seeded/contracts_seeded, created_ids, initial_target, assignments, workplaces, households, parking, work_fleet, rides, history, next_step, next_immigration y serial de inmigración. prepare se ejecuta antes de presencia/streaming. Genera solo las identidades iniciales faltantes hasta420, contando muertos ya existentes; al recargar no vuelve a generar descriptores, autos o contratos. IDs nuevos iniciales city_resident_%04d; futuros immigrant_%06d, evitando colisiones. Protagonista queda separado del censo420. Edades adultas; no niños.

Objetivo inicial420, no límite rígido:368 empleados/facción/flexibles,24 desempleados,28 jubilados. Ampliar más exige ajustar conjuntamente cuotas de puestos, vivienda, flota y plazas; cambiar target_population solo no migra un censo ya inicializado. Las altas posteriores siguen el sistema mensual real. Conserva los IDs, salud, heridas, apariencia, coches propios y muertes de partidas antiguas. No rellenar fallecidos uno por uno. La tabla siguiente sustituye las cuotas antiguas50/10policías/9médicos y los turnos uniformes00/08/16 de §26; sus restantes reglas físicas siguen vigentes.

| Sector | Adultos |
|---|---:|
| POLICE | 18 |
| MEDICAL | 20 |
| FIRE | 12 |
| TAXI | 12 |
| SANITATION | 8 |
| UTILITIES | 10 |
| RETAIL | 40 |
| FOOD | 32 |
| INDUSTRY | 45 |
| MECHANICS | 12 |
| CONSTRUCTION | 20 |
| OFFICE | 30 |
| SECURITY | 12 |
| DELIVERY | 10 |
| HOTEL | 12 |
| TERMINAL | 8 |
| MAFIA_OLD | 10 |
| MAFIA_MODERN | 10 |
| OTHER_SERVICES | 18 |
| UNEMPLOYED | 24 |
| RETIRED | 28 |
| PART_TIME | 18 |
| SELF_EMPLOYED | 11 |

city_resources_02.json habilita92 accesos residenciales existentes en el plan en memoria para480 adultos; no cambia escenas ni arte. Las64fachadas antes no entrables recibían interior="": prepare ahora les asigna la escena aprobada del MISMO tipo tomada de un edificio existente (Modelos/Mundo04/Interiores/{type}.tscn). No alcanza con cambiar enterable; las92rutas de recurso y los7tipos se verifican cargables, y world_collision_bindings.prepare_interior añade sus PortalFront/PortalRear reales. Capacidades: casa pequeña2/mediana4/grande6; apartamento pequeño12/mediano18/grande32; safehouse2. B0029 del protagonista excluida. No inventar otra casa al descargar un NPC. Hogares/vínculos HOUSEHOLD/coches compartidos persistentes; muertos/libres se excluyen del uso de capacidad.

El contrato está en record.employment.fixed_contract y position.contract: id,pool_id,sector,role,start_hour,end_hour,cycle,cycle_name,cycle_offset,cycle_epoch_day,arrival_buffer_minutes,lunch_seconds,assigned_at,duty_role. No cambia por día/carga/consulta; únicamente un evento real de empleo/turno o contratación en otro puesto. hire hereda el contrato del puesto, incluyendo función de conductor de ambulancia; on_hired actualiza ocupación, trabajo, transporte y autoridad pertinente. vacate elimina autoridad policial/eligibilidad de despacho/holders y el roster del puesto; conserva historial y no borra la persona. No ofrecer vacantes de mafia mediante búsqueda laboral ordinaria.

employment_schedule.gd normaliza Godot domingo0 al lunes0 de config. MON_FRI=[0,1,2,3,4], TUE_SAT=[1,2,3,4,5], WED_SUN=[2,3,4,5,6], más4_ON_2_OFF y5_ON_2_OFF por día absoluto+offset fijo. Turnos nocturnos atraviesan medianoche. Búfer policía12min/médico10min; otros valores por pool en JSON. next_shift usa ruta real calculada +1200s de calendario para acceso/asiento/parking/caminata y120s de acceso laboral más el búfer. Esto programa la salida; no aumenta velocidad ni transporta al empleado.

| Sector / pool | Horario | Ciclo | Roles y cantidades |
|---|---|---|---|
| POLICE / POLICE_01 | 8–16 | MON_FRI | CHIEF:1 |
| POLICE / POLICE_02 | 6–14 | 4_ON_2_OFF | SERGEANT:1, POLICE_DISPATCH:1, PATROL_OFFICER:3 |
| POLICE / POLICE_03 | 14–22 | 4_ON_2_OFF | SERGEANT:1, POLICE_DISPATCH:1, PATROL_OFFICER:4 |
| POLICE / POLICE_04 | 22–6 | 4_ON_2_OFF | SERGEANT:1, POLICE_DISPATCH:1, PATROL_OFFICER:2 |
| POLICE / POLICE_05 | 10–18 | 4_ON_2_OFF | POLICE_RELIEF:1 |
| POLICE / POLICE_06 | 18–2 | 4_ON_2_OFF | POLICE_RELIEF:1 |
| MEDICAL / MEDICAL_01 | 7–15 | 4_ON_2_OFF | DOCTOR:2, NURSE:3, PARAMEDIC:2, HOSPITAL_SUPPORT:1 |
| MEDICAL / MEDICAL_02 | 15–23 | 4_ON_2_OFF | DOCTOR:1, NURSE:3, PARAMEDIC:2, HOSPITAL_SUPPORT:1 |
| MEDICAL / MEDICAL_03 | 23–7 | 4_ON_2_OFF | DOCTOR:1, NURSE:2, PARAMEDIC:2 |
| FIRE / FIRE_01 | 6–14 | 4_ON_2_OFF | FIRE:4 |
| FIRE / FIRE_02 | 14–22 | 4_ON_2_OFF | FIRE:4 |
| FIRE / FIRE_03 | 22–6 | 4_ON_2_OFF | FIRE:4 |
| TAXI / TAXI_01 | 6–14 | 5_ON_2_OFF | TAXI:4 |
| TAXI / TAXI_02 | 14–22 | 5_ON_2_OFF | TAXI:4 |
| TAXI / TAXI_03 | 22–6 | 5_ON_2_OFF | TAXI:4 |
| SANITATION / SANITATION_01 | 5–13 | 5_ON_2_OFF | SANITATION:5 |
| SANITATION / SANITATION_02 | 13–21 | 5_ON_2_OFF | SANITATION:3 |
| UTILITIES / UTILITIES_01 | 7–15 | 4_ON_2_OFF | UTILITIES:6 |
| UTILITIES / UTILITIES_02 | 15–23 | 4_ON_2_OFF | UTILITIES:2 |
| UTILITIES / UTILITIES_03 | 23–7 | 4_ON_2_OFF | UTILITIES:2 |
| RETAIL / RETAIL_01 | 7–15 | 5_ON_2_OFF | RETAIL:20 |
| RETAIL / RETAIL_02 | 15–23 | 5_ON_2_OFF | RETAIL:20 |
| FOOD / FOOD_01 | 6–14 | 5_ON_2_OFF | FOOD:10 |
| FOOD / FOOD_02 | 14–22 | 5_ON_2_OFF | FOOD:12 |
| FOOD / FOOD_03 | 18–2 | 5_ON_2_OFF | FOOD:10 |
| INDUSTRY / INDUSTRY_01 | 6–14 | 5_ON_2_OFF | INDUSTRY:18 |
| INDUSTRY / INDUSTRY_02 | 14–22 | 5_ON_2_OFF | INDUSTRY:17 |
| INDUSTRY / INDUSTRY_03 | 22–6 | 5_ON_2_OFF | INDUSTRY:10 |
| MECHANICS / MECHANICS_01 | 7–15 | TUE_SAT | MECHANICS:7 |
| MECHANICS / MECHANICS_02 | 15–23 | TUE_SAT | MECHANICS:5 |
| CONSTRUCTION / CONSTRUCTION_01 | 7–15 | MON_FRI | CONSTRUCTION:14 |
| CONSTRUCTION / CONSTRUCTION_02 | 9–17 | MON_FRI | CONSTRUCTION:6 |
| OFFICE / OFFICE_01 | 8–16 | MON_FRI | OFFICE:18 |
| OFFICE / OFFICE_02 | 9–17 | MON_FRI | OFFICE:12 |
| SECURITY / SECURITY_01 | 6–14 | 4_ON_2_OFF | SECURITY:4 |
| SECURITY / SECURITY_02 | 14–22 | 4_ON_2_OFF | SECURITY:4 |
| SECURITY / SECURITY_03 | 22–6 | 4_ON_2_OFF | SECURITY:4 |
| DELIVERY / DELIVERY_01 | 6–14 | 5_ON_2_OFF | DELIVERY:6 |
| DELIVERY / DELIVERY_02 | 14–22 | 5_ON_2_OFF | DELIVERY:4 |
| HOTEL / HOTEL_01 | 7–15 | 4_ON_2_OFF | HOTEL:4 |
| HOTEL / HOTEL_02 | 15–23 | 4_ON_2_OFF | HOTEL:4 |
| HOTEL / HOTEL_03 | 23–7 | 4_ON_2_OFF | HOTEL:4 |
| TERMINAL / TERMINAL_01 | 5–13 | 4_ON_2_OFF | TERMINAL:3 |
| TERMINAL / TERMINAL_02 | 13–21 | 4_ON_2_OFF | TERMINAL:3 |
| TERMINAL / TERMINAL_03 | 21–5 | 4_ON_2_OFF | TERMINAL:2 |
| MAFIA_OLD / MAFIA_OLD_01 | 10–18 | 5_ON_2_OFF | BOSS:1, UNDERBOSS:1 |
| MAFIA_OLD / MAFIA_OLD_02 | 12–20 | 5_ON_2_OFF | LIEUTENANT:2 |
| MAFIA_OLD / MAFIA_OLD_03 | 14–22 | 5_ON_2_OFF | SENIOR_MEMBER:2, MEMBER:2 |
| MAFIA_OLD / MAFIA_OLD_04 | 16–0 | 5_ON_2_OFF | MEMBER:2 |
| MAFIA_MODERN / MAFIA_MODERN_01 | 10–18 | 5_ON_2_OFF | BOSS:1, UNDERBOSS:1 |
| MAFIA_MODERN / MAFIA_MODERN_02 | 12–20 | 5_ON_2_OFF | LIEUTENANT:2 |
| MAFIA_MODERN / MAFIA_MODERN_03 | 14–22 | 5_ON_2_OFF | SENIOR_MEMBER:2, MEMBER:2 |
| MAFIA_MODERN / MAFIA_MODERN_04 | 16–0 | 5_ON_2_OFF | MEMBER:2 |
| OTHER_SERVICES / OTHER_SERVICES_01 | 8–16 | 5_ON_2_OFF | OTHER_SERVICES:10 |
| OTHER_SERVICES / OTHER_SERVICES_02 | 12–20 | 5_ON_2_OFF | OTHER_SERVICES:5 |
| OTHER_SERVICES / OTHER_SERVICES_03 | 20–4 | 5_ON_2_OFF | OTHER_SERVICES:3 |
| PART_TIME / PART_TIME_01 | 8–12 | 5_ON_2_OFF | PART_TIME:6 |
| PART_TIME / PART_TIME_02 | 12–16 | 5_ON_2_OFF | PART_TIME:6 |
| PART_TIME / PART_TIME_03 | 17–21 | 5_ON_2_OFF | PART_TIME:6 |
| SELF_EMPLOYED / SELF_EMPLOYED_01 | 9–17 | TUE_SAT | SELF_EMPLOYED:5 |
| SELF_EMPLOYED / SELF_EMPLOYED_02 | 10–18 | TUE_SAT | SELF_EMPLOYED:3 |
| SELF_EMPLOYED / SELF_EMPLOYED_03 | 12–20 | TUE_SAT | SELF_EMPLOYED:3 |

workplaces guardan puestos/ocupantes reales, capacidad basada en edificio, minimum_staff y normal_staff. normal=ceil(asignados/2), mínimo=ceil(normal*.4), esenciales principales mínimo2. Presencia cuenta AT_LOCATION en el trabajo, work_ready_at y, si físico, llegada al ancla interior (distancia<1.3m). Abierto al público requiere franja de puestos y personal real suficiente. La elección de destino usa horarios planificados, no crea personal si falta. Actualización de cobertura cada300s de calendario recompone employee_ids/current_staff y supervisor_id desde puestos actuales. Policía/médicos usan llegada real y relevos existentes; guardias no se reemplazan mediante despawn/spawn.

### Autos, pasajeros y estacionamiento

Nueva partida:190 privados +44 servicio=234 vehículos persistentes. Los10 coches demo antiguos se omiten solo al crear el nuevo registro maestro; migrar no elimina autos ni cambia propietarios/posiciones existentes por cumplir un número. Protagonista/auto conducido y propiedades de fallecidos se preservan. owner_id/authorized_drivers/household_id separados de logical_driver y logical.service_vehicle_id; un coche de servicio no se convierte en coche privado por asignar conductor.

Flota: policía6+reserva1; ambulancias3; bomberos2 truck+rescate1van; taxis10; saneamiento3truck+1van; utilities2van+2pickup+1truck; delivery6van; construcción4pickup+2truck. Reserva policial se usa si las regulares no son operables. FIRE/RESCUE son recursos de guardia usando chasis aprobados: no se crearon modelos de bombero ni un sistema de incendios. city_work_fleet da recorridos y acompañantes reales a saneamiento/utilities/delivery/construcción, tareas900s, hasta6h de recorrido y regreso; requiere>=3h restantes para iniciar. No se generan nuevas personas o vehículos por demanda de una llamada.

Distribución orientativa de transporte:50%privado/35%a pie/6%pasajero/4%taxi/5%trabajo; no cuotas diarias. <300m favorece caminar,300–700mixto,>700coche/taxi. Hogares pueden compartir el mismo coche autorizado disponible; si ocupado/inoperable queda motivo y se camina. Volver a casa con un auto apartado permite recuperarlo aun en trayecto corto. Carpool avanzado expresamente diferido por la solicitud.

325 plazas reales de cordón9.5×2.8m, repartidas por la ciudad. Centro a halfroadwidth−1.45m; excluye cruces13m, edificios, puertas4m y props2.5m. Tipos RESIDENT_RESERVED90, SERVICE_BAY, EMPLOYEE, PUBLIC,CURBSIDE; no inventar garajes ni entradas por vereda. Una reserva no mueve el auto: búsqueda50/100/200/400/1200m, preferencias asignado/empleado/público/cordón; exclusión ocupado/reservado. Lease8h, prolonga1h si conductor sigue en viaje. depart libera ocupación conservando lease; consume solo al llegar alineado: posición<1m/rumbo<.3rad. Aproximación10m+4m; conductor físico termina a<.65m/rumbo<.3rad y baja a1.6m/s. Si no hay plaza se usa alternativa más lejana/a pie, sin superponer vehículos. Un auto movido independientemente libera su antigua ocupación en la revisión periódica si se separó>1.5m; al bajar el protagonista se puede registrar su estacionamiento real alineado, sin reposicionarlo.

civil_vehicle_trip.gd: caminar al auto real → puerta/asiento2.15s → ruta → aproximación/parking → salida1.85s → caminar al destino. city_passengers comparte ese vehículo y sus puertas/asientos; conductor espera a todos sentados y pasajeros salen antes del conductor. No sustituir por acoplamiento instantáneo. Guardado de pasajero: ride.state/due/driver/vehicle/destination/activity/fare/paid y seat_progress{age,exit,progress,standing,target,door_amount,door_target}. Deserialización probada entrando, viajando y saliendo. La muerte separa el cuerpo del asiento sin reiniciar pose ni activar IA; conductor muerto frena, libera autoridad del vehículo y permite salida de supervivientes.

Taxi: auto real libre y operable, conductor presente/en turno, al menos1h restante, pasajero a<=300m caminando y dinero suficiente. Tarifa5+ceil(distancia*.025), transacción al finalizar una sola vez; si el saldo cambia durante el viaje registra deuda. Conserva actividad final (ocio/trabajo/casa). Luego vuelve el mismo taxi a su base. No hay despacho telefónico de pickup ni taxi creado al pedirlo.

### Vida diaria, llegada mensual y cola

npc_daily_plan.gd guarda daily_plan_02 una vez por día/persona: day,seed,generated_at,events,contract_id,money_at_creation,revision. 8h de sueño según turno/commute (nocturnos duermen de día). Trabajo/servicio/overrides/necesidades conservan prioridad. Ocio de55–145min ponderado por fondos/gasto reducido/personalidad/lluvia/necesidades/horarios/tiempo de caminar/relaciones existentes, con memoria12actividades. No regenerar al consultar o cargar. El contrato y el plan libre son datos distintos.

Llegada mensual programada para día1 a las10:00: min(50,capacidad residencial libre,floor(vacantes/2)). Usa parada bus_station existente, nueva identidad adulta, fondos iniciales300 una vez, registro desempleado y ruta a vivienda real; no clona autos ni borra habitantes. La matrícula de empleo/necesidades se crea ANTES de que el planificador elija rutina de un recién llegado.

npc_event_scheduler.put redondea hacia ARRIBA al próximo milisegundo, nunca antes del instante solicitado. El redondeo anterior hacia abajo creó un bucle infinito de boarding al resolver.820 antes de.8204 y reencolar el mismo timestamp. Test específico conserva este fix. Se retiró el trace temporal de1000eventos; no procesar420NPC por frame. Presencia usa objetivo32/vehículos20, máximos configurados40/25; lejanos son registros/rutas, no físicas completas.

### Verificación y límites exactos

212 comprobaciones en14 suites seleccionadas;6480 archivos de arte/UV/rig/clips protegidos byte-idénticos SHA-256. QA exclusivamente -- --damage-test. Migración50→420 conserva muerto y propietario;48h completas, empleo/relieves/trips/parking/vida variable; guardado real atómico/carga conserva contratos/vehículos/defunción. Caídas vivas de ambos sexos recuperan NORMAL. Ragdoll masculino/femenino prueba disparo secundario, coche real, sueño/reconstrucción y longitudes. Parking físico sedán: error.610m/rumbo.0454rad/máximo paso.0318m; pasajeros viajan y salen en el mismo auto. Pruebas completas y hashes en verificacion.json; no sumar ensayos fallidos anteriores como éxitos.

Perfil de cadáver inmóvil en escena aislada: uno, física.96283→.14455ms; diez,5.56598→.62311ms (~88.8%menos), cuerpos activos200→0. Los perfiles acelerados --fixed-fps son pruebas funcionales, no benchmarks; usar únicamente before_realtime_* / after_realtime_* para comparar. Muestreo renderizado city_view_04:38.36FPS promedio del monitor durante600frames en el spawn, Radeon integrada,2NPC/4autos cargados; duración real dependiente del rendimiento. No es benchmark de toda la ciudad ni de1000NPC. El muestreo headless dio60FPS pero NO representa rendimiento gráfico. Picos de arranque/streaming siguen existiendo.

Hay advertencias ObjectDB/RefCounted solo al cerrar algunas QA aisladas, registradas en verificacion.json. No hay SCRIPT ERROR en los logs finales seleccionados. No declarar que todas las ejecuciones históricas están libres de avisos.

NAVEGACIÓN PEATONAL URBANA: city_pedestrian_graph.gd deriva168 segmentos de vereda (margen.95m dentro del borde) y126 cruces perpendiculares entre las42cuadras existentes. Solo WALK usa ese AStar; los autos conservan el grafo vial. Accesos proyectan a vereda a<=35m con prueba contra huellas de edificios (índice espacial32m), sin cortar edificios ni atravesar diagonalmente intersecciones.197 recorridos reales hogar-trabajo quedan enteramente sobre esa red; QA comprueba un trabajador a180–300m, continuidad/mitad de viaje y separación de rutas de autos. No se modificó geometría/arte de las calles. En las zonas periféricas sin veredas existentes conectadas se conserva la ruta vial anterior; no inventar pisos sobre río/puentes.

PENDIENTE DEL OTRO DOCUMENTO DE COHERENCIA MUNDIAL: interiores seamless, navegación detallada de zonas periféricas y restantes ajustes de colisión/veredas. Interiores aún usan ORIGIN(0,-120,0) y los adaptadores de puerta previos. No afirmar que absolutamente todos los documentos anteriores quedaron completos. Esta revisión aplica el ragdoll y el núcleo maestro, incluyendo los recorridos urbanos por vereda, con esas dependencias explícitas.

Esta revisión conserva Antes/ y las fuentes. Al sellarla con entregado.json, no volver a ejecutar build_master_data/build_city_resources/cerrar_contexto/finalizar ni sus QA archivadas encima de la evidencia; crear revisión nueva. Probar poblacion.cmd es el acceso reutilizable. Todas las revisiones anteriores permanecen selladas. No preguntas intermedias ni subagentes; leer PROJECT_CONTEXT.md antes de asumir decisiones antiguas.

## 28. Tareas laborales — Tareas_laborales_01

Solicitud vigente: Documentacion/Tareas_laborales_01/Solicitud.txt (106 apartados,
dd3deea1-0059-42ab-a81e-f20bf1ab471e). Leer LEEME.md, IMPLEMENTACION.md y
VERIFICACION.md de esa revisión antes de cambiar este sistema. El estado final
lo determina entregado.json; si no existe, la revisión sigue EN CURSO.

Proyecto activo: Dark City Project. Sin preguntas ni agentes; UI del juego en
inglés. QA siempre -- --damage-test, jamás partidas reales. Probar trabajos.cmd
es reutilizable y arranca una sesión aislada de comercio con empleo y turno;
Play Dark City.cmd mantiene New Game, menú y spawn B0029 originales.

Un sim.work (WorkOrderSystem) en CharacterLives.world_state.work_orders_01,
73 definiciones en Sistema/Datos/job_tasks_01.json, 129 bindings / 2166 marcadores
y 5054 targets iniciales. WorkerTaskController común. Cola T/<worker>, T/PUMP
cada 300 segundos de calendario, T/BUS cada 30; reloj original 15:1.
Estados PENDING, ASSIGNED, IN_PROGRESS, INTERRUPTED, BLOCKED, COMPLETED, FAILED,
CANCELLED. Cola24 / historial32 por trabajador. Finales >2 días fuera del historial
se podan; recibos >7 días si no existe la orden. Pedidos cancelados sin recibo
liberan también su source_key; colas se limpian de referencias finalizadas.

MOVE/TAKE/WORK/PLACE/LOAD/UNLOAD/GATHER/DRIVE/EXTERNAL usan objetivos e inventario
existentes. task_position incluye interior:bool; interior local ORIGIN(0,-120,0),
conducción comprueba acceso exterior, no el mostrador local. Cambios de posición
del coche/objeto obligan acercarse de nuevo, conservando el tiempo pendiente.
Alta prioridad interrumpe/reanuda la misma orden. Reservas, carga y herramientas
se conservan incluso si la interrupción ocurre antes del primer paso: la duración
se inicializa una sola vez al reanudar. Los objetos
persisten; herramientas se sueltan en la posición real, con ITEM_RETURN/..., no
en un almacén remoto. Muerte/salida cancela órdenes y libera reservas.

Suministros finitos, seed una vez:6 alimentos/6 piezas/6 paquetes/1 herramienta
por lugar; bares6 bebidas. Misma autoridad WorldSmallObjects records/inventories/
balances. STORED/WORLD -> HELD -> VEHICLE_CARGO -> DELIVERED según tarea.
Tres entregas precargadas, recogida bins12/dumpsters25, capacidad100; EMPTY_TRUCK
intercalado si lleno y al terminar. Helpers viajan en CityPassengers reales.
Flota inicial distribuida entre workplaces; nunca se reubican coches guardados.
No proveedor infinito ni economía cerrada de reposición automática implementada.

Protagonista usa mismo contrato, nómina y resultados sin entrar en sim.ids.
E contextual; Tab > Status > Work & employment; aceptar vacante/clock in/
clock out/quit en puesto real. candidate_score>=40. Tres puestos públicos
RETAIL/MECHANIC/TAXI; migración public_positions_version2 reconoce MECHANICS.
Salario del jugador requiere participación: acción cercana/progreso caminando
o conduciendo; estar parado sin tarea no acumula trabajo. NPC conserva evaluación
de asistencia/guardia original; no se inventan tareas completadas por asistencia.
Skill adicional+.015/tarea legal, máximo100; calidad pondera el factor de tareas
de performance mediante clamp(promedio/80,.65,1.1), NO multiplica salario directo.
Nómina horaria original, promociones, excusas y ganancias por turno conservadas.
Detalles de duración/calidad/grados están documentados exactamente en IMPLEMENTACION.

Descanso1500s a mitad del turno +/-30min según hash; cobertura esencial. Una ronda
aplaza descanso para no abandonar coche/carga. Al volver: start=at+30, hasta1500s,
limitado por cierre de turno; reinicia estado aplazado en contrato siguiente.
work_loan_to/assigned_vehicle impide reutilizar el vehículo del jugador por otro
empleado; al salir conserva return_vehicle hasta devolverlo a <=35m de su base
y salir. Se retira solamente el permiso temporal que agregó ese préstamo.
RETURN_WORK_VEHICLE admite DELIVERY/SANITATION/UTILITIES/CONSTRUCTION/FIRE.

Taxi real: fare5+ceil(distancia*.025), NPC taxi disponible dentro300m; jugador
detenido con cliente dentro60m. Boarding bloquea acelerador; salida cerca destino
<35m/speed<.2; mismo pasajero/saldo, sin duplicar cobro. Colisiones añaden errores
con intervalo75cal. Mecánico: car.condition+20 hasta100, parte consumida, fee12;
TEST_VEHICLE es inspección estacionaria6min, no vuelta en carretera.

Hospital examen -> tratamiento acotado+5 salud/.05CHEST. Hotel precio original25,
checkout11:00 día siguiente, bed_XX real y misma WorldCalendar.rentals; no doble
asignación entre marcadores/clientes. Checkout limpieza35 -> tarea ->READY.
Cocina mismo ingrediente/plato -> mesa -> cobro/consumo. Haircut8 (solo catálogo
aprobado), laundry4/limpieza100, bank1/recibo real. Infraestructura pierde.5/día;
condición<80 -> reparación100. Funeral preparación tras24h + conocidos caminan,
no traslado/borrado automático de cadáver. OPEN/CLOSE afecta disponibilidad real.

Policía/EMS enlazan servicios/custodia originales. Patrulla>=3 índices y600s;
respuestas completan desde llamada RESOLVED y regreso real, conservando returned_at
para no perder el cierre cuando retoma patrulla. NO_PATIENT_FOUND y PATIENT_DECEASED
no son éxito. Bomberos requieren2 existentes+coche+tool+punto real; rescate pide
MEDICAL con mismo patient_id sin mover/curar paciente. El jugador puede usar ruta
manual de bomberos. Guardia manual completa de policía/ambulancia aún no adaptada:
esas operaciones las controlan NPC, no un policía autónomo falso para el jugador.
Peligros explícitos/API; hasta6 representaciones dentro50m; sin propagación física.

Bus persistente TERMINAL_COACH_01; escena nueva terminal_bus.tscn. Largo10.15m,
ancho2.45m, alto3.06m,8500kg,max_speed16,acceleration1.8. Día1 10:00; cupo
min(50,hogares libres,floor(vacantes/2)). Entrada[-455,.08,-504] a B0021parada
[246.5,.08,-500.7]. Observado usa física, sin llegada forzada por hora. ReservaIDs
y viviendas antes, activa residente en puerta tras45s y luego cada75s; WALK a
terminal y vida normal. Vuelve por carretera, se reutiliza. No conduce jugador;
ventanas oscuras, no50asientos modelados. No coches nuevos por cada pasajero.

20 miembros MAFIA_OLD/MODERN separados del empleo legal; mismos IDs/roles/base/
horarios en faction_members / faction_membership. Antiguos puestos FACTION_DUTY,
empleo legal independiente permitido. Tesorerías1500 cada una, stipend5 finito,
experience+1 propia. Guard/watch/contact/meeting/escort/parcel/payment. Cobro20
default (1..500), personas presentes y CONTACT/id reservado; nunca nómina legal.

Arte/rig/cabezas/ropa/UV/hair/clips preservados:6480SHA sin cambios. Solo acento
procedural de trabajo y objetos cargados; derecha anatómica Hand.L. No animación
artesanal por cada herramienta, simulación de proveedores, cirugía, forklift o
progreso de obra grande. Prioridades urbanas/periferia/seamless anteriores siguen
pendientes (§27); voces no trabajadas. No afirmar todos los documentos completos.

Godot4.4.1: algunas advertencias ObjectDB al cerrar pruebas aisladas. Se conserva
resume_01 con señal nativa11 al destruir/recrear todo dentro del mismo proceso.
Persistencia verificada con guardado real y carga en procesos separados. La prueba
life_final tuvo errores RID del renderer dummy; headless ahora carga un recurso
por tick en hilo principal (world_stream_loader). Render normal conserva I/O en
background. Nuevas pruebas identificadas en VERIFICACION, sin borrar fallos previos.
Pruebas con420 residentes no garantizan1000NPC/FPS. QA de transacciones posiciona
fixtures explícitos; pruebas físicas de taxi/NPC/bus son independientes.

Tras entregado.json: no ejecutar generadores, finalizadores ni QA archivados en
esta revisión ni sobrescribir evidencias. Copiar a revisión nueva. El lanzador
reutilizable en Sistema nunca debe escribir en Documentacion/Tareas_laborales_01.

## 29. Biblioteca de interiores/trabajo y registro final de tiendas (2026-09-08)

**More Models entregados, 2026-09-08:**21láminas de Nico en
`stuffimadeuseonlyifiask/Materials/More Models` producen21assets compartidos:
`EXTRA_WALLCAB_001–006`, `EXTRA_CABINET_004–010`, `EXTRA_SEAT_001–008`.
Catálogo `Modelos/Complementos_interiores_03/catalogo.json`:6muebles de pared,
7armarios de piso (el blanco con patas se conserva así aunque llegó en ARMARIOS
FLOTANTES) y8asientos.21Blender empacados/reabiertos,21GLB,21escenas Godot
guardadas/recargadas,21atlas512×512;21fuentes originales preservadas.5508triángulos.
22hojas comprobadas sin ventana (20bisagrasY y2tapasX) y1cajón deslizante.
Sin colocación ni nuevos controladores, colisiones o inventarios. Vidrio/espejo
son imágenes opacas; silla plegable en pose abierta sin mecanismo animado.
Guía `Documentacion/Complementos_interiores_03/PARA_INTEGRAR.md`; el MISMO
`Documentacion/Traspaso_revestimientos_01/TEXTO_PARA_CODEX.md` incluye esta tanda.
**Preferencia explícita de Nico: solo assets utilizables y explicación para la otra
tarea; no crear visores nuevos salvo que él lo pida.** Se retiró el visor empezado
para03; no se entrega launcher/galería.63renders Blender ya producidos quedan
como evidencia de trabajo. Entrega sellada: no rerun de generadores/QA archivados.

**Armarios y cajoneras entregados, 2026-09-08:** las7láminas de Nico en
`stuffimadeuseonlyifiask/Materials/EVEN MORE STUFF` producen7muebles compartidos:
`EXTRA_CABINET_001–003` y `EXTRA_DRAWER_001–004`. Catálogo independiente
`Modelos/Complementos_interiores_02/catalogo.json`;7Blender empacados/reabiertos,
7GLB,7escenas Godot cargadas/renderizadas,7atlas512×512 y7originales con SHA-256
preservado. Cuerpos huecos,5hojas con bisagras y19cajones con fondo/laterales/base;
giros y deslizamientos verificados en prueba aislada.21renders Blender y14capturas
Godot; sin colocación, inventarios, controlador ni colisiones nuevos. No cambia
el registro375 ni los9complementos anteriores. Visor `Ver armarios y cajoneras.cmd`,
galería `Complementos de interiores 02.html`; guía `Documentacion/Complementos_interiores_02/PARA_INTEGRAR.md`.
El MISMO `Documentacion/Traspaso_revestimientos_01/TEXTO_PARA_CODEX.md` ya incluye
estos7assets, sus IDs/rutas/movimientos. Recursos compartidos sin SHOP; el JSON
de asignación continúa exclusivo de revestimientos. Entrega sellada, no rerun
generadores ni QA archivados; cambios posteriores en una revisión nueva.

**Complementos compartidos entregados, 2026-09-08:** Nico agregó dos láminas en
`stuffimadeuseonlyifiask/Materials/more stuff`. Se prepararon9modelos: sillón
`EXTRA_ARMCHAIR_001` y ocho puertas `EXTRA_DOOR_001–008`, en
`Modelos/Complementos_interiores_01/catalogo.json`. Son recursos compartidos sin
SHOP ni colocación automática, en catálogo adicional; no modifican los375registros
anteriores.9Blender empacados/reabiertos,9GLB,9escenas Godot cargadas/renderizadas,
3108triángulos totales y2atlas512×512. Los2originales conservan SHA-256.
Puertas con marco fijo y9pivotes comprobados (2en la doble), apertura frontal+Z
sin mover bisagras; barrotes con huecos reales. Cristales con imagen opaca pintada.
Visuales sin colisiones ni controlador nuevo: integrarlos al sistema de puertas
existente preservando identidades/estados.27renders Blender y17capturas Godot.
Visor `Ver complementos de interiores.cmd`, galería `Complementos de interiores 01.html`.
Texto para que Nico pase a otra tarea: `Documentacion/Complementos_interiores_01/PARA_INTEGRAR.md`.
Entrega sellada, no regenerar ni repetir QA archivada. Mundo vigente de§42 intacto.

**Traspaso de revestimientos preparado, 2026-09-08:** Nico pasará personalmente
`Documentacion/Traspaso_revestimientos_01/TEXTO_PARA_CODEX.md` a otra tarea.
Por pedido posterior de Nico, ese mismo texto ya incluye los9complementos
(sillón y8puertas), sus IDs/rutas/pivotes e instrucciones, y actualiza el índice
vigente a§42. El JSON de asignación sigue siendo exclusivo de revestimientos.
Su `asignacion.json` documenta124texturas/materiales por31SHOP y43edificios actuales,
contrastados por ID/nombre con ambos registros; incluye escenas resueltas con los
alias de pisos y la excepción de garaje B0153. Es una instantánea documental,
no un archivo cargado por el juego. Los materiales siguen pendientes de aplicación.
No se alteraron assets sellados ni el mundo. Este texto contempla las tiendas ya
integradas de§36 y las mejoras de§37/39/41; no restaurar placeholders ni rutas viejas.

**Revestimientos entregados, 2026-09-08:** Nico pidió texturas limpias con motivos
de cada negocio para empapelar las paredes. `Modelos/Revestimientos_tiendas_01`
contiene124PNG512×512 y124materiales Godot con recursos de textura comprimidos:
cuatro variantes front/back/left/right para cada SHOP_001–031. Catálogo independiente,
sin alterar el registro fuente de375modelos ni sus IDs.124materiales cargados y
renderizados, todas las texturas revisadas visualmente, fuentes/registro preservados.
Galería reutilizable `Revestimientos de tiendas 01.html`. Leer
`Documentacion/Revestimientos_tiendas_01/CONTINUIDAD.md` y `PARA_INTEGRAR.md`.
La repetición horizontal reflejada evita saltos de borde; no repetir en vertical.
Las franjas entre distintas variantes requieren revisión de alineación en esquinas.
Se derivaron paredes nuevas para ocho negocios sin paneles fuente; eso no completa
mobiliario faltante. Motivos pequeños, sin carteles publicitarios/textos grandes.
Entrega sellada: no rerun generadores/finalizador/QA archivados. No se aplicaron aún
estos materiales al mundo; preservar las escenas y aliases vigentes de§39–41.

**Texto de traspaso preparado, 2026-09-08:** Nico pidió un texto para pasárselo él
mismo a otra tarea e incorporar los negocios diseñados en lugar de los placeholders.
Está en `Documentacion/Registro_tiendas_01/TEXTO_PARA_INTEGRAR_TIENDAS.md`: rutas,
IDs, copias corregidas, cobertura pendiente y requisitos de integración. Esta tarea
solo preparó el texto; no envió mensajes ni realizó el reemplazo en el mundo.

**Actualización vigente — more more shops:**78PNG de9negocios producen105assets
únicos (69objetos+36paneles), asociados a SHOP_019/020/024/025/026/027/028/029/030.
Catálogo: `Modelos/Interiores_trabajo/03/catalogo.json`; continuidad para otra tarea:
`Documentacion/Interiores_trabajo_03/CONTINUIDAD.md`. Registro canónico en revisión4:
375assets,265específicos+110compartidos;24negocios con piezas de interior y7solo cartel
(SHOP_010/011/017/018/021/022/023). Piezas sueltas no acreditan interiores completos.
Se preservan31IDs de tienda,270registros anteriores,2596archivos previos y78fuentes.
Copias512×512;105Blender empacados reabiertos y105escenas Godot cargadas/instanciadas;
visor renderizado con búsqueda y clay verificado.21560triángulos,12–1940por pieza.
Galería `Assets tiendas 03.html`; visor reutilizable `Ver assets de tiendas 03.cmd`.
Entrega03sellada: no ejecutar sus generadores/finalizadores/QA archivados encima.
Ninguna integración al mundo ni reemplazo de stores; envío a otra tarea aplazado.

**Tanda anterior — more shops:**48PNG nuevos de8negocios producen72assets
únicos (40objetos+32paneles), todos asociados a SHOP_007/008/009/012/013/014/015/016.
Catálogo final: `Modelos/Interiores_trabajo/catalogo_tiendas_02.json`; sus rutas
resuelven las copias de02 y02_ajuste. Leer
`Documentacion/Interiores_trabajo_02_ajuste/CONTINUIDAD.md`.
El ajuste33copias conserva los mismos IDs:32paneles con relación de aspecto de
fuente y cajón de pelotas con cuatro lados de reja y pelotas redondas. No sumar
esas copias como assets adicionales. Las revisiones previas selladas quedan intactas.
Registro conjunto270assets,160específicos+110compartidos;15negocios con piezas de
interior y16solo cartel. Colecciones abiertas.31IDs de tiendas y198registros
anteriores conservados; texturas nuevas512×512, originales intactos.72Blender
y72escenas iniciales verificados,33copias corregidas reabiertas/cargadas, visor
renderizado con búsqueda y clay. Galería `Assets tiendas 02.html`; visor reutilizable
`Ver assets de tiendas 02.cmd`. Ninguna integración al mundo ni reemplazo de stores.
Los párrafos siguientes describen la primera entrega y el registro inicial.

Biblioteca independiente `Modelos/Interiores_trabajo/01`: 198 piezas con Blender
editable, GLB y escena Godot, procedentes de 80 láminas de Nico. Leer
`Documentacion/Interiores_trabajo_01/LEEME.md` y sus evidencias selladas. Copias de
texturas a512×512 (58 reducidas,22 ya512), originales conservados. Visor reutilizable:
`Ver assets de interiores y trabajo.cmd`; galería `Assets interiores y trabajo.html`.
No volver a ejecutar sus generadores/finalizadores sobre los archivos entregados.

Nico confirmó `stuffimadeuseonlyifiask/interior and work assets/shops.txt` como lista
final de31 negocios y autorizó ir asignando las piezas creadas mientras completa
las texturas/assets faltantes. Registro canónico nuevo:
`Modelos/Interiores_trabajo/registro_tiendas_01.json`. Identidades SHOP_001..SHOP_031,
asignadas una vez según la numeración de esa lista; no renumerar ni reciclar.
No equivalen a IDs de edificios ni a claves de stores del juego.

Los198 assets existentes mantienen sus IDs y rutas:88 específicos de negocio
(30carteles+58piezas de interior),110 compartidos. Siete negocios tienen piezas
de interior;24 solo cartel e interior pendiente. Todas las colecciones siguen
abiertas; no se declara ningún interior completo. Velvet Vice SHOP_023 es lounge/bar;
Velvet Rooms SHOP_031 es club erótico/burdel y recibe todos los brothel_*.
Muebles/electrónica genéricos, medicina, policía y exteriores tienen grupos
compartidos propios. Las rutas y fundamentos están en el registro y la tabla
`Documentacion/Registro_tiendas_01/assets_por_tienda.csv`; los31 negocios en tiendas.csv.

Continuidad para otra tarea de Codex: `Documentacion/Registro_tiendas_01/CONTINUIDAD.md`.
No se envió mensaje ni se preparó el reemplazo de stores, que Nico aplazó. No se
modificaron mapa, gameplay, catálogos sellados, modelos o fuentes. Verificación del
registro:31filas exactas,198assets cubiertos una vez, rutas existentes y hashes
de los archivos protegidos conservados durante la operación.

## 30. Interiores continuos y navegación periférica — Coherencia_mundial_01

ENTREGADO2026-09-08. Esta sección reemplaza el estado PENDIENTE de interiores
seamless y navegación periférica en§27/28. Leer LEEME.md, IMPLEMENTACION.md,
VERIFICACION.md y verificacion.json de Documentacion/Coherencia_mundial_01.
Alcance: apartados5–17 de Solicitud.txt; no afirmar cerrado todo el documento
histórico de colisiones/coches/pánico/objetos. No se integra la biblioteca de
tiendas de§29: sigue siendo otra tarea, con sus archivos preservados.

Proyecto activo Dark City Project. Sin preguntas ni agentes; UI inglés. Probar
interiores y periferia.cmd inicia sesión aislada frente a B0029, sin guardar.
Play Dark City.cmd / New Game / Continue usan el runtime nuevo. WASD,Shift,M y
resto de controles originales. Entrar/salir caminando y empujando la puerta.

world_space_frames: cada receta local se coloca en posición/rotación del edificio;
fitXZ=(exterior-.4m)/receta,Y1. Personajes en espacio mundial, sin escalar rig.
world_interiors.loaded permite múltiples interiores; active_id solo jugador.
world_point/local_point/root_for/path_space conectan todos los sistemas. Puertas
físicas únicas1.3x2.3x.085m, huecos1.42x2.43m. Hojas a front/rear_door-normal*.68,
giran1.40rad;hold1.4s;abren4.5/s,cierran.85/s; conservan sentido mientras abiertas.
Cruzar nunca recoloca, congela o reinicia cámara. Mismo nodo/ID/collision NPC.
64 copias recortadas de exteriores en Modelos/Mundo05; index_seamless_01.json.
Originales intactos; se vacía colisión de planta baja y abren huecos de puerta.

Precarga50m por huella + fachadas reales visibles. Retención65m/6s; no descarga
con jugador, NPC físico interior, objeto activo, pin o fachada visible. Escaneo
.25s;12muestras en4fachadas y raycast/frustum; solo fachada real, no proxy lejano.
Guardas cerradas mientras llega recurso;1install/frame;cache8;1carga simultánea.
Interior inicial listo antes de controles. Afuera sigue cargándose al estar
dentro; coches/NPC/objetos no desaparecen por cambiar active_id.

Trabajo, muebles, needs, sueño/camas, teléfonos, atmósfera, justicia, servicios
y presencia usan el frame del edificio propio. Custodia/EMS conserva cuerpos al
cruzar; handoff_inside actualiza estado. Trayectos interiores miden metros reales
después del fit. La entrada local del grafo coincide con su acceso exterior.
physical_space_version2 migra una vez el viejoY=-120: jugador/NPC/items/custodia/
armas; poses rotadas rígidamente alrededor de raíz, sin estirar huesos. Saves
nuevos almacenan coordenadas mundiales. Restore solo carga/fixtures, nunca puerta.

WALK city_walk_network:9887triángulos,11030enlaces,7601barreras,469franjas de cruce,
138celdas de superficies;932922.72m²transitables. AStar2D + portales de aristas;
índice32m;edificios/calzadas con margen.38m;agua excluida. Pasarelas1.9m a altura
.15, centro road_half_width+.90 para tocar calzada,2848.12m². Cruces de puentes
recortados a suelo físico. Siete delantales D03_0608/0609/0619/0681/0682/0737,B0020.
785accesos conectados;20triángulos aislados sin acceso de edificios/aparcamientos.
DRIVE separado; no fallback vial de WALK. Acceso normal proyecta<=1.5m. Solo coche
permite tramo terminal de vereda a puerta/carga; ocupante ya en carril vuelve por
enlace corto a vereda<=8m, nunca ruta longitudinal.650lados de325parkings cubiertos.
Cruce físico:lookahead1.2m,coches>.5m/s a<=35m,predicción2.2s,separación2.1m;
PANIC/FLEEING/SERVICE_RESPONSE/POLICE_ESCORT conservan excepción. Sin semáforos nuevos.

pedestrian_network3 en WALK: viajes antiguos se recomponen desde posición exacta,
manteniendo viajero,destino,departure y distancia acumulada mediante Travel.rebase;
ETA/cola recalculados,idempotente. Adaptador físico arranca desde cuerpo actual,
no desde el inicio remoto del recorrido. vehicle_access explícito también para
carga laboral. Mismos420residentes,73definiciones,estado social/laboral/dinero/IDs.

78comprobaciones: suite03=22,npc04=21,state02=24,routes_runtime01=11.785/785accesos,
0segmentos inválidos;650/650lados deparking. Guardado/carga en procesos separados:
errorposición0,420IDs/órdenes/saldos preservados. RenderOpenGL entra/sale de B0029,
máximo.018966m/frame,inside.png revisada. Launcher verificado;6480art/rig/UV/clips
SHA sin cambios. Logs finales seleccionados sin FAIL/SCRIPT ERROR/avisos. Intentos
intermedios se conservan: una puerta bloqueada por NPC con reloj deQA pausado y
aviso de relocation deliberada de fixture; no atribuirlos al recorrido normal.

Prueba física de puertas existentes0/2; todosframes conround-trip1/3 también.
Servicios verifican geometría/metros/handoff compartido; no repetir cada misión
EMS/policía no equivale a una prueba completa nueva de todos sus flujos. No1000NPC/
FPS prometidos. FitXZ ajusta muebles existentes, no remodela todoslos interiores.

Revisión sellada con entregado.json: NO ejecutar integrate*.py, generadores,
finish_delivery.py ni QA archivados ni sobrescribir evidencias. Nueva revisión
para próximos cambios. Launcher reutilizable en Sistema nunca escribe aquí.
Todas las QA usan -- --damage-test; nunca partidas reales. manifest_runtime.json
enumera los archivos propios y hashes; Antes/Scripts conserva el baseline.

## 31. Tirón periódico — Rendimiento_01 (2026-09-08)

IMPLEMENTADO. Leer LEEME.md, IMPLEMENTACION.md, VERIFICACION.md y verificacion.json
en Documentacion/Rendimiento_01. Solicitud.txt conserva los 100 apartados.
Reemplaza el antiguo estado EN CURSO. Proyecto activo: Dark City Project.
No preguntas ni agentes; UI inglés. Play Dark City.cmd / New Game / Continue.
QA siempre -- --damage-test; nunca partidas reales. Biblioteca de tiendas §29,
arte, mapas, voces y demás revisiones selladas quedan preservados.

Causa comprobada: character_life_store._physics_process sumaba save_age y si
dirty && save_enabled && save_age >= 2.0 hacía save_file(SAVE_PATH) síncrono.
Serializaba JSON completo de 421 registros (420 residentes + protagonista),
234 vehículos, parking, relaciones, órdenes, etc. 21 guardados en 60 s:
save_file máximo 853.048 ms; JSON máximo 832.365 ms; 17553.72 ms acumulados
guardando, de los cuales 17148.78 ms codificando. Frame máximo 1012.043 ms;
p99=843.986 ms. No había timer literal de 4 s: el bloqueo alargaba la cadencia.
Área vacía reprodujo la serie con 0 NPC físicos. Disco máximo 19.591 ms,
parking.expire 0.838 ms y vehicles._process 2.428 ms no justificaban reemplazarlos.

REGLA NUEVA: no hay autoguardado periódico mientras se camina. Checkpoints al
mundo listo (world_ready), abrir menú de pausa/jugador (pause_menu) y terminar
descanso (sleep_completed). Guardar manualmente y salir siguen guardando.
Autorizado por §§41–42 de Solicitud: puntos controlados/ciclo de juego. No volver
a introducir un timer frecuente que copie/serialice toda la ciudad.

CharacterLives.autosave_path por defecto SAVE_PATH=user://character_lives_v1.json.
Mismo JSON versión 1, claves ordenadas/full_precision, .tmp/.bak y recuperación.
request_checkpoint(reason) coalesce una petición. _process termina el Thread
anterior, toma capture_save_data().duplicate(true), marca dirty=false e inicia
un único world_save_writer.write(path,frozen). El worker solo maneja esa copia
inmutable y JSON/I/O; nunca SceneTree, physics, ResourceLoader o estado vivo.
Modificaciones posteriores vuelven a quedar dirty; error de Thread/I/O restaura
dirty. checkpoint_finished(reason,error), checkpoint_result con error/encode_us/
write_us/bytes y checkpoints_completed. Save/load/exit esperan al escritor antes
de escribir una versión más reciente. No permitir dos escritores simultáneos.

PROCESS_MODE_ALWAYS permite terminar durante pausa; _physics_process retorna si
get_tree.paused para preservar reloj y necesidades. WM_CLOSE_REQUEST guarda
cambios con registros antes de desmontar; _exit_tree espera y guarda si dirty.
Cerrar el menú antes de congelar cancela una petición pause_menu pendiente;
una copia iniciada termina. save_age queda como campo compatible, sin timer.
Con --damage-test, SaveWriter rechaza rutas fuera de res://Documentacion/.

capture_save_data llama advance_to(now,false,true): drena eventos vencidos para
una imagen coherente, sin convertir actores observados en offscreen. Después
liquida sangrado, snapshot_requested y snapshots de actores cargados. Copiar
todo aún cuesta 171–259 ms en el checkpoint; JSON ~800 ms ahora en el worker.
No afirmar copia gratuita ni persistencia continua durante el juego. No copiar
incrementalmente diccionarios vivos mezclando parking, reloj y viajes de distintos
instantes. Hash completo ~46 ms y binary freeze 333–407 ms tampoco resolvían un
timer frecuente. Guardado manual/salida pueden bloquear para completar el archivo.

Segundo costo: daily_plan → choose_activity → logical_world_graph.nearest, hasta
~608 ms acumulados en un frame de traza detallada. world_place_index indexa por
tags y celdas de 100 m los lugares entrables/parques al terminar graph.setup;
marcadores dinámicos sin tags quedan fuera. Celdas por cota mínima de distancia,
corte al superar best, empates por inserción original. Cache de celdas=512;
cache nearest previa=4096. Mantiene redondeo a 20 m, clave tag/home/work/weekday/
hour, horarios y restricciones de baños/otros hogares. 240 consultas (12 hogares
×4 horas×5 tags) idénticas al barrido exhaustivo. No cambia WALK, DRIVE o puertas.

npc_simulation.json añade únicamente cuatro opciones:
- background_event_budget_usec=2000
- background_events_per_frame=32
- presence_budget_usec=2000
- presence_candidates_per_frame=8

Clamps mínimos: 100 us / 1. advance_to(at,skip,unlimited=false) comparte
budget_frame/budget_used/budget_events por Engine.get_physics_frames; consultas
repetidas no renuevan cupo. Se comprueba entre eventos atómicos: uno puede superar
2 ms. Heap, timestamps, desempates y turnos intactos; backlog continúa después.
skip=true y unlimited=true en checkpoint drenan sin frames ordinarios.
stats.event_backlog y event_budget_used_usec permiten inspección. Con eventos
pendientes, get_npc_state integra solo hasta min(at,queue.next_time()) para no
calcular necesidades/asistencia más allá de una transición usando actividad vieja.
La siguiente lectura integra el resto con la actividad nueva al resolver el evento.

Presencia conserva scan_candidates/scan_index; renueva cada .25 s cuando termina
la lista y procesa hasta 8 candidatos o 2 ms, máximo un spawn por llamada.
Distancias, retención, visibilidad, colisiones, apariencia y estado intactos.
Recursos según loaded/requested/ready_scenes; prioridades precalculadas una vez
por ID antes del sort. Límites normales: 24 NPC / 12 coches físicos, sin cambios.
Un spawn atómico puede superar el presupuesto. No se añadió refresh de 420 NPC.

Error detectado en baseline: una contratación diferida consultaba life/events
antes de inicializarlo. npc_employment.register prepara stability antes de hire;
npc_life_stability.person inicializa life si falta en un residente existente;
major_event ignora ID inexistente. No crea identidades ni cambia scoring,
end_shift, salarios, reglas de contratación o calendario.

Validación: 151 comprobaciones aprobadas + una condición antigua obsoleta visible
en life_final (19/20). No ocultarla: buscaba history.type=SHIFT_REVIEW o work_fleet
legado. life_work_checks verifica end_shift idéntico al baseline y el mismo save:
487 recent_shifts, 467 con pago y 5965 órdenes COMPLETED en work_orders_01.
48 h: 173213 eventos / 176.376 s; IDs, contratos, coches, parking y reload coherentes.
8 h: 28800 s de calendario, 33081 eventos / ~35.7 s, sin reproducir frames.
El catch-up de sueño sigue siendo costoso. 12 checks de incidente/despacho con
candidatos locales, policía/ambulancia existentes sin teleports ni clones.
Parking físico llega a 0.610 m / 0.045 rad, paso máximo 0.032 m por frame.
Puertas:22; NPC:21; rutas:11; ragdoll muerto:21, vivo:10. Solver 19 cuerpos →
3 proxies estable/despertable, pose exacta, blink muerto apagado, sin resucitar.
6480 hashes de arte/rig/UV/clips intactos. No se regrabó un día entero siguiendo
físicamente un NPC; las pruebas de tramos no equivalen a esa grabación completa.
Avisos RID/ObjectDB al cerrar persisten en algunas QA.

Mediciones renderizadas: 15 s warmup +60 s Time.get_ticks_usec; Godot 4.4.1,
OpenGL, Ryzen 7 5800HS/Radeon Graphics. Todos:420 NPC persistentes,234 coches.
Antes casa: mediana=19.248, p99=843.986, máximo=1012.043 ms.
home_final: mediana=9.706, p95=33.455, p99=57.661, máximo=131.066 ms;2 frames>100 ms.
home_release: mediana=24.697, p99=58.759, máximo=154.994 ms. Sin promesa universal
de FPS: carga, física incidental, clima y driver varían entre procesos. La serie
de guardados de 0.8–1 s desapareció. Área vacía (0 NPC/1 coche): timer legacy
máximo=1042.128,p99=100.369 ms; corregida máximo=180.708,p99=29.299 ms.
Busy fixture (30 NPC en idle/18 coches): mediana=97.998,p99=130.648,máximo=251.173 ms.
El costo CONTINUO de 30 rigs sigue alto (~10 FPS), pendiente y distinto del tirón.
No modificar arte/solver sin nueva evidencia/autorización ni prometer 1000 NPC.
Se conservan 190 coches privados +44 de servicio,325 parkings,73 workdefs,reloj15:1.

Trazas iniciales no bloqueaban toda la entrada; after_home_02 acumuló más ragdolls
vivos y no se usa para comparación FPS. Finales bloquean entrada externa.
Escalado50/100/200/420 NPC,50/100/234 coches,50/150/325 parking es microbench JSON
de componentes, no una ciudad de prueba con población reducida. Wrappers
_measured_* retirados;22 scripts restaurados byte por byte. world_performance_trace
enabled=false, solo contador opcional del checkpoint, sin proceso/log normal.
Tiempos de funciones inclusivos: no sumar padres/hijos. Figura frame_times.png/svg.

entregado.json sella esta revisión. No ejecutar nuevamente instrument.py,
deeper_trace.py,remove_trace.py,stage*.py,audit_runtime.py,write_report.py,
update_context.py,tidy_context.py,plot_frames.py,seal_delivery.py ni QA archivadas.
No sobrescribir evidencia/fixtures; copiar a una nueva revisión. Play normal no
escribe aquí. manifest_runtime.json:9 scripts modificados+3 nuevos+config.
El JSON config no tuvo backup byte en Antes; se documentan sus cuatro adiciones.
runtime.diff compara código. Matplotlib aislado en cache, fuera del juego.


## 32. Retro optimization, camera streaming and Trails (2026-09-08)

Read Documentacion/Optimizacion_retro_01/LEEME.md, IMPLEMENTACION.md,
VERIFICACION.md and COBERTURA.md before changing this system. Both user originals
are preserved as REQUEST_PERFORMANCE.txt (118 sections) and REQUEST_STREAMING.txt
(100 sections). Infrastructure integrated; functional QA passes. IMPORTANT: the
smooth-performance acceptance target for25/12 and40/20 physical crowds is NOT MET.
Do not claim fluent60FPS, completed crowd optimization, or1000physical NPC support.

User corrections:640x360 is too unclear. STANDARD defaults1280x720; only diagnostic
LOW uses640x360. HIGH1600x900. The user asked about GTA III “Trails”: actual temporal
GPU history exists, NORMAL6%, adjustable/OFF. It softens motion persistence, not
polygon silhouettes. No questions/agents. In-game UI English. Continue physical
optimization from measured evidence; do not silently lower resolution or delete
population. No changes to approved heads, bodies, hair, garments, UVs, rig or clips.

Keep420 adults,190private+44service cars=234,325parking,73workdefs,15:1clock.
Keep real trips/parking/doors/seamless interiors/IDs and §31 checkpoints/savev1.
No global gameplay save timer. Existing heap events2000us/32 per physics frame,
presence2000us/8 candidates and chronological sleep/jail/hospital catch-up survive.
No real-save QA. The independent shop library/integration pending in §29 stays
separate; new visor_interiores_trabajo_03.gd was preserved, not authored by this task.

CPU changes: world_spatial_index uses100m buckets, reverse memberships and route
corridors sampled40m. Exact downstream choices remain with each owner. Vehicle
index bootstrap234 once, parked points/driver route corridors refreshed by reindex;
service registry44 and bus timestamps retained. If logical_driver empty, look in
state.vehicle_users. world_vehicles scans8 local candidates/2000us per frame, maxone
materialization/desmaterialization per pass, preserving pins/capture/identity.
city_parking reverse maps and due-lease queue:8h reserves,1h renew if logical driver;
only physical vehicles movement>1.5m checked. Band scores/ties equal brute force
in240queries. Atmosphere lamp buckets and70m building-members window checks every
.5s; existing clock/weather update.15s. No785x420 window/occupant scan.

world_interiors candidates90m+loaded/pins; existing50m load/real visible facade,
65m/6s retention and occupied/activity/view pins. world_small_objects WORLD-only
100m index,40m query+loaded, cap16. reindex after WORLD creation/move/take/place;
work_task_world updates new/dropped/placed/taken objects and dishes. Stale non-WORLD
candidates filtered. Future WORLD creation paths must call reindex/spawn.
world_frame_budget shared2 atomic jobs/2500us per render frame, config-driven;
claims across loads/unloads of physical cells,NPCs,vehicles,interiors,items and LOD.
An atomic operation CAN exceed budget. It is not a hard16.67ms frame bound.

Character runtime only: BodySecondaryMotion caches compact LOCAL additive deltas
of changed bones, reapplied to the CURRENT authored clip each intermediate frame.
Near STANDARD12m+2m hysteresis full solver; medium20Hz, beyond35m10Hz. Hashed cohorts
minimum3frames STANDARD/4LOW/2HIGH, or ceil(FPS/hz) if larger. Time-only throttle
did not help when a frame was slower than1/hz. Solve dt<=.095; motion change/reset
forces solve. Full detail if damage!=NORMAL, aim_blend>.01, weapon transition,
abs(facing_error)>.15rad or manual capture. Motor/rig/clip never frozen for this LOD.
Sole probes deduplicate EXACT identical weighted samples. Far-only contacts select
8 current posed XZ extrema+lowest+nearest centre (<=10); near/critical keepsALL
distinct approved sole points. This is a distant approximation; not a new guarantee
over every shoe/curb. Arm inertia/turn modifiers remain enabled. RunCloth weak-node
cache invalidates on character_clothing.apply; identical blend/grip writes skipped.
severity trauma<5 fast path proven equivalent in6851boundary cases.

Physical streaming remains player/actor/vehicle owned at50m relevance. Actual
vehicle velocity preloads ground/structures .35/.7/1.05s ahead,15m radius; vehicle
camera pin uses actual driving camera. No visual proxy collision or navigation.
world_render_stream owns camera-based visual residency. Plan every.2s; horizontal
content_bounds distance, not full3D distance to every building. Camera view cone
dot>-.20-75/dist; within90m retained, behindcamera lowest requestedLOD2. GPU frustum
decides final draw. Ahead=camera+velocity*3s capped240m+camera.forward*80m; request
FULL if within80m of prefetch point. Visual transition.45s complementary screen
dither; exit hysteresis transition_m/2=12.5m (config25m); resource retention4s.
Previous available representation remains until next ready; skyline fallback.

Profiles (width/height,ordinary physicalcaps, FULL/L1/L2/HLOD/skyline m, props/shadow):
- STANDARD_RETRO:1280/720,24/12,100/220/400/700/1400,110/60,near12m/mid20/far10Hz.
- PERFORMANCE_DEBUG_LOW:640/360,20/8,80/180/340/650/1200,80/45,near10/mid15/far8.
- HIGH_TEST:1600/900,40/20,110/240/420/750/1600,140/70,near18/mid30/far15.
Caps limit new ordinary representations; existing essential/pinned actors retain
continuity. Selector1280x720/960x540/854x480/640x360/1600x900. Live settings are session
only; defaults in Sistema/Datos/Mundo/retro_render.json. No silent dynamic reduction.

Modelos/Mundo_retro_01:180cells,45logical2x2 HLOD groups,44nonempty HLOD assets.
468nonempty mesh paths +CPU facade_images.res +index.json =470files. Empty offshore
G04_08 path="". FULL exact source triangles/UV/normals mergedopaque+glass; LOD1 omits
trim/frame/tubes; LOD2 original coarse structures; HLOD4coarse cells; source skyline
preserves city masses/roofs/heights. Sourcecity geometry/layout not rebuilt.
40shared128px mipmapped facade images uploaded to Texture2DArray at runtime from
CPU image metadata. Earlier GPU serialization failed underdummy renderer; invalid
185byte facades.res moved out of runtime to invalid_archived_facades.res evidence.
5shared level materials+1FULLglass alpha.36. Far windows opaque/emissive; nohundreds
of light nodes. Occluders:bounds size-.8m XZ,base3.5m/top roof-.3m to preserve
groundfloor openings. Loader48cache entries/8s; filtered-material dictionary<=512.
Props110m standard, large pole/tree/booth at least160m,15m margin,no shadows; live
profile/distance change also refreshes already-loaded props. Runtime material
copies bilinear+mipmap, including interiors loaded before renderer configuration.

Original physical structure MeshInstances keep layers=0 after batched copy ready,
NOT Node3D.visible=false. They remain exact bullet-impact triangle/material owners;
decal children stay visible. Fallback restores original layers when visual missing.
Geometry/collision/semantic ownership and world impact coordinates unchanged.

world_retro_render: one SubViewport shares the SAME World3D. Mirror original active
camera in RenderingServer.frame_pre_draw; original aiming/input/physics cameras
unchanged. Render far=skyline+150m. Root3D disabled, composed behind native HUD.
project.godot stretch remains canvas_items: logicalcanvas960x540 in1280x720window;
3D target separately1280x720. Two GPU history viewports ping-pong read DISABLED/write
UPDATE_ONCE; sampler reverse dependencies cleared. No CPU image readback per frame.
Clear history2frames on camera ID change,positionjump>5m ororientationdot<.65.
Trails OFF0/LOW.035/NORMAL.06/STRONG.08; grain.012,dither.35/255,optionalglow.05 OFF.
NoTAA/DOF/motion blur/chromatic aberration/jitter/affine/SSAO/SSR/volumetricfog.
Fog200–1200m,curve.6,base maxopacity.78,weathermax.89:begin lerp(start,80,fog*.65),
end lerp(end,650,fog*.6),opacity min(.89,max_opacity+fog*.10). Laterstreamingdoc
overrides old450m opaque cutoff. District tint1–2%,time/weather colors retained.

Ctrl+F9 lab (mouse released,previousplayercontrols/orbit restored onclose,simruns).
11toggles:FOG,TRAILS,DITHER,GRAIN,GLOW,SHADOWS,NPC PHYSICAL,VEHICLE PHYSICAL,
INTERIORS,LOD/HLOD,OCCLUSION. Actor diagnostics freeze/hide local descendants and
restoreprocess_mode; player occupied car retained. Interior diagnostic maintains
collision. Re-enable before gameplay. Field bounds preserve5m between LODbands,
25m between fogstart/end. Counts separate resident buildings vs cells; interfaces
show heaplength and overdue boolean separately. Frame time uses actual processdelta.
GPU reports availableworld/currentpost/rootqueries; Compatibilitypostoften0,not
proof of freepostprocessing. F9 cellmap greenFULL/yellowLOD1/orangeLOD2/redHLOD/
purpleSKY/graybeyondrange; cyancameraforward+prefetch marker. No map load triggered.

Fresh regression: save14,logic12,deferred4,dispatch12,doors22,NPCdoors21,routes11,
livingragdoll10,corpses21,parking1,life48h20 PASS. New:indices15,motion15,impacts5,
visual14,drive6,controls13 PASS. Latest scripts exit0/noSCRIPTERROR.8h33077events/
25.296s;48hadvance156645ms (~173.2ssuite). Preserve order,contracts,IDs,cars,parking,
deaths,reload. Parkingfinal.609883m/.045362rad,maxstep.031806m. Ragdoll19native→3
sleepingproxies,pose/wake/deadblink correct. Drive27m/s through6cells,0missingfloor
frames/0safetypauses,minY.052407m. Sourceimpacts/decalposition<.001m.240parking
equivalencequeries;6480 protected art/rig/UV/clips exact. This is not everyNPC's
full-day visual recording or all shoes on everycurb. Existing shutdownRID/ObjectDB
and some fixture interpolation warnings remain recorded. Never test on real saves.

Initialfailures preserved:magenta invalidarray; missingemptyHLODpath;firstsaveQA
missing copiedfixture (fixed newcopy);oldlifeassertion replaced only in NEWQA with
recent_shifts/work_orders COMPLETED;controlformat boolean-as-number fixed,tested.
control_checks_attempt_1/logs remain. Finalcontrolfields readable in both screenshots.
Art audit and project.godot comparisonPASS. Shaderworld_weather_surface existing
sampler changedlinear_mipmap; no originalshaderbytebackup captured, do not inventone.
manifest_runtime/diff:16changedexistingGD+6newGD+retroconfig;2newshaders+weathersampler.
Other new viewer script preserved/excluded.545preimagefiles unchanged (see manifest).

Measurements (AMD Ryzen7 5800HS/Radeon integrated,Godot4.4.1Compatibility):15swarmup+
60elapsedseconds,internal/window1280x720. Frames /median/p95/p99/max inms:
- quiet0NPC/1car:3566 /16.588/22.841/25.460/134.929 (~60.3FPS atmedian).
- home2/4:2126 /27.329/36.278/41.133/129.928 (~36.6FPS).
- normal_720_verified25/12:1073 /54.217/65.713/82.439/113.117 (~18.4FPS).
- dense_720_verified40/20:741 /81.534/89.275/96.343/110.886 (~12.3FPS).
Over100ms frames1/1/2/5 respectively. These crowded fixtures useexistingNPCidle;
not40people all moving/shooting. Before_busy30/18:524frames,median101.546,p99208.547,
max251.492;before_home2/4:median23.357,p9962.645,max235.354. Baselinerefresolution
notrecordedreliably andcounts differ; no directpercentageclaim. HomemediandidNOT
improve, tail did. Finalhome/quiet beforefar-onlysolechange, nofarNPCspresent.
Controlcounter/loadedinteriorfilter polish tested afterward,notfournew60sprofiles.
CPUdiagnostic25/12:normal60.703ms,noBody42.199,noarms59.299,noDamage59.029,
authored-only32.052. Diagnosticremovals NOT shipped; keepapproveddynamicmovement.
CPU/worldGPU/physics scopesoverlap; donotsumnestedspans;postGPU0unreliable.
RemainingcontinuouscharacterCPUcost documented, no0.8–1speriodicJSONspikeinnewtraces.
Catch-upandsomeatomicjobsstillcostly. Performanceacceptancetargetunmetwithcrowds.

Once entregado.json exists this REVISION's evidence/source-manifest is sealed;
do not rerun generate_lods/instrument_local/restore_instrumentation/profile/QA/
analyze/audit_delivery/build_report/update_context/seal_delivery or overwritefiles.
Copy/repath into a new revision for further optimization. NEVERrun current
restore_instrumentation.py: it restores before-state and erases currentwork.
NormalPlay/NewGame/Continue andCtrl+F9/F9 remain reusable. Do not mark remaining
crowdFPSgoal complete merely because this implementation snapshot is delivered.

## 33. Death ragdoll performance — Ragdoll_rendimiento_02 (2026-09-08)

Implemented from attachment967eb135, copied as Documentacion/Ragdoll_rendimiento_02/REQUEST.txt.
Read LEEME.md,IMPLEMENTACION.md and VERIFICACION.md there before changing physics.
No questions/agents. Same420residents,234cars,325parking,73workdefs,15:1clock.
All6480approved art/UV/textures/weights/rig/clips SHA-256 unchanged; project.godot
unchanged. Keep§31checkpoint rules and§32720p/Trails/streaming. Crowded living-actor
FPS limitation in§32 remains separate; this is not a city-wide60FPS guarantee.

Measured actual ragdoll:19PhysicalBone3D,14capsules/5boxes,ZERO native joints;
18custom anatomical constraints. Native contacts/gravity/impulses; space solver48
while any ragdoll is active, restored on final exit. Shapes, masses75male/62female,
friction.85,bounce0,linear damping.65,angular3,margin.006 and joint limits unchanged.
Selfcollision133allowed/38excludedpairs plus own living capsule exception. CCDfalse,
reportedcontacts0. Activebones layer2/mask3; livingcapsule layer0/mask0.

Primary baseline cost~5.3ms/body/physicsstep in GDScript constraints.enforce caused
multiple catch-up physics steps/frame with several deaths. Typed per-body cached
state removes repeated allocation/inverses/anchors/corners/bounds from innerloops;
conservative sphere rejects shapes entirely above a support plane. Cache belongs
to created physical bodies; rebuild constraint_states if future runtime masses,
shapes,offsets/restframes change. No currentgamecontrol does that. Approved visible
skeleton never changes. 176same-input comparisons at24passes againstoldcode passed
on flat ground,bothsexes. Adaptive trajectories are NOT claimed identical.

Custom pass policy:living controlled fall/getup24 unchanged. Dead moving air8,
coregroundcontact12; first.22s/newimpact.22s/low core_linear<.18m/s24. Morethan25m AND
outsidecamera ORoccluded reduces8→4,12→8; visiblefar keepsordinaryeffort. Newimpact
andquietstage remain24regardlessofview. Relevancequeryevery.25s onlyactivebodies.
Everyphysicsstep retainsall19bodies,contacts,exact link-length/angularprojection.
constraint_iterations=0normal;positive override is for isolatedsolvercomparisons.
Finalpenetrationguard now uses realplane normal/extent oninclines. Dead stable
requires supportedtrunk, preventing a nearlyupright corpse sleeping on a ramp.

ALIVE→ACTIVE_RAGDOLL→SETTLING→SLEEPING_CORPSE; streaming→FAR_CORPSE. Existingminage
1.25s,stablehold.65s,sleep.9s,quietposition.035m/angle.18rad,damping12/s unchanged.
18s warning diagnoses longactivity; NEVERfreezes bytimeout. Actualmomentum and
localizedimpact preserved; no giantfatalforce. Sleep captures exactfinalworldpose,
stops simulator/posemodifier,detaches19RIDs,unregistersspaceoverride and stopsdamage
physics. Threeproxycapsules trunkradius.15/twolegradius.085,scaledtocharacter.
Wake thresholds.12N*s/.45m/svehicle unchanged. Wake starts from exactsavedpose and
recomputesinitialangles there. A streamed already-sleeping corpse creates ZERO
PhysicalBones/simulator until its first significant impact, then creates all19.
No perframefrozenbone writes. Active death snapshots setsettled=false. ExplicitF8
resets corpsemetadata/registry; normalgame neverrevives anyone.

Cityaudit found CalendarSleepController still processing, work/justice modifiers
active, and world_social could install a new gesture modifier AFTERdeath. Fixed:
death disables livingSkeletonModifiers except simulator/rig-lengthprojection;
calendar releasesbedpose/capturehand-off and stopsprocessing; social avoidsdead
attachments anddropsdeadpose registryentries; playerworkoverlay cannotreactivate
on deadplayer. F8 restores validlivingmodifiers/controller. Existingmotor,terrainIK,
arms,weapon,animationandblink alreadydisabled; do not falsely claim those were new.
Finalactualcity corpse has NO processing descendants and NO active modifiers.

CharacterLives direct corpse_states +corpse_state_by_id track transitions, reset,
load/unload; one rebuild onload, no periodicfullpopulationcorpse scan. Logicaldeath
withoutobservedpose stores resting_back recipev1 and creates no3Dnodes. Onapproach
one existinggetup t0lyingpose is fitted to itsoriginalrig/ground; ONLYforunseen/no
savedpose deaths. Oldv1deadrecords withoutpose/settledmetadata migrate likewise.
Observed savedworldpose always wins; no replacementwithcanneddeathanimation.
Logicalposition_at atdeathtimestamp remains authoritative (storedoldposition may
be stale). Savev1/identity/properties andrealstreamingownership remainintact.
world_npc_presence.capture skips routinepose/route/woundarray rebuilds forsleeping
corpses; explicit save/unload uses force=true and capturesvisualstate normally.

Ctrl+F10 existingcorpsepanel now usesdirectregistries andshows customconstraints,
nativejoints0 and inclusiveconstraint ms/call. Timings opt-in onlywhilepanelopen;
hiddenpanel/processandprofiler disabled. No newgameplay controls orbackendchange.

Final isolated1280x720 oneexecution/scenario, sameapprovedactors/floor/camera/light,
1.5swarmup,3salive,headimpulses1.5 staggered.25s,naturalsleep+3s. final_*.json.
Fall meanms before→after:1=16.630→16.622,3=29.791→16.614,5=95.039→17.771,
10=197.223→57.659. Groundcontact mean1=16.671→16.667,3=62.314→16.660,
5=71.639→21.357,10=62.222→27.134. Groundp99 before→after5=231.311→54.124,
10=468.488→200.360; finalmax10=223.281ms. Tenactive stillspikes; not60FPSpromise.
Phasegroups include up-toNactive. Strictall5activeexcludingtransition:before17
framesmean228.930/p99231.671/max234.353;after180frames25.300/64.972/67.175.
Fulltables include physics/process/scopetime; monitoryields lag andinclusivescopes
MUSTNOTbesummed. Dormantlast1.25s~16.67ms presentationcadence,0constraintcalls;
notproofoffreeGPU/CPU. Nativecreate~3ms remainsone-timecost,nowavoidedonsleepload.

125functionalchecks:living10,observedcorpsesmale23/female23,Terrain_final40,
World_checked18,policy11; plus176solvercomparisons,8naturalsleepprofiles and6480
protectedarthashes. Tenpresleeping thenrealcar wakesonlyone,others9exact/0bodies;
shotwake/exactpose/save/reload/vehiclemove/resleep; two-sexroad,15cmcurb,12°ramp,
15cmsteps withsupport,angles,lengths,nonexplosivevelocity,visualreview. Currentcity
420/234/325/73/15:1 anddeath employment/logicalcancellation,actualsave/load passed.
Finalsmallmetadata/migration/city-onlycontrollerfixes testedWorld_checked/policy;
isolatedprofilefixtures do notcontainthese extra citycontrollers.

Earlierattempts preserved:typed_*24cache,passes8_5slowconvergence,adaptive/after
intermediates. Initialextended32/32 misseduprightslopecorpse visually, nowfixedand
8supportassertionsadded(40/40). world/World_final/World_validation expose sleep/
socialresiduals andincorrectQApositionexpectations(staledata/exactfloat equality).
World_validation crashsignal11 camefromQAcallingasim methodAFTERfreetown; finalQA
useslocalVector3data with1µmtolerance andWorld_checkedexits0. Nevererasehistory.
NoJoltcomparison:optionalbackendmigrationnotjustified. No universalclaimfor every
obstacle/clothingmesh/contact arrangement. Groundchecksusephysicsvolumes.

11existingGDchanges+3newownedGD recordedinmanifest_runtime.json/runtime.diff;
beforeGD/context/project inAntes. NootherexistingGDs changed. NormalPlayDarkCity
usesimplementedcode. Onceentregado.jsonexists,thisrevisionisSEALED: do notrerun
install_solver/add_metrics/copy_regressions/profile/QA/build_report/update_context
oroverwriteevidence. Copy/repathnewrevisionforfuturework. Do notrunold§32restore.


## 34. Paridad de residentes — Paridad_residentes_01 (2026-09-08)

Implementado desde la solicitud a57c490d, copiada íntegra en Documentacion/Paridad_residentes_01/Solicitud.txt. Leer LEEME.md, IMPLEMENTACION.md, VERIFICACION.md y COBERTURA.md de esa revisión. No preguntas ni agentes; interfaz del juego en inglés.

## Autoridades y adaptadores

`resident_rules.gd` completa el registro lógico ya existente del protagonista y
sincroniza salud, necesidades, espacio físico, vehículo, custodia, internación,
sueño y asistencia. Al inicio hay 421 registros de persona: protagonista más 420
NPC. `sim.ids` sigue siendo un Dictionary de los 420 NPC; no se inserta un
`N/protagonist` autónomo. No reemplazar `.keys()` por asignación Dictionary→Array.
Durante un traslado sentado se reflejan `SERVICE_PASSENGER`, `PASSENGER`,
`service_vehicle_id` y el `drive_kind` de la unidad real, como para pasajeros NPC.

Se reutilizan WorldCalendar/CharacterLives, npc_logical_world, npc_employment,
work_order_system, world_small_objects, justice_system, world_continuity,
city_population y city_parking. Las decisiones autónomas de desplazamiento,
búsqueda de trabajo, coping y emigración excluyen al control humano; no lo
excluyen de presión vital, deuda, alcohol, avisos, despido o muerte.

### Empleo, necesidades y economía

El protagonista recibe eventos comunes `J/protagonist` SHIFT_BEGIN, SHIFT_END y
DAY. No hay temporizador paralelo de nómina en work_task_player: ese adaptador
observa fichaje, ubicación y participación manual. Se puede esperar una orden
estando fichado en el puesto. Durante un salto no se fabrican asistencia o tareas.
Ausencia y baja se resuelven antes de acreditar tiempo; una baja explícita aprobada
se respeta, pero la cárcel por sí sola no es INJURY/HOSPITALIZATION pagada.

El mismo JobDefinition y evaluación determinan puntuación y paga. Revisión cada
3 turnos, historial 14, suavizado .35, NORMAL→WARNING→FINAL_WARNING→PROBATION→FIRED.
La fracción actual de baja pagada es .6, leída del puesto. Gastos diarios comunes
de una persona alojada: 10 renta + 7 comida + 2 servicios + 1 transporte. Se
mantiene el presupuesto diario abstracto existente, no se crean ítems gratis.
La pertenencia al lugar de trabajo y las vacantes también incluyen al jugador.

Los cuatro consumos base por hora de juego siguen iguales: ENERGY 3, HUNGER 5,
THIRST 100/14 (con clima) y BLADDER 8. Sueño recupera la fracción horas/8 del déficit
inicial de energía. La regla previa de necesidades gestionadas en cárcel se
conserva en ambas representaciones. No se drenan después de morir. Los recibos
reales de consumo ahora llegan también al registro compartido de alcohol del
protagonista: misma dosis, idempotencia, decaimiento y modificadores físicos/laborales.

La exclusión del conductor humano en npc_life_risk fue eliminada. Se conservan
los valores del JSON: mínimo de colisión 2 m/s; moderada ≥6, grave ≥11, fatal ≥20;
daños 4/18/55/110. `minor_speed=3` permanece en configuración pero la función
vigente clasifica todo contacto entre 2 y 6 como MINOR. Cooldown físico 2 segundos
reales (30 de calendario a 15:1), tratamiento de accidente moderado/grave 2/7 días,
costes 40/140. No afirmar que el mínimo sea 4: 4 es el daño menor, no su velocidad.
No se tira otra probabilidad aleatoria tras una colisión física observada.

### Internación compartida

`resident_medical_care.gd`, accesible como `sim.medical`, persiste en
`world_state.medical_care_01`: cases, pending, serial, version=1. Cada caso mantiene
id, persona, institución, origen, inicio, fin, duración, salud/lesiones iniciales,
fracción tratada y estado. Eventos `H/id` cada hora en la cola común; recargar
reinstala el próximo evento sin crear otro ingreso, cobro o dosis.

WALK_IN requiere lesión, institución correcta y trabajador de admisión real de
turno a ≤2.5 m. AMBULANCE requiere la unidad/paciente reales en INTAKE_INTERIOR
dentro de su hospital. Se detiene sangrado al admitir; no se aumenta salud allí.

Duración = ceil(clamp(4 + (100−health)*.1 + max(injury/100)*8, 4, 48)) horas.
Un contrato previo de accidente de 2/7 días puede ampliar ese plazo, contado
desde la llegada. Coste 140 si déficit de salud ≥50, o 40 en otro caso; gasto/deuda
compartidos. El coste de accidente ya pagado no vuelve a cobrarse.

Cada hora se aplica su fracción del 80% del déficit inicial de salud y de cada
lesión. Queda un 20% residual. Las órdenes TREAT_PATIENT de un internado registran
`last_attended` y no añaden otro +5 de salud/−.05 de CHEST; ese tratamiento anterior
sigue para pacientes ambulatorios. La muerte cancela eventos H. El alta permanece
en la institución y libera la actividad, sin traslado a casa ni resurrección.
La transferencia antigua CARE_TRANSFER solicita despacho MEDICAL finito; ya no
reposiciona a un NPC offscreen. Se usa el mismo ingreso para protagonista y NPC.

### Avance cronológico

`world_time_skip.gd` centraliza SLEEP, JAIL_SENTENCE y HOSPITAL_RECOVERY sobre el
reloj existente. SLEEP: 1..8 horas enteras, cama real accesible y libre, autorización,
alquiler vigente y ausencia de peligro. JAIL: sentencia reconocida, celda real,
puerta asegurada, sin transporte pendiente. HOSPITAL: caso ADMITTED y presencia
en su sala. Cárcel/hospital no pueden superar el tiempo restante. Muerte, valores
no finitos, duración no positiva, vehículo/transición o traslado activo rechazan
la petición. No hay nuevo salto por muerte ni acceso normal de depuración.

Todos los consumidores que usan el resultado de request/sleep_hours hacen await,
incluso si una petición puede rechazarse inmediatamente. La física/input se pausa
para resolver eventos, no se ejecutan millones de frames acelerados. La cola
cronológica existente y los umbrales de sangrado definen cada frontera temporal.
Slices cooperativos de 8000 µs por frame, con trabajo atómico que puede excederlos.
Se interrumpe al morir el protagonista. Se reconstruyen presencias y vehículos
según el nuevo tiempo. El gestor no escribe su transform.

`world_state.time_skip_01` conserva las últimas 16 peticiones/reportes. Cada uno
incluye razón, inicio, duración solicitada/real, posición/estado, fin, eventos,
desplazamiento y errores de orden; se guardan las primeras 32 marcas de cola.
Logs de consola solo en debug. `travel_arrivals` cuenta llegadas peatonales
completadas; no es un contador de todos los viajes de vehículos. Los reportes
antiguos previos a sleep_03/Medical_physical_08 incluían intentos de llegada y no
deben usarse como conteos exactos de trayectos. El número general de eventos es
otra medida; no representa cantidad de NPC únicos ni tiempo de CPU.

### Traslado y compatibilidad física

Se corrigieron bloqueos encontrados al probar la paridad: aceptación de una esquina
solo tras alcanzar el siguiente segmento, maniobra de aparcamiento con acelerador,
freno y volante reales, orientación final y reversa. Aparcamiento paralelo usa dos
arcos inversos a .9 m/s, radio calculado con la batalla y el giro .54/(1+.9*.075),
sin cambiar transforms. La finalización sigue exigiendo distancia <.65 m,
orientación <.3 rad y velocidad <.12 m/s. Tras 90 segundos físicos de esfuerzo se
puede reservar otra plaza elegible ≤100 m, evitando la bloqueada 1800 s de juego.
Si no hay alternativa, no inventa plaza ni atraviesa coches. Persisten limitaciones
de tráfico congestionado; no se garantiza salida de cualquier atasco.

Al bajar, si el marcador cae justo en el cordón, se buscan pasos exteriores de
.25/.5/.65 m, con soporte, desnivel ≤.25 m, pendiente normal.y≥.8, cápsula libre
de radio .24/altura 1.78 y trayecto a altura de cintura sin muro. Se conserva la
puerta y su comprobación. La animación usa el punto válido; no se libera al actor
a través de una puerta obstruida. Se habilita el ramal VEHICLE_ACCESS existente
para una persona a menos de 8 m de su vehículo asignado, tanto en planificación
como ejecución; no se añade fallback de peatones al grafo ROAD. Paramédicos
permanecen cerca del paciente durante la estabilización de la escena.

`patrol_index` se convierte a int antes de usar módulo tras JSON. No cambiaron
rig, pesos, escalas, clips, solver de cadáveres ni modelos. El enlace Root→Hips
es un anclaje de movimiento, no una extremidad rígida: excluirlo de mediciones de
longitud al sentarse; las articulaciones reales sí se comprueban. El transporte
de la pose herida conserva sus distancias. Las maniobras físicas de aparcamiento
no son una nueva simulación detallada de esas curvas fuera de pantalla; la
continuidad lógica usa el punto real capturado y la ruta/plaza reservada existente.

### Alcance y conservación

420 NPC/234 coches/325 plazas/73 definiciones iniciales, 15:1, save v1 y 720p/Trails
se conservan. La población puede evolucionar por fallecimientos e inmigración;
420 es la condición inicial, no un límite que congele la ciudad. 27 scripts
cambiados o nuevos; 6.480 hashes de arte coinciden. Las pruebas usan guardados
aislados bajo esta carpeta y -- --damage-test, nunca partidas reales. No se
ejecutaron instaladores/QA de revisiones antiguas sobre sus rutas selladas.

### Evidencia y continuación

Las nueve ejecuciones seleccionadas aprobaron 227 comprobaciones, incluidos
arranques repetidos. No hay FAIL, ERROR o SCRIPT ERROR en esos logs. Godot 4.4.1
headless, física fija a 60 pasos; no es una medición de FPS. Hay un aviso de
interpolación de LocalRain en algunos recorridos. La tabla completa y los
contadores están en verification_final.json; los límites están en VERIFICACION.

| sleep_03 | 28/28 | sleep_03.json |
| contracts_01 | 42/42 | contracts_01.json |
| medical_06 | 35/35 | medical_06.json |
| medical_partial_01 | 30/30 | medical_partial_01.json |
| medical_reload_01 | 11/11 | medical_reload_01.json |
| Custody_08 | 20/20 | Custody_08/qa_custody.json |
| Medical_physical_09 | 12/12 | Medical_physical_09/qa_medical_physical.json |
| Monthly_01 | 23/23 | Monthly_01/qa_intake.json |
| edges_05 | 26/26 | edges_05.json |

Sleep_03 recorre la interacción real de cama, 23→07. Custody_08 verifica todo el
trayecto físico y 48 horas de condena. Medical_physical_09 verifica toda la
respuesta/ambulancia/entrada/admisión y las 12 horas restantes de recuperación;
el paciente puede levantarse antes del embarque. La camilla con una caída física
real se prueba separadamente en edges_05, con error articulado máximo
1.19209289550781e-7 m y sin curación. No decir que ese recorrido completo se hizo
con el paciente tumbado. Medical_06 es una fixture de ingreso hospitalario, no de
conducción: NPC y protagonista 40/CHEST25→88/5, coste140 una vez. Partial guarda
tras6h con salud64; reload completa las6h restantes sin otra dosis/cobro/caso.
Contracts usa cinco hechos de asistencia controlados y doce faltas hasta despido;
no equivale a recorrer manualmente doce jornadas. Edges usa datos de contacto
idénticos sobre el hook real, no choques contra muros de cada tipo de vehículo:
a6m/s ambos salud82/CHEST18, saldo460 desde500, condición85.6, coste40 y cuidado2d.

Monthly_01 parte de una fixture de entrada a comisaría y celda física, y avanza72h
de marzo30 a abril2 de1994:267637eventos, muerte/vacante, preparación del funeral,
bus mensual con inmigrantes, coches y relaciones. No afirmar observación de una
ceremonia3D completa. Su antiguo contador travel_arrivals incluye intentos; los
cuatro saltos seleccionados conservan 0m de desplazamiento y cero errores de orden.
Los contadores de Sleep_03, Custody_08 y Medical_physical_09 sí cuentan llegadas
peatonales completadas con la corrección final.

Los intentos fallidos quedan preservados y explicados en VERIFICACION. Medical
physical07 encontró salida bloqueada en cordón;08 llegó a hospital pero midió por
error Root→Hips como extremidad.09 excluye solo ese anclaje y comprueba los huesos
articulados. No se modificó el modelo para esconder el falso positivo. Edges01–04
tuvieron fixtures prematuras, umbral de choque equivocado o NPC descargado;05 pasa.
Physical05 se abortó tras diagnosticar su atasco. No contar los fallos como éxitos.

Persisten los límites de tráfico muy congestionado y del contenido anterior de
carreras policial/EMS manuales; esta revisión no las convierte en campañas
completas ni promete60FPS. Arte6480 y project.godot intactos,27 scripts nuevos o
modificados. Cuando entregado.json existe, esta revisión está sellada: no volver
a ejecutar preparadores, QA/cierre archivados o instaladores antiguos sobre sus
rutas. Copiar a una revisión nueva para otros cambios. Antes/ es respaldo.
Leer PROJECT_CONTEXT ante incertidumbre y actualizarlo antes de compactar.

## 35. Cubiertas, ventanas/puertas, cables y cabinas — 2026-09-08

Solicitud más reciente: corregir los techos invisibles desde atrás/abajo,
ventanas invadiendo puertas, cables flotantes, puertas de cabinas y una animación
sencilla para tomar el auricular al llamar. Implementado en
Documentacion/Mundo_detalles_01; leer LEEME/IMPLEMENTACION/VERIFICACION.

El arranque normal usa Sistema/Datos/Mundo/index_detalles_01.json; el render
usa Modelos/Mundo_detalles_01/Visuales/index.json. Datos originales conservados.
Son180sectores físicos con versiones nuevas de structures/low/props, FULL,
LOD1,LOD2 y45HLOD;40capas de textura. No cambia suelo, navegación, IDs, posiciones
ni colisiones de edificios: comprobación exacta de cada sector. Se mantienen
interiores seamless y hojas de puerta interiores; las capturas de la fixture
de exteriores no incluyen esas hojas dinámicas. No rehacer desde los viejos
generadores de Pueblo_streaming/Utileria, pues se perderían correcciones previas.

Cubiertas: se mantienen las caras y UV superiores; caras inferiores a0.065m,
bordes y sofito continuo bajo los aleros cierran la separación frontón/pared.
Incluye techos inclinados industriales y toldos. El culling global sigue activo.
Ventanas traseras que invaden la puerta: retirar isla completa, incluyendo
marcos/alféizar, también en proxy;9.793triángulos retirados entre representaciones.

Cables:1.604tramos×3conductores×2extremos=9.624extremos; todos dentro de un
aislador en la malla final.2.613conjuntos de apoyo únicos por sector. Postes
existentes o soporte vertical simple, travesaño y tres aisladores. Geometría
de cable y apoyos horneada en UtilityPoleCableAssembly por sector, dos superficies
de soportes; no miles de nodos. Se saca del Visual de manchas. Visibilidad común
mínima160m/margen15m para postes/cables (comparación de nombre en minúsculas).
Sólo los planos cruzados del cable tienen cull_disabled. No se aumenta radio
físico50m para toda la ciudad ni se cambian las reglas de cámara/streaming§32.

15cabinas mantienen atlas azul/rojo, sitio, rotación y PAYPHONE_%04d basado en
utileria_04. world_phone_booth.gd: puerta de dos hojas0.44m, pliegues87°/-174°,
apertura1.8/s; collider sólido antiguo0.88×2.25×0.82 reemplazado por paredes,
suelo0.052m y hojas finas. Área cercana máscara3 filtra CharacterBody3D:
|x|<.75,z>-.36,z<1.55 mantiene abierta; retención.8s. Se abre al acercarse,
sin otra tecla. Se cierra al alejarse; no intenta cerrarse sobre el usuario.

character_phone_call.gd, character_phone_pose.gd y el hook compartido en
character_locomotion.gd sirven tanto al protagonista como al NPC visible.
No se mueve el actor escribiendo transforms: motor normal/colisión, entrada
local(.07,0,.03), salida(0,0,1.12), apertura>=.96 antes de entrar, límite22s si
algo bloquea. ENTER→REACH→LIFT→TALK→LOWER→RELEASE→EXIT. Alcance.75s/toma.85s;
elevar.7s/conectar.8s; conversación3s; bajar.65s/colocar.75s;soltar.55s/salir.6s.
WASD cuelga suavemente, también a mitad de la elevación. La pose usa IK existente
en Hand.R/Forearm.R/UpperArm.R (izquierda anatómica), sólo rotaciones. Head,
reposos, escalas, rig, clips y mallas intactos. Auricular sigue palma real y
vuelve a cuna(-.065,1.42,-.19); cable10segmentos. Daño/caída/muerte/liberación
cancela antes de aplicar gesto al cadáver; limpia metadatos/pin/input/auricular.
Arma equipada permanece equipada; se impiden apuntado/disparo durante llamada.

E/Call police o Call ambulance conserva UI inglesa. Cerrar menú ANTES de iniciar
el gesto para no reactivar controles. place_call devuelve status connecting;
submit_call llega al despacho real sólo cuando el auricular alcanza la oreja.
NPC testigo visible usa ese mismo gesto;45s de calendario para reportar después
de conectar. Fuera de pantalla conserva reportes lógicos. Un usuario físico por
cabina; pin durante interacción. Una cabina ausente por pin NPC esencial se
solicita con phone_load_ID de3s, sin dejar pins abandonados. Los teléfonos de
pared conservan la interacción anterior; esta revisión no añadió su animación
ni audio de conversación. No se creó otra simulación ni telefonía móvil.

Pruebas:phone_lab_05 16/16,geometry_02 5/5,world_02 10/10, además capturas GL de
ambos cuerpos y world_visual_01 10/10 con batches/Trails. Esta última fixture
reporta3Shape3D/resources pendientes al salir; no hubo error de interacción.
No presentarla como cierre sin avisos; no se ha diagnosticado su dueño. Los
headless y el laboratorio de cabinas renderizado no tuvieron ese aviso.
Primeros intentos fallidos se conservan y explican en VERIFICACION.

audit_final:6.480archivos protegidos idénticos,project.godot intacto,10scripts
nuevos/modificados. Nuevos recursos~23.65MB en1010archivos incluyendo UID. Se
preservan420NPC/234vehículos/325plazas/73definiciones,15:1,savev1,720p/Trails,
ragdoll§33 y paridad§34. No se promete60FPS ni prueba visual de785edificios desde
todos los ángulos. QA siempre aislada -- --damage-test; no partidas del usuario.

Para probar: reiniciar Play Dark City.cmd; Continue conserva la partida. Ver
Documentacion/Mundo_detalles_01/Revision visual.html y capturas/payphone_in_game.png.
Antes/ conserva scripts/shaders/datos/instrucciones. Al existir entregado.json,
la revisión queda sellada: no rerun de bakes, preparadores, QA, cierre o restauras
archivadas sobre esas rutas. Hacer otra revisión para cambios futuros.


## 36. Integración de tiendas diseñadas — 2026-09-08 (implementada y verificada)

Solicitud actual: Documentacion/Registro_tiendas_01/TEXTO_PARA_INTEGRAR_TIENDAS.md.
La integración antes aplazada ahora está autorizada e implementada en una revisión
nueva: Documentacion/Integracion_tiendas_01 y Modelos/Tiendas_integradas_01.
Leer esta sección antes de suponer que continúa aplazada. No tocar bibliotecas
selladas ni ejecutar sus generadores. No preguntas ni agentes; UI en inglés.

Registro fuente inmutable: Modelos/Interiores_trabajo/registro_tiendas_01.json,
revisión4,31negocios/375assets. Asignación explícita nueva en
Sistema/Datos/tiendas_integradas_01.json:31identidades en43locales/sucursales.
Mantiene Bxxxx, type/family, interior legado, empleos, propietarios, pagos,
inventarios, horarios, puertas y posiciones de edificios. SHOP nunca es B ni un
índice del store. SHOP023 Velvet Vice=bar B0189; SHOP031 Velvet Rooms=burdel B0010.
SHOP031 tiene nombre de fachada rotulado con Label3D, no un logo original inventado.
Siete negocios sólo tienen cartel específico (010/011/017/018/021/022/023): usan
muebles compartidos apropiados y siguen pendientes de interiores propios completos.
Las máquinas diseñadas son props; no se creó otra economía, cajero automático,
servicio de lavandería ni simulación de banco. Se conservan servicios existentes.

world_shop_library.gd adapta presentación: b.name/shop_id/shop_scene, sin cambiar
b.interior; scene_path también resuelve restauración inicial y carga normal.
work_task_world usa binding(b,legacy) y conserva IDs de targets; actualiza posición
del mostrador una vez con shop_layout_version1, conservando condición/tickets.
world_space_frames no cambia: geometría nueva compensa fit X/Z para que muebles
y paneles conserven metros/aspecto, escala uniforme del asset (mínima reducción
si el panel o elevador exceden el espacio). Shell, divisiones, cocina/baños útiles,
portales y salidas anteriores se conservan. Muebles comerciales anteriores se
retiran y los nuevos se agrupan por material junto al shell en la malla Visual:
el Collision común conserva su receptor de impactos sobre los triángulos nuevos.
31composiciones con variantes por43edificios; oficinas y locales sin mobiliario
propio usan shared. 502instancias lógicas,265assets específicos únicos y12shared.
Las habitaciones del motel reemplazan la cama anterior; sólo conservan el rincón
de baño. Mesillas junto a camas, mesas con sillas y barbero frente al espejo.
Mostradores: el collider termina en el plano real Countertop/Worktop/Desktop, no
en la altura de la registradora. Slots principales repartidos en filas separadas;
los slots de otras habitaciones permanecen. Evita stock interpenetrado y activo
que impediría descargar el local. No cambia física de objetos globalmente.

shop_navigation.gd: grid estática de obstáculos de muebles, paso0.32m, margen0.28m,
AStarGrid2D diagonal sólo sin esquinas bloqueadas; caché diferida8locales. Misma ruta
para lógica offscreen, trabajador y service_world.interior_waypoint físico. No
cambia navegación exterior, teletransporte ni skeleton/rig. Si el ancla semántica
está dentro de una cama, la ruta termina en su aproximación libre; graph y service
no reañaden el destino obstruido después de obtener la ruta diseñada. Se reservan
pasillos de habitaciones y corredor central1.7m. world_needs enlaza las máquinas realmente
expendedoras/frigoríficos y Mostrador; change_machine/ATM no se convierten en vendors.

Stock: shop_presentation_version1 en world_state. Después de migración antigua de
espacios, sólo reubica originPLACED/stateWORLD/paymentOWNED aún a<=0.12m de su slot
anterior. Incluye variantes _needs_0/_needs_1 (±.24x local). Objetos comprados,
inventario, tomados o movidos por jugador no se regeneran ni recolocan. Dinero,
IDs de ítems, órdenes y posición del jugador no cambian. Guardado v1 y writer
atómico anterior. Todo QA usa -- --damage-test y rutas Documentacion, nunca saves
reales. Mantiene420NPC/234vehículos/325parking/73defs,15:1,720p/Trails y §33–35.

Arranque normal cambia a Sistema/Datos/Mundo/index_tiendas_01.json; sólo19sectores
necesitan copia física con carteles nuevos. Ground/nav/props(cables/cabinas)/low
siguen referencias vigentes §35; fachadas conservan cubiertas/huecos corregidos.
Modelos/Tiendas_integradas_01/Visuales/index.json tiene180FULL/LOD1/LOD2 y45HLOD;
shader shop_sign.gdshader usa atlas original a su resolución para carteles, con
mismo cell_states/LOD/dither/clima; evita bajar logos del atlas a128. Texturas
comunes de edificios siguen128. Ningún bitmap fuente ni biblioteca se editó.

Verificación final:595markers/anchors en43locales,0fallos. Juego normal headless
y GL:22checks en cada uno, incluyendo caminar por puerta física, llegar al checkout
con colisión, bindings empleo/needs/pago, receptor de impactos con muebles nuevos,
guardado y carga de ciudad completa v1, descarga del local al alejarse y recarga
con los mismos IDs/stock. Migración/guardado aislados8checks; comparación JSON
estructural con tolerancia numérica1e-6. route_endpoint verifica después del último
cambio que la ruta a la cama B0011 termina junto al mueble. El recorrido físico
muestreado es NibbleStop B0155; no implica observar todos los turnos de todos los
NPC en43locales. No se midió FPS de ciudad completa ni se promete60FPS.

Capturas reales NibbleStop interior/fachada y31vistas nativas de composiciones en
Documentacion/Integracion_tiendas_01/Revision visual.html; acceso desde raíz
Ver negocios integrados.html. Captura adicional SleepCheap_room.png. Intentos
fallidos preservados y explicados en VERIFICACION.md. La fixture GL coloca al
personaje para preparar entrada/descarga/retorno, genera3avisos
POSSIBLE ILLEGAL NPC TELEPORT; cruce de puerta y ruta al mostrador usan motor real.
QA siempre aislada; no partidas reales. Sin errores en galería final.

Correspondencia exacta de Bxxxx/shop/clave legado/ubicación/inventario/target en
correspondencia.csv y Sistema/Datos/tiendas_integradas_01.json. Audit final compara
3.540fuentes protegidas y registra recursos/runtime nuevos;7scripts existentes
modificados,2nuevos y1shader nuevo. Recursos nuevos de modelos~17.4MB, sin alterar
las bibliotecas fuente. Documentación LEEME/IMPLEMENTACION/VERIFICACION completa.
Para probar, reiniciar Play Dark City.cmd: New Game y Continue usan la integración.
Al existir entregado.json la revisión queda sellada: no rerun de bakes, preparadores,
QA ni cierres archivados; cambios futuros requieren otra revisión. Galería y juego
normal reutilizables. Los siete interiores específicos pendientes quedan explícitos.

## 37. Estacionamiento de servicios y garaje de taxis — 2026-09-08 (implementado y verificado)

Solicitud: conservar lo coherente; ambulancias/patrulleros cerca de sus bases;
taxis en garaje abierto con oficinas aparte; civiles junto al cordón o en plazas
públicas cerca de hogar/trabajo. Revisión Documentacion/Estacionamientos_servicios_01.
No preguntas ni agentes; UI inglesa. Las tiendas de §36 YA están integradas: esta
revisión conserva sus IDs, asignación y assets y amplía sólo la sede B0153/SHOP_030.

Autoridades existentes: city_parking para plazas/reservas/ocupación;
city_population para flota; civil_vehicle_trip para viaje completo; service_world
para conducción física compartida. No segunda simulación ni taxis decorativos.
Las diez unidades de policía/reserva/ambulancia ya tenían plazas de base a menos
de110m; se conservan. Continúan420residentes/234vehículos(190privados+44servicios),
10taxis,73definiciones laborales,15:1,reloj/savev1/720p/Trails, física50m/pins,
§33ragdoll,§34paridad y§35techos/cables/cabinas. No cambio de personaje/rig/clip.

Garaje Fare Enough Cab Co.: cuatro plazas GARAGE_B0153_01..04, sólo TAXI,
6.0×3.6m. Centros[27.5,.09,-44.15],[23.5,.09,-44.15],[15.5,.09,-44.15],
[11.5,.09,-44.15], headingPI/nariz+Z. Taxi existente5.38×1.99×1.45m intacto.
Los otros seis taxis usan desborde exterior. New Game inicia cuatro reales dentro;
Continue conserva posiciones y usa nuevas plazas al regresar/reservar normalmente.
Persianas abiertas, huecos3.6×2.55m. OrigenB0153[19.5,.15,-38],yawPI,fit[1.08,1,1].
Dársena física localZ3..9.3; oficina separada detrás de particiónZ3.0. Piso/vado
del garaje bajados a calleY.05; oficinasY.15. Sin rampas convexas ni placa de
shellY.155 en la dársena. Puerta peatonal central original y espacio para abrir
puertas de coches conservados. Entrada semántica oficina[0,.025,2.7].

14instancias de assets de despacho/espera/archivo/rutas/teléfono/bebidas/oficina
se recomponen sin modificar bibliotecas/texturas. Mostrador[-5.3703704,0,1.6700001]
local; Actividad_00X-5.55/Z1.65, Actividad_01[3.6,0,1.65], Sala_01[3.6,0,1.45],
Sala_00Z1.45; WORK_POINT/SAFE_POINT/SOFA_POINT siguen markers correspondientes.
Conserva IDs/legacytype/family/interior/targets laborales. shop_layout_version2
migra el mostrador. taxi_office_layout_revision1 reubica sólo stock original
WORLD/PLACED/OWNED aún a<=.12m del slot antiguo, incluidas variantes needs±.24X.
Dos ítems movidos en fixture; objetos comprados/tomados/movidos no se recolocan.

service_garage.gd + Sistema/Datos/service_garage_01.json: install_slots usa
service_garage_revision1. Dos IDs de cordón que obstruyen los nuevos accesos,
PARK_road_010_0_2_0315/PARK_road_010_0_2_0327, quedan disabled para nuevas reservas.
No elimina ocupantes ni leases existentes. Salen durante su viaje normal.
city_parking.drive_route/service_world.drive_route invocan maniobra compartida:
reversa recta hastaZ-50.3, cuarto de círculoR5.7 aZ-56 rumboeste,.9m/s. Entrada
desde calle con curvaR5.7 y recta1.1m/s. Frena.40m antes del centro para despejar
sonda frontal; aceptación física<.65m/.3rad, ocuparplaza<1m/.3rad preservados.
Regreso del lado opuesto usa[0,-168],[-112,-168],[-112,-56],[-18,-56], esquinas
redondeadasR5.7 y3.2m/s cerca de ellas. Acelerador/freno/dirección y colisión real,
sin escribir transform del coche. Tres sondas de parachoques ceden paso. Entrada
bloqueada90s usa búsqueda alternativa existente. prepare_route reinicia fase de
maniobra cuando cambia ruta; graph offscreen respeta heading de segmentos reversa.
Garaje clasifica como exterior cubierto, oficinas interior. walk_link sale por
portón y pasa porZ-49.5 antes de girar, incluida salida de puerta peatonal central
para despejar su hoja exterior. Verificado caminar oficina->tirador real del taxi.

Capacidad civil: la lógica previa elegía325slots de1930candidatos uniformemente;
en partida vieja PRIVATE_CAR_139/citizen_001 estaba a511m de hogarB0048, y búsquedas
hasta801.50m. Se copiaron candidatos a un generador NUEVO, nunca se ejecutó el
archivado. Sistema/Datos/civil_parking_01.json añade1367slotsCURB37_..., a<=125m
de168lugares activos(92hogares/480capacidadadulta incluidos). Largo9.5/ancho2.8m,
paso12m, centro junto al cordón a roadwidth/2-1.45. Evita edificios/intersecciones,
props, slotsanteriores, corredorespeatonales1.7m frente/tras puertas y accesos
del garaje. Prueba nativa1371candidatos:1367aceptados/4rechazados,5rayos de suelo
y caja libre6.3×2.4×1.4m, cargando celdas vecinas. No añade nodos ni geometría.
civil_parking_supply.gd usa caché estática e install_once civil_parking_revision1
desde city_parking.setup; misma autoridad e índice espacial. NEAR_DESTINATION_RADIUS
=200.0m limita city_population.seed_fleet y nuevas reservas civil_vehicle_trip.begin.
Sin plaza mantiene fallbackcaminar. Búsquedas de servicios siguen bandas previas
50/100/200/400/1200m. Viajes en curso conservan reservas; Continue nunca recoloca
autos/habitantes. Coches antiguos lejanos se corrigen durante viajes normales.
Total1696registros=325anteriores+4garaje+1367civiles,1694habilitados. Los325IDs,
ocupaciones y leases antiguos se conservan; no cambiar blueprint city_resources_02.
Datos civiles679520bytes(~664KiB), sin escaneo nuevo por frame ni aumento de flota.

Arranque actual: Sistema/Datos/Mundo/index_garage_01.json; renderer actual:
Modelos/Estacionamientos_servicios_01/Visuales/index.json. Única celda física
sustituidaX05_Y08: structures/ground/props; navigation/low y demás celdas iguales.
props sólo retira6tri/3islas enteras de manchas que flotaban frente a nuevos huecos;
cables/postes/colisiones/otrosprops intactos. Interior nuevo
Modelos/Estacionamientos_servicios_01/Interiores/B0153.scn. 180FULL/LOD1/LOD2,
45HLOD,36capascompartidas; modelos~12.46MiB/474archivos. Fuentes de §36 inmutables:
3105SHA256 idénticos. Runtime10scripts existentes modificados+2nuevos; ver audit_final
y runtime.diff. No generadores/QA/instaladores de revisiones selladas ejecutados.

Verificación final80checks: motion_08 5; controller_07_west_01..04/east_02 15;
compatibility_05 15; office_anchors_03 9; world_07 headless18; world_visual_04 GL18.
190privados NewGame: distancia hogar media31.36m/máxima129.61m. Legacy376consultas
hogar/trabajo máximo96.90m;186reservas laborales simultáneas máximo96.07m, sin
conflictos ni mover coches. Distancia directa, no longitud de todos los caminos.
Pruebas reales entrada/salida de cuatro bahías y puerta peatonal, espacio puertas
de taxis, empleo/stock, reservas existentes/idempotencia y guardado/carga v1.
QA aislada -- --damage-test; ninguna partida real abierta/sobrescrita. Capturas
nativas taxi_garage_in_game_04/taxi_garage_close_04/taxi_office_in_game_04.png.
GL final sin errores de script ni leakObjectDB; un aviso POSSIBLE ILLEGAL NPC
TELEPORT por posición inicial de fixture, detector intacto; marcha posterior real.
Ruta de este registra11contactos con juntas trianguladas aY.05,maxpaso.139m/frame;
sin choque de coche con edificio/poste/otroauto. Intentos fallidos conservados en
VERIFICACION. No se observaron todos los turnos420NPC ni se promete tráfico sin
atascos/60FPS. Los seis taxis restantes no caben dentro: estacionan fuera.

Reiniciar Play Dark City.cmd, New Game o Continue. Vista entregada en
Ver estacionamientos.html -> Documentacion/Estacionamientos_servicios_01/Revision visual.html.
LEEME/IMPLEMENTACION/VERIFICACION/Audit preservan reglas y evidencia exactas.
Al existir entregado.json, no rerun de bakes/QA/auditorías/finalizadores archivados
en esta revisión. Para cambios futuros copiar/reapuntar a una nueva. Juego normal
y galería se pueden volver a abrir. Se conservan todos los apartados §0–36.

## 38. Revisión transversal de coherencia — 2026-09-08 (revisión entregada; propuestas pendientes)

Solicitud de Nico: después de terminar la integración, revisar si los sistemas
trabajan coherentemente y recomendar mejoras generales. Esta revisión NO cambia
el runtime ni autoriza por sí misma las recomendaciones. Ver
Documentacion/Revision_coherencia_01/INFORME.md y resumen_evidencia.json.
199scriptsGDScript comparados contra snapshots+manifest§37:199idénticos,0cambios.
No arte, reglas, controles ni guardados personales modificados; no agentes/preguntas.

Nuevo laboratorio headless Godot4.4.1 sobre caminata.tscn/NewGame:24h lógicas,
savev1 aislado, restauración real en otro proceso y otras24h. Se suspendieron
controladores3D para medir mundo lógico; no equivale a48h de observación física.
Preserva421registros(420NPC+protagonista),234vehículos,1696parking,73JobDefinitions.
Muestreos sin duplicación de ocupantes/reservas o ítems de inventario, referencias
laborales y necesidades finitas0..100. Empleados348->350,desempleados44->42,
28retirados;486reportesdeturno acumulados/7126órdenesCOMPLETEDretenidas al final.
Primerdía111525eventos,segundo116398eventos. Resultados19/20 y20/20: único fallo
primero era iniciar contador de cronología con clock.now cuando el backlog de
arranque comenzaba~1.49s antes; no evidencia de regresión durante eventos del día.
Segundo drena backlog inicial antes de medir:0errorescronológicos/sin vencidos al
cerrar. No ocultar primerintento. review_01/02.json y logs guardan evidencia.

Hallazgos para una próxima tarea, NO corregidos aquí:
1) Abastecimiento:112órdenesBLOCKEDdía1=72STOCK+35PART+5sinmercadería;
141día2=105STOCK+35PART+1sinmercadería. Suministros iniciales finitos; paquetes
DELIVERED no completan reposición de almacenes de ingredientes/repuestos.
Propuesta:pedidoúnico/proveedor/reserva/carga/transporte/entradaalmacén/despertar
órdenes, sin crear stock gratis.170FAILEDacumuladas por Customer left; no asumir
que todo abandono sea bug.
2) Pago:en ambos ensayos GroceramaB0014 cerrado/open=false, pay aceptó$2 de artículo
UNPAID y lo volvióPAID. pay/pay_here no exigen caja/personal; botón inventario
player_menu:304 sólo at_counter. world_needs.purchase sí revisa apertura pero
crea producto directamente sin reservar mismo stock ni tarea que el clienteNPC.
Propuesta:una transacción común con stock/empleado/cobro/entrega; vending excepción
sin cajero con inventario. Validar al confirmar, no sólo al abrirmenú.
3) Paridadcomida:complete_routine EATING elevó HUNGER20->50 sin ítem/descargo ni
pago en ese momento; provisiónfísicaROUTINE_PROVISION. Protagonista consume ítems;
ambos pagan food_daily7. Es una abstracción financiera previa que aún produce
asimetría de acceso a alimento. Propuesta:comida doméstica real, NPC automatiza
la decisión de comprar; evitar gastoabstracto+compradoble sin contraprestación.
Mantener sólo4necesidades y sin hambre mortal/colapso forzado.
4) Semántica comercial:preservarlegacytype era necesario para saves, pero falta
adaptar capacidades. EjemplosSofaSoGoodB0130SHOP010=flower_shop;
GreaseMonkeyPartsB0176SHOP011=flower_shop;Nuts&BoltsB0126SHOP005=gift_store;
CheapoDepotB0127SHOP009=jewelry. Menús aún consumen tipo/SHOPgenérico.
Propuesta:capabilities porSHOP_ID para catálogo/servicio/empleo/horario sin cambiar
BIDs/keyslegadas. Siete interiores específicos de§36 siguen pendientes.
5) Necesidades/pausas:al día2 había37hunger0/37thirst0/21energy0/33bladder0,
grupos superpuestos; algunos ya comían/dormían, no prueba de todos atascados.
choose suprime rutinas POLICE_DUTY/SERVICE_DUTY y trabajo fuera de workplace.
Medir duración crítica y ajustar previsión de viajes/pausas con relevos, sin
abandonar pacientes ni alterar física para resolverlo.

Rendimientográfico:se consultan mediciones históricas§32,18.4FPS25NPC/12cars,
12.3FPS40/20 a720p. NO benchmarkactual ni60FPS certificado. Optimizar presencia/
animaciónsecundaria/carga antes de1000residentes, sin forzar640 ni cambiar arte.
Savesaislados17971656->22199622bytes en dosdías; no prueba fuga ilimitada, pero
medirretención durante1semana/snapshot. Mantener writeratómico y evitar regresar
al autosavecompleto cada2s. Propuestaexperiencia:cerrar día casa/trabajo/comida/
cobro/gastos/social/descanso; textoscontextuales Closed:cashierabsent/Waitingfor
stock/Waitingforrelief y diario sólo de hechos conocidos por personaje.

Orden recomendado:abastecimiento+transacciones,paridadcomida/pausas,capabilities
comerciales,rendimiento,claridaddeinteracción+contenido. No construir autoridad
paralela ni declarar todos los sistemas terminados. INFORME distingue hallazgos
nativos,lecturaestática y recomendaciones. Sólo revisión entregada, nada de esta
lista está implementado todavía. Reinicio normal sigue§37. Una vez entregado.json
exista, no sobrescribir resultados/QA de esta revisión: usar nueva carpeta para
comprobar futuros cambios. Juego normal y lectura de informe sí reutilizables.


## 39. Pisos flotantes y cordón del taxi — 2026-09-08 (entregado)

Ver Documentacion/Pisos_alineados_01/LEEME.md. Sustituye sólo rutas visuales de§37:
index_pisos_01.json, Modelos/Pisos_alineados_01/Visuales/index.json y
Modelos/Pisos_alineados_01/Horizonte/terreno.scn. world_shop_library.scene_path
resuelve alias de74interiores vía Sistema/Datos/interior_floors_01.json; no cambiar
shop_scene/interior/SHOP/BID canónicos en saves o lógica.
Tapa decorativa Y.51 dentro de edificios atravesaba piernas/ruedas aunque la
colisión ya estaba vaciada. Recorte64celdas/168edificios, visualnativo+FULL+LOD1;
vacío interior footprint decolisión .16m, sólo franja baja; frenteB0153 extra
limitado a tapa horizontalY.51 para conservar pilares. Fallback
world_seamless_geometry.prepare_exterior ahora usa voids+openings para visual.
74copias interiores elevan sólo cara superior de pisoY0a.003 local;456vértices;
UV/índices/colores/colisiones/marcadores/mobiliario conservados. Normales codec
ArrayMesh error<.0002 documentado, no cambios artísticos/personajes/rig/animación.
Nuevo aviso usuario: pie se hundía en frenteTaxi. Dos capas de suelo adicionales:
horizonteglobal .145 encima delvado .05; bajar sóloárea[8.6,-50.05,21.8,9.05]
a.045 (3triángulos); dibujo cordón .152 pertenecienteaX05_Y09 atraviesaX05_Y08:
bajar sólo mismoárea a.052 (24triángulos). Nueva copia ground deX05_Y09 cambia
solamente SidewalkDetails/Block1_Details; suelo ycolisiónnativos idénticos.
No modificar apoyo IK para compensar un plano visual mal situado. No más
raycasts/carga por frame. LOD2/HLOD/texturascompartidas ytodos sistemas§37 intactos.
QA:1512puntos sinplataforma elevada;comparación colisionesymarcadores;caminar real
casa/garaje/oficina<.2m destino;4posiciones yida/vuelta bordeTaxi,0m penetración
de suelas físicas;capturasnativas finalcurb_final confirmantalones sinocultar.
QA aislada--damage-test,partidaspersonales intactas. Avisosteleportdefixture y
unaviso interpolaciónNPC enpruebageneral documentados;no garantíaFPS/rutas420NPC.
Conservar intentosfallidos enQA;normalessevalidanporerrorcodec,noigualdadbits.
4scriptsruntime:pueblo_caminata,world_render_stream,world_shop_library,
world_seamless_geometry. 420/234/1696(1694enabled)/73/15:1/savev1/720p/Trails.
§38hallazgos siguen pendientes. Reiniciar yContinue;no nueva partida obligatoria.
Una vezentregado.json exista, revisiónsellada;no rerunbakes/QA/auditorías aquí.
Para cualquiercorrecciónfutura usar nueva revisión. No preguntasy no agentes.

## 40. Consulta de cordón vehicular y remates pendientes — 2026-09-08

Tras§39 Nico mostró un corte lateral abierto entre vadoTaxiY.05 y veredaY.15,
y cartelFareEnough pequeño superpuesto al letreroTAXI legado. Esos dos remates
NO están corregidos: pidió «espera», se explicaron y se pausó el trabajo.
No se creó revisión de geometría ni se cambió runtime después de§39.
No interpretar§39 como validación de esas uniones laterales o del cartel.
Las alturas de diseño siguen siendo calle.05/vereda.15; el accesoTaxi se había
bajado localmente en§37 sin terminar la unión lateral. Mantener personajes/rig.
Última pregunta: si los vehículos pueden subir el cordón. Se ensayó sólo el
taxi nativo con vehicle_body.gd sin cambios en un laboratorio aislado, fixed60.
Control1cm a1m/s pasa; escalónvertical10cm de frente a1/3/5m/s no pasa en30s.
En diagonal45° a3m/s sí pasa, con desplazamiento lateral de unos16m:
posición final(-16.04088,.153891,-4.31021). La subida no es fiable.
No generalizar medición a cada modelo, aunque el controlador escompartido.
No hay lógica específica de escalón vehicular: move_and_slide,
ruedasCylinderShape3D, floor_max_angle40°, snap.3m; snap no significa subir.
Evidencia Documentacion/Prueba_cordon_vehiculos_01/resultados.json yLEEME.md.
Intento1diagonal salió de plataforma chica; final400m ancho exige altura.15.
Consulta/read-only, sin modificaciones a física o partidas. Las reparaciones
del vado y cartel siguen pausadas hasta que Nico indique continuar.

## 41. Postes fuera de la calzada — 2026-09-08

La captura de Nico mostró postes dentro de cruces. El generador de Pueblo03
usaba el borde de cada calle sin excluir las demás calzadas. Además había apoyos
de cables de §35 sobre asfalto. Corrección Documentacion/Postes_vereda_01/LEEME.md.
Plan activo: Sistema/Datos/Mundo/pueblo_postes_01.json. Índice físico activo:
Sistema/Datos/Mundo/index_postes_01.json. Sustituyen sólo esas rutas; el renderer
de edificios y horizonte siguen en Pisos_alineados_01, interiores/garaje igual.
74 props.scn nuevos en Modelos/Postes_vereda_01, 2.243.025 bytes. Se reubican
124 de 1175 postes con su collider original .24×7.2×.24m y 5 apoyos adicionales.
Dos enlaces decorativos inviables, cables[1501] y [1545], conservan su registro
con disabled:true y no generan geometría. Hay 210 registros de tramos ajustados.
La colocación considera unión de 35 calles, suelo, edificios, puertas, utilería,
accesos de servicios y retornos de esquina. Candidatos .65m detrás del cordón,
exclusión de calzada .57m, reserva de cruce 3m, separación mínima de postes 2m.
Preferir desplazamiento sobre la misma línea de cordón; comprobar toda la
conexión con edificios incluyendo conductores ±.28m. No crear nuevos cruces.
Poste1005: (-212,.15,273), evita hueco previo de colisión en candidato inicial.
Todos los registros de props conservan orden/ID. Los 124 movidos tienen
maintenance_approach y utility_placement_revision:1. work_task_world migra una
vez su punto de trabajo en Continue, conservando espacio, condición, suciedad,
tickets y demás historia. Luminarias usan el mismo plan. No mover actores/autos.
Tres scripts cambiados: pueblo_caminata, city_walk_network y work_task_world.
No nueva generación por frame, ni cambios a suelo, edificios, nav, interiores,
LOD, personajes/rig/UV/clips, simulación 420/234, parking1696/1694enabled,
jobs73, reloj15:1, savev1,720p/Trails. §38 y pendientes de §40 continúan pendientes.
QA final:1175 instancias y1175 colliders sin duplicados,1848 apoyos horneados,
cero invasiones de calzada;645 muestras bajo129 bases aY.15; todos los extremos
activos dentro de aisladores;1096 fuentes/runtime protegidos sin cambios.
Recorrido nativo20m cruza antiguos postes905/906, errorhorizontal final~.05m.
Bindings124 pasan, error0m y migración idempotente; ver verificado.json.
world_01 tuvo falso negativo de igualdad JSON/Vector3: bindings_01 lo reemplaza
con tolerancia1mm; no contar el intento fallido como éxito. Aviso de teleport de
fixture y avisos al cierre ObjectDB/Shape3D documentados; no garantíaFPSglobal.
Capturas nativas en Documentacion/Postes_vereda_01/Capturas. QA aislada con
--damage-test, partidas personales intactas. Reiniciar yContinue, no NewGame necesario.
Una vez entregado.json exista, no volver a ejecutar bakes/QA/verificadores de
esta revisión; copiar/reapuntar una nueva. No preguntas ni agentes. UI en inglés.

## 43. Interiores habitados y presupuesto de rendimiento — EN CURSO, 2026-09-08

Actualización intermedia: navegación offline nueva interior_navigation_01.json,
103 edificios /73 recetas, Taxi conserva su ruta propia. Rejilla casas .16m
y radio de exclusión .24m (NPC cápsula .22m), comercios .32/.28;528 rutas pasan.
1181 marcadores idénticos. play_02:421 registros guardados/recargados con IDs
iguales; momentum22huesos coincide error0. Velocidades de character_damage se
calculan sólo al iniciar caída/soltar arma; restablecer historial al dormir/congelar.
Capsula quieta en soporte estático comprueba10Hz, input/daño/falta de apoyo vuelven
inmediatamente al motor habitual. Filtro mundial Lambert sin specular mate.
Modificadores fuera de cámara6Hz; radio de detalle12→7m bajo presión, histéresis2m.
Datos inmutables de proyección ragdoll cacheados. Cadáveres comparten30 pases con
mínimo6 por cuerpo; quedan mismos límites, masa, colisión, impulsos y proyección.
ragdoll_02:9 víctimas dormidas, parpadeo parado, error posición<=8.54e-6m,
ángulo<=.001rad. Rendimiento todavía insuficiente en5muertes.
Latest code also gates inactive npc_activity_pose and justice_pose; must verify
that work/surrender still activate, plus final busy timing. No original mesh edits.

QA caution: play_01 busy had artificial opposing-traffic collisions; play_02/03
assumed northern sidewalk rectangle actually crossed decorative towers
D03_0437 et al at Z7.5. These caused2falling actors and invalidate normal-busy
acceptance. Fixed fixture now uses actual southern sidewalk lanes Z48.1/49.0,
X9..89/target8..102,1.2m leader spacing, collision pin/readiness before spawn.
busy_final:21.82physicalNPC/2.93cars,0ragdolls,41.287ms mean,p9975.877 (FAIL).
night_final real fresh23:00 world:20.26NPC/3cars,32.804mean,p9958.614 (FAILp99).
Normal walking~17.5ms and home entry~18ms, p99still40..52ms. Keep all420/234.
drive_02 stopped behind obstacle at69.535m/80contacts; fixture moved lane toX1.4
for drive_final, now running/awaiting read. drive_01 stopped after prolonged
misconfigured skip. drive_02 skip correctly paused representation but timed out
at30s; no completed time-skip acceptance. Night fixture starts at23:00 instead.
Do not assert global30FPS or seamless fast driving from incomplete tests.
Galería HTML y LEEME en Documentacion/Interiores_habitados_01. Aún no sellado.

Trabajo activo en Documentacion/Interiores_habitados_01 (aún SIN sellar). Leer
Traspaso_revestimientos_01/TEXTO_PARA_CODEX.md y MASTER_PERFORMANCE.txt de esta
revisión. Fuentes selladas sólo leídas: no ejecutar sus generadores ni QA.
74 interiores nuevos en Modelos/Interiores_habitados_01/Escenas; world_shop_library
resuelve primero interior_floors_01.json y después interior_assets_01.json. IDs
canónicos, 502 instancias comerciales anteriores, puntos de uso y partidas intactos.
374 colocaciones nuevas de muebles diseñados: sofás, sillones, TV/mueble, camas,
heladeras, microondas, piletas/inodoros; 15 en B0029, escena nueva I033.scn.
43 interiores SHOP tienen sus cuatro revestimientos asignados por SHOP_001–031.
Puertas diseñadas EXTRA_DOOR integradas al controlador de empuje existente,
con hojas/pivotes y colisión móvil; durmientes sin proceso hasta recibir empuje.
build.gd/mesh_batch.gd generan malla por materiales; build.json registra cambios.
world.gd en mundo nativo aislado --damage-test: entrada B0029 y caminar Cocina,
Dormitorio/Baño pasan; cinco PNG revisados. No declarar todas las rutas NPC probadas.

Hardware objetivo Ryzen7 5800HS/16GB/iGPU; 35FPS preferidos, piso práctico30,
720p normal, nunca640 normal. 420 NPC y234 vehículos persistentes preservados.
Usuario: NEAR difuso simple, specular barato sólo útil y sombras cortas; MID
difuso sin sombras costosas; FAR/HLOD tinte ambiente/vertex sin sombras dinámicas.
performance_target_01.json:28.6ms objetivo,33.333ms crítico, presión28..32ms.
world_retro_render conserva720p/Trails, sombra solar ortogonal35m/atlas1024,
sin atlas de luces locales; p99 ventana240 cuadros actualizado5Hz. Presión
reduce colas frame2500→500us (2→1jobs), presencia2000→450us (8→3candidatos),
eventos lógicos2000→650us; mismos registros/eventos, sólo repartir trabajo.
body_secondary_motion quieto10Hz, clips respiración siguen; giros lejanos mínimo
15Hz en vez de forzar cada cuadro. Cerca en movimiento y daño/apuntado preservados.
HLOD usa shader unshaded con tinte según normal/día-noche; FULL/MID difuso previo.
Instrumentación world_performance_trace opt-in; benchmark.gd usa ciudad real,
GL720p, sin fixed-fps, partidas deshabilitadas. before/after1_performance.json:
20 peatones quietos,0 autos físicos: promedio55.490→32.083ms; p99 88.061→68.379ms;
CPU body17.557→3.983ms, GPU11.190→7.909ms. Piso30FPS TODAVÍA NO validado.
diagnose1 promedio38.554ms/p9970.994; diagnose2 fluctuó mucho. No presentar
promedios como cumplimiento; faltan pruebas movimiento/autos/noche/ragdolls.
Investigar captura de poses/velocidades de character_damage por cuadro antes de
otros cambios. Conservar momentum de caídas y armas soltadas. Revisar colisión/nav
de muebles adicionales si necesario; nav existente no regenerada. No tocar
§42 cordones/taxi, personajes/rig/UV, verdad persistente, partidas personales.
Antes/ guarda scripts/config/contexto anteriores. No entregado.json aún: cerrar
esta sección con resultados reales, límites y rutas antes de sellar revisión.

## 42. Todos los vehículos suben cordones / vereda Taxi restaurada — 2026-09-08

Nico reanudó expresamente la reparación de vereda Taxi y ordenó que TODOS los
vehículos suban 15cm; 35cm puede bloquear. Prioridad rapidez, sin preguntas/agentes.
Implementado en vehicle_body.gd compartido por NPC y jugador, sin cambiar modelos,
dimensiones, ruedas, control de dirección, rig ni animaciones. CURB_STEP_MAX=.18m
incluye margen físico para franquear15cm. Tras move_and_slide, sólo ante bloqueo
de StaticBody3D con normalY<.95 y dot(dirección)<-.05 y velocidad>.08m/s, probar
barrido vertical de .18m, horizontal a max(.48,radio_rueda+.15), apoyo descendente
.23m con normalY>=.8. Desnivel aceptado .008.. .18m; comprobar barrido del resto
del movimiento elevado. Aplicar move_and_collide vertical/resto horizontal. No
teletransporte horizontal ni excepciones a colisiones de paredes/cuerpos. Apoyo
temporal probe_distance/max(abs(speed),.5)+.05s evita que snap vuelva a trabar
el neumático en la arista. Snap0 durante apoyo; al terminar vuelve a .3m/gravedad
22m/s². Al frenar o velocidad<=.08, cancelar apoyo. Sólo barrer al topar con
obstáculo; no añadir sondeos por frame durante marcha libre. motion_ready mantiene
guardas de streaming y límites mundiales; no bloquea veredas por categoría.

Índice físico activo Sistema/Datos/Mundo/index_cordon_02.json copia §41 y cambia
únicamente ground de X05_Y08/X05_Y09. Horizonte activo Modelos/Cordon_vehiculos_02/
terreno.scn. Plan pueblo_postes_01.json; renderer Pisos_alineados_01/Visuales/index,
interior_floors_01 y todos los props/postes/edificios/nav permanecen vigentes.
Se restaura vereda original Y.15 en TODO el frente Taxi, calle Y.05; no se aplana
para permitir coches. Reconstruir ground y horizonte desde fuentes Mundo03,
manteniendo UV/materiales y alturas originales fuera del interior de garaje.
Sólo X8.6..30.4 / Z-47.5..-41: rampa de .5m entre Z-47.5(Y.15) y -47(Y.05),
resto garajeY.05 existente. Nueva malla y ConcavePolygonShape3D coinciden.
Detalles de suelo .152 fuera/.052 dentro; fallback .145 fuera/.045 dentro.
Lados y borde posterior cerrados con caras y collider; desaparece abertura lateral
del antiguo vado exterior. Garaje B0153, cuatro plazas, oficinas y registros de
vehículos intactos. Dos scripts runtime: vehicle_body y pueblo_caminata (dos rutas).
El cartel Taxi/FareEnough de §40 sigue pendiente, fuera de esta reparación.

Evidencia Documentacion/Cordon_vehiculos_02: probar.gd, fleet.gd, garage.gd yworld.gd.
30/30 pruebas: sedan,coupe,sedan_large,sport,taxi,police,pickup,van,truck,ambulance;
cada uno pasa15cm de frente a2m/s y marcha atrás a-2m/s, queda bloqueado en35cm.
Taxi adicional:10cm a1m/s;15cm a1/3/5m/s recto y3m/s diagonal45° pasan;35cm bloquea.
Diagonal final(-10.30914,.20389,-4.308918), ya no deriva16m lateralmente.
52 sondeos del suelo real frente/rampa/garaje pasan tolerancia9mm. Taxi nativo
atraviesa las colisiones reales del garaje de Z-55 a-44 y vuelve marcha atrás,
cero collision_stops. Normal world GL: caminar calle→vereda→garaje→calle pasa,
errores finales<.068m, apoyoY.150837 frente yY.050056 garaje. Captura nativa
taxi_sidewalk.png revisada: vereda continua, sin corte lateral ni pies ocultos.
world.err contiene aviso de teleport sólo por staging inicial de QA; no procede
de locomoción. Pruebas aisladas --damage-test, sin escrituras a partidas personales.
No validación global de FPS ni cada velocidad/ángulo. Reiniciar juego yContinue;
no nueva partida necesaria. Generadores anteriores sellados no se ejecutaron.
entregado.json sella esta revisión; futuras correcciones copiar/reapuntar a otra.
