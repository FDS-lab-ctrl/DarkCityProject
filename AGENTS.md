# More Models assets only — Complementos_interiores_03 (2026-09-08)

Nico explicitly requests usable game assets and the joint handoff text only.
Do not create new viewers for further batches unless Nico asks. The draft viewer
for03 was removed; no viewer/launcher/gallery delivered for this batch.
Read PROJECT_CONTEXT.md §29 and Documentacion/Complementos_interiores_03/PARA_INTEGRAR.md.
21 sources in Materials/More Models yield21 shared assets: EXTRA_WALLCAB_001–006,
EXTRA_CABINET_004–010 and EXTRA_SEAT_001–008. Six wall units, seven floor cabinets,
eight seats; white cabinet with feet stays floor-mounted despite its source folder.
Modelos/Complementos_interiores_03/catalogo.json has exact paths and movement axes.
21packed Blender files reopened,21GLBs,21native scenes loaded headlessly,21atlases512.
22hinges checked (20Y-axis,2X-axis top lids),1drawer; source hashes preserved.
No SHOP/world placement or new collision/controller/inventory. Glass/mirror remain
opaque source imagery; folding chair is a fixed open pose. Prior libraries intact.
The same Documentacion/Traspaso_revestimientos_01/TEXTO_PARA_CODEX.md is updated.
Sealed by entregado.json: no rerun builders/QA or overwrite outputs; new revision
for later changes. Preserve the current world and all existing identities.

# Shared cabinets and drawers — Complementos_interiores_02 (2026-09-08)

Read PROJECT_CONTEXT.md §29 and Documentacion/Complementos_interiores_02/PARA_INTEGRAR.md.
Seven source sheets in Materials/EVEN MORE STUFF produce seven shared assets:
EXTRA_CABINET_001–003 and EXTRA_DRAWER_001–004. Independent catalog in
Modelos/Complementos_interiores_02; no SHOP ownership or world placement.
Seven packed Blender files reopened, seven native scenes loaded/rendered, five
hinge pivots and nineteen drawer slides checked. Hollow bodies and drawer boxes;
seven source-specific atlases512x512, originals preserved. Visuals only, no new
inventory/controller/collision or tool-cart driving. Prior375 registry and nine
Complementos_interiores_01 assets remain intact. The same joint handoff at
Documentacion/Traspaso_revestimientos_01/TEXTO_PARA_CODEX.md already includes them.
Ver armarios y cajoneras.cmd is reusable; Complementos de interiores 02.html gallery.
Sealed by entregado.json: no rerun builders/documenter/QA or overwriting outputs.
Use a new revision for later edits, preserve existing world state and identities.

# Additional shared interior assets — Complementos_interiores_01 (2026-09-08)

Read PROJECT_CONTEXT.md §29 and Documentacion/Complementos_interiores_01/PARA_INTEGRAR.md.
Nico supplied two sheets in stuffimadeuseonlyifiask/Materials/more stuff: one chair
and eight door types. Nine shared models in Modelos/Complementos_interiores_01,
IDs EXTRA_ARMCHAIR_001 and EXTRA_DOOR_001–008, no SHOP ownership/world placement.
Separate supplementary catalog; the existing375 shop-library records stay intact.
Nine packed Blender files reopened, nine native scenes loaded/rendered, nine hinge
pivots checked fixed and opening toward Godot+Z. Double door has two independent
leaves; security bars have real openings. Glass uses opaque source imagery.
Two runtime atlases512x512, originals preserved. Visuals only: integrate existing
door controllers/colliders and IDs later. Ver complementos de interiores.cmd is
the reusable viewer; Complementos de interiores 01.html is the rendered gallery.
Sealed by entregado.json: no rerun of builders/finalizer/QA or overwriting outputs.
Any later changes belong in a new revision. Preserve current §42 world state.

# Current shared vehicle curbs / restored taxi sidewalk (2026-09-08)

Read PROJECT_CONTEXT.md §42 and Documentacion/Cordon_vehiculos_02/LEEME.md.
User resumed the taxi sidewalk fix and requires ALL vehicles to clear 15cm.
Shared vehicle_body.gd now sweeps low static steps, max rise .18m including margin.
All ten models pass 15cm forward/reverse; 35cm stays blocking. No new vehicle art.
Active physical index: Sistema/Datos/Mundo/index_cordon_02.json; active horizon:
Modelos/Cordon_vehiculos_02/terreno.scn. Plan stays pueblo_postes_01.json; preserve
all §41 pole placements, §39 building visuals/interior aliases and §37 parking.
Street Y.05, full taxi sidewalk Y.15 restored; inside garage only, ramp between
world Z-47.5 and -47.0 lowers to existing garage Y.05. Original apron lowering
and §40 pause are superseded for the sidewalk/vehicle fix. Taxi sign still pending.
Native fleet30/30, taxi lab6/6, real garage entry/reverse exit and52 floor probes
pass; normal-world protagonist walks street/sidewalk/garage/back, screenshot saved.
QA only --damage-test; no personal saves/questions/agents. Once entregado.json
exists, revision sealed: copy/repath for later bakes/QA rather than rerunning here.

# Shop wall coverings — Revestimientos_tiendas_01 (2026-09-08)

Separate wall covering library delivered: read PROJECT_CONTEXT.md §29 and
Documentacion/Revestimientos_tiendas_01/CONTINUIDAD.md / PARA_INTEGRAR.md.
Modelos/Revestimientos_tiendas_01/catalogo.json:124 PNG512 textures and124 tested
Godot materials, four wall variants per SHOP_001–031. Source375 registry unchanged.
These wall materials are NOT applied to the world yet. Use current §39 floor aliases
and §41 world paths for later integration; never restore older shop/garage indices.
Horizontal mirrored repeat, vertical clamp; align bands at corners. Seven previously
sign-only businesses still lack dedicated furniture despite receiving wallpaper.
Revision sealed: preserve all generated images/materials and later edits; no rerun
of its preparers, generators, finalizer or archived QA. HTML gallery is reusable.

# Current utility pole placement (2026-09-08)

Read PROJECT_CONTEXT.md §41 and Documentacion/Postes_vereda_01/LEEME.md.
Normal plan: Sistema/Datos/Mundo/pueblo_postes_01.json; physical world index:
Sistema/Datos/Mundo/index_postes_01.json. These supersede the two older paths.
Building visual catalogue/horizon/interior aliases remain §39, not regenerated.
124 poles and 5 extra supports relocated; decorative cable entries1501/1545
disabled, source records retained. 74 new props scenes, all other props intact.
Keep props order and PROP/%05d IDs; maintenance_approach and revision1 migrate
static work targets once without losing condition/history or moving residents.
Check combined road union, bases, crossing exits, doors AND whole cable spans;
sliding along the original curb avoids cutting building corners. Shared materials,
collider dimensions, streamed visibility and all other world systems preserved.
Native QA:1175poles/1175colliders,1848cable supports,zero roadway intrusions,
645ground probes/129bases,20m actual walk and124work bindings. See limits/logs.
§40 taxi-sidewalk seam/sign/vehicle curb climbing stay paused; not fixed here.
English UI, no questions or agents, no personal saves. QA only -- --damage-test.
When entregado.json exists, this revision is sealed: do not rerun preparers,
bakes, audits, QA or verification. Copy/repath into a new revision for new work.

# Current floor / taxi curb visual alignment (2026-09-08)

Read PROJECT_CONTEXT.md §39 and Documentacion/Pisos_alineados_01/LEEME.md.
Normal boot: Sistema/Datos/Mundo/index_pisos_01.json; visual catalog:
Modelos/Pisos_alineados_01/Visuales/index.json; horizon in same model revision.
74 interior visual aliases via interior_floors_01.json; preserve canonical IDs.
Old Y.51 foundation lids removed inside 168 buildings/64 cells, FULL/LOD1 too.
Floor tops separated 3mm; physical collision/markers and approved art unchanged.
Taxi apron .05, fallback .045, curb overlay .052. Overlay belongs to X05_Y09,
although it crosses into X05_Y08; always inspect neighbours and global fallback
when changing terrain elevation. Do not change foot IK to hide visual mismatch.
Keep §37 parking/services and §38 pending-review findings, all shared systems.
1512 sampled floors and native walking/curb QA pass; see exact evidence/limits.
No personal saves, no questions or agents. English UI. QA only --damage-test.
Sealed once entregado.json exists: never rerun these generators/QA/finalizer;
copy/repath to a new revision for future work. Normal game remains reusable.

# Cross-system review delivered; findings not implemented (2026-09-08)

Read PROJECT_CONTEXT.md §38 and Documentacion/Revision_coherencia_01/INFORME.md.
This is an audit, not a gameplay rewrite: all199 runtime GDScripts unchanged.
Normal runtime remains §37. Two isolated logical days with save/reload preserved
421people/234cars/1696parking/73tasks and worker/slot/item identity. No new FPS claim.
Open findings: depleted work supplies (141blocked after day2), direct payment
without cashier/open shop, player/NPC food asymmetry, legacy shop capabilities,
need-break priorities. Recommendations require a subsequent implementation task;
do not treat them as completed or use them to undo approved prior work.
First test19/20 had startup-backlog chronology instrumentation issue; continuation
20/20 after draining startup. See evidence/limits; not all physical city routes tested.
No questions or agents. English game UI, approved art, current shared authorities,
real saves and sealed revisions stay protected. Use a new revision for new QA.

# Current parking and taxi garage integration (2026-09-08)

Read PROJECT_CONTEXT.md §37 and Documentacion/Estacionamientos_servicios_01/
LEEME.md, IMPLEMENTACION.md and VERIFICACION.md first. This supersedes older
runtime index paths and the previous 325-parking total; retain prior history.
Normal boot: Sistema/Datos/Mundo/index_garage_01.json. Renderer:
Modelos/Estacionamientos_servicios_01/Visuales/index.json. Only X05_Y08 physical
structures/ground/props and B0153 interior changed; source shops and art immutable.
4 real taxi garage bays, open shutters, separate offices; 6 taxis overflow outside.
Garage floor .05m, office .15m, 3.6x2.55m openings, unchanged 5.38m taxis.
Shared physical steering/reverse/yield; no transform repositioning. Pedestrian
garage/central door routes pass Z-49.5 before turning clear of outward door.
1696 parking records = original325 +4garage +1367legalcurb;1694enabled. Two existing
driveway spaces stop new bookings; existing occupancy/leases preserved. Private
new-trip/initial-home search max200m; same parking authority/index, fallback walk.
service_garage_revision1/civil_parking_revision1 install once; office stock
taxi_office_layout_revision1 only original untaken stock within .12m, needs ±.24X.
shop_layout_version2/office markers retain target IDs. Never relocate Continue cars.
Keep420/234/10taxis/73jobs/15:1/savev1/720p/Trails, §33–36 and approved character art.
80 functional checks +1367 native geometry-validated spaces; 190 new private cars
31.36m average/129.61m maximum from home. See documented fixture teleport warning,
road-seam contacts and traffic/FPS limits. No city-wide 60FPS guarantee.
No questions or agents. Game UI English. QA isolated -- --damage-test, never real saves.
Once entregado.json exists, this revision is sealed: do not rerun its generators,
QA, audits or finalizer. Copy/repath into a new revision for further changes.
Normal Play/New Game/Continue and Ver estacionamientos.html remain reusable.

# Designed shops integrated into the world (2026-09-08)

Read PROJECT_CONTEXT.md §36 and Documentacion/Integracion_tiendas_01/LEEME.md,
IMPLEMENTACION.md and VERIFICACION.md. This supersedes earlier deferred shop
assignment notes. Canonical source registry revision 4 remains immutable.
31 business identities in 43 existing buildings; all 265 specific assets used,
plus 12 shared. Seven sign-only businesses still lack dedicated interior sets.
SHOP_023 Velvet Vice is a lounge/bar; SHOP_031 Velvet Rooms is the brothel.
Runtime assignment: Sistema/Datos/tiendas_integradas_01.json. Keep B IDs, legacy
type/family/interior keys, jobs, services, objects, ownership and save v1.
world_shop_library selects shop_scene; no second commerce simulation.
Normal boot: Sistema/Datos/Mundo/index_tiendas_01.json; renderer:
Modelos/Tiendas_integradas_01/Visuales/index.json. Preserve §35 repairs.
shop_navigation grid .32m, clearance .28m, shared physical/logical routes.
Keep reachable furniture approach endpoints; never append an obstructed bed centre.
Only migrate original untaken stock still within .12m of its old slot, once.
Designed furniture is part of Visual so existing bullet impact receivers see it.
595 destination checks/43 locations; 8 save checks; 22 world checks headless and GL.
See test staging teleport warnings in VERIFICACION. No city-wide FPS claim.
No questions or agents. UI English. Keep approved character art and §30–35 systems.
When entregado.json exists, this revision is sealed: do not rerun its generators,
QA, audits or finalizers. Copy/repath into a new revision. Normal Play/New Game,
Continue and Ver negocios integrados.html remain reusable.

# World roofs / openings / wires / payphones (2026-09-08)

Read PROJECT_CONTEXT.md §35 and Documentacion/Mundo_detalles_01/LEEME.md,
IMPLEMENTACION.md and VERIFICACION.md. Normal boot uses index_detalles_01.json
and Modelos/Mundo_detalles_01/Visuales/index.json. Keep unchanged ground/nav,
building collision/IDs and seamless interiors. Roof undersides/soffits0.065m;
whole offending rear window removed. All9624wireends anchored, shared visibility.
15booths: original atlas, folding87/-174deg door, physical entry and handset.
Shared character_phone_call/pose for player/visible NPC; no head/rig/mesh edits.
E call dispatches only after receiver reaches ear. Damage cancels living gesture.
Keep §32–34,420/234,15:1,720p/Trails/savev1. No questions or agents. UI English.
31functional checks plus visual labs;6480artfiles unchanged. See documented
3Shape3D shutdown notice in full-world GL fixture; no global FPS claim.
Once entregado.json exists, this revision is sealed. Do not rerun its bakes,
QA, audit/finalizers, or any old city installers. Copy/repath into a new revision.

# MASTER RULE — the player is another resident (2026-09-08)

Read PROJECT_CONTEXT.md §34 and Documentacion/Paridad_residentes_01/Solicitud.txt.
Human input and UI select decisions; they do not exempt the protagonist from
shared employment, expenses, inventory, injuries, justice, travel or world time.
Use the same existing authorities/records. Do not add an autonomous duplicate
protagonist. Only SLEEP, JAIL_SENTENCE and HOSPITAL_RECOVERY may advance normal
world time, through world_time_skip.gd, after physical validation. Never teleport
to a cell, hospital or home. Use chronological event catch-up, not physics frames;
jobs, deaths, funerals, service vehicles and monthly arrivals continue.
Respect approved art/rig/UV/clips, 720p/Trails, save v1 and §33 ragdoll decisions.
No questions or agents. Game UI is English. QA uses isolated new paths and
-- --damage-test; never real saves or sealed historical revision installers.
§34 is implemented and verified in Paridad_residentes_01. Read its LEEME,
IMPLEMENTACION, VERIFICACION and COBERTURA. Once entregado.json exists, do not
rerun archived QA/preparers/closure into these paths; copy to a new revision.
Known limitations: congested vehicle routing and existing manual service-career
content. Do not claim universal traffic recovery or city-wide 60 FPS.

# Death ragdoll performance — Ragdoll_rendimiento_02 (2026-09-08)

Read PROJECT_CONTEXT.md §33 and Documentacion/Ragdoll_rendimiento_02/IMPLEMENTACION.md
and VERIFICACION.md before changing physics. Same19physicalbodies(14caps/5boxes),
ZERO nativejoints,18customconstraints; allmodel/UV/weights/rig/clips unchanged.
Typedsolvercache; custompasses8air/12contact/24newimpact-orquiet; onlydistantAND
unobservedreduce4/8. Livingnonfatal24. Allconstraints/lengths enforcedeverytick.
Planenormal supportcorrected; do notsleep an uprightcorpse basedonlyonlowspeed.
Sleeping19RIDs detached+3proxies; saved sleeping corpses createZEROPhysicalBones
until significantwake, preserveexactpose. Offscreen no-pose death uses existing
lyingrecipe; neveroverwriteanobservedpose. Directstateregistries, no globalscan.
Death disables citysleep/work/justice/social modifiers too; neverattach newliving
gesturetoadeadactor. No per-framecorpseposewrites orperiodicpresence-snapshotrebuild.
Keep420/234/325/73/15:1,§31savev1/checkpoints,§32720p/Trails andallapprovedart.
125functionalchecks+176solvercomparisons+6480arthashes. Isolated720p5fall mean
95.039→17.771ms;10groundp99200.360/max223.281ms STILLcostly. Do notclaim60FPS
with10falling orwholecrowdedcity. Sleeping~16.67mscap,0solvecalls; notzeroGPUcost.
Ctrl+F10 diagnostics opt-in; normalPlayDarkCity useschanges. Noquestions/agents.
Once entregado.json exists thisrevisionis sealed: do notrerun its installers,
instrumentation,QA,profiles,reportgeneratorsorcontextupdater. Copy/repath to anew
revision. Preservefailedattemptlogs. Neverrunolderrevision restore scripts.

# Retro streaming and Trails — Optimizacion_retro_01 (2026-09-08)

Read PROJECT_CONTEXT.md §32 and Documentacion/Optimizacion_retro_01/LEEME.md,
IMPLEMENTACION.md, VERIFICACION.md and COBERTURA.md before changing this system.
The infrastructure is integrated; the crowded-scene FPS acceptance target is NOT
met. 720p measurements:25 NPC/12cars median54.217ms (~18.4FPS),40/20 median81.534ms
(~12.3FPS). Do not claim full crowd optimization or60FPS. Preserve420persistent
residents,234cars,325parking,73workdefs,15:1clock,§31save rules and approved art.
User rejected forced640x360:STANDARD1280x720,LOW640diagnostic,HIGH1600x900.
GTAIII-inspired Trails are actualGPUhistory NORMAL6%, OFF/LOW3.5/STRONG8 options.
Ctrl+F9 lab/F9cellmap. Settings are session-only. UIEnglish;noquestions/agents.
Camera owns visualLOD100/220/400/700/1400m;physics stays50m/pins and drivingcorridor.
No originalNode3D hiding for building batching:layers=0 preserves impact triangle
receivers AND visibledecalchildren. Keep sourcecollision,nav,interiorsandidentity.
FullBodySecondaryMotion near12m/turn>0.15rad/aim/injury;only distantadditivedetail
usesstaggering20/10Hz. Motor and authored clips continue. No arm/rig redesign.
Frame install budget2atomicjobs/2500us;atomicjobsCANoverrun. No unbounded periodic
city scans/saves. Runtimehashes andfailedattempts preserved;6480artfilesunchanged.
Independentshopviewer additions preserved,notownedbythisrevision;storeassignment
still deferred. When entregado.json exists, do not rerun this revision's generator,
instrumentation, QA, reporting or restore scripts, nor overwrite evidence. Copy to
a new revision. Normal Play/NewGame/Continue and debug controls remain reusable.
Especially never run restore_instrumentation.py over the implemented runtime.

# Periodic stutter fix — Rendimiento_01 (2026-09-08)

Read PROJECT_CONTEXT.md §31 and Documentacion/Rendimiento_01/LEEME.md before
assuming how saving, event budgets or place queries work. Full synchronous JSON
autosave every2s caused ~0.8–1s stalls. No recurring full-city gameplay save now:
checkpoint on world_ready, pause_menu, sleep_completed; manual save/exit remain.
One immutable snapshot, one JSON/I/O worker; save/load/exit wait for older writes.
Keep v1 format/.tmp/.bak. Snapshot itself still costs171–259ms at checkpoints.
Do not reintroduce a frequent copy/serialization timer or touch real saves in QA.
Event budget2000us/32perphysicsframe; presence2000us/8candidates,atomic work may
exceed. Time skips drain chronological heap; reads stop integration at a pending
event boundary. nearest uses100m tagged buckets, same20m query/old choices.
Keep420NPC,234cars,325parking,73workdefs,15:1clock and all approved art/rig/clips.
151current checks passed; one old assertion is retained and superseded by proof
of487shift reports/5965completed orders, not erased. See VERIFICACION.md.
Final home p99~58ms/max131ms vs~844/1012ms before; no universalFPS guarantee.
30full physical rigs still cost~98ms/frame: a separate continuous-cost limit.
No questions/agents. UI English. Normal Play/New Game/Continue use these changes.
Once entregado.json exists, never rerun this revision's generators/QA/reporting
or overwrite evidence. Copy to a new revision. Preserve independent shop assets.

# Seamless interiors and peripheral walking — Coherencia_mundial_01 (2026-09-08)

Read PROJECT_CONTEXT.md §30 and Documentacion/Coherencia_mundial_01/IMPLEMENTACION.md.
This supersedes the PENDING seamless/peripheral statements in older sections below.
Interiors are physical city-space scenes, streamed per building. active_id is only
the player's context; use root_for/world_point/local_point/path_space for others.
Never restore the detached Y=-120 room, door teleports, collision exceptions or
despawning NPCs at thresholds. Physical doors preserve bodies, view and identity.
WALK uses the separate full pedestrian topology; no road-graph fallback. Car access
has explicit short curb spurs; saved journeys rebase from the exact current point.
469 crossing strips,785 connected building accesses,325 parking places covered.
50m prefetch plus visible real facades;65m/6s retention with people/activity/view pins.
Keep420 persistent residents,73 work definitions and all6480 protected art/rig/UV/clips.
Probar interiores y periferia.cmd is the reusable isolated test. Normal Play/New Game
and Continue use the new code. UI English; no questions or agents. QA -- --damage-test.
This revision is sealed: do not rerun its generators/integrators/finalizer/archived QA
or overwrite evidence. Use a new revision. Do not claim every other part of the older
world-coherence document complete. Preserve the separate shop-asset work in §29.

# Final shop identities and asset registry — Registro_tiendas_01 (2026-09-08)

Read PROJECT_CONTEXT.md §29 and Documentacion/Registro_tiendas_01/CONTINUIDAD.md.
Canonical registry: Modelos/Interiores_trabajo/registro_tiendas_01.json.
shops.txt defines 31 final businesses; SHOP_001..SHOP_031 are stable business IDs,
not building IDs or runtime store keys. Preserve IDs when adding Nico's next assets.
375 existing assets accounted for:265 shop-specific,110 shared. Twenty-four businesses
have interior pieces;7 have signs only. Pieces do not imply fully assembled interiors.
Latest more more shops intake:105 unique pieces (69 objects/36 panels),78 source PNGs,
9 businesses:SHOP_019/020/024/025/026/027/028/029/030. Read
Documentacion/Interiores_trabajo_03/CONTINUIDAD.md. Catalog:Modelos/Interiores_trabajo/03/catalogo.json.
105 packed Blender files reopened,105 Godot scenes loaded; rendered/search/clay QA passed.
78 originals and2596 prior library files unchanged;31 shop IDs and270 prior records exact.
Ver assets de tiendas 03.cmd is the reusable isolated viewer; Assets tiendas 03.html gallery.
Registry revision4. Sign-only:SHOP_010/011/017/018/021/022/023; no invented completion.
The previous more shops intake added72 unique pieces from48 source PNGs for8 businesses.
Read Documentacion/Interiores_trabajo_02_ajuste/CONTINUIDAD.md for final copies:
Modelos/Interiores_trabajo/catalogo_tiendas_02.json resolves paths in02/02_ajuste.
The33 corrected copies replace existing IDs, not additional assets. Registry CSV
and JSON agree. Ver assets de tiendas 02.cmd is the reusable isolated viewer.
All sources and sealed01/02/02_ajuste/03 remain preserved; work textures512px, packed Blender,
GLB and native Godot scenes. Never rerun delivered generators or archived QA.
Velvet Vice SHOP_023 is separate from Velvet Rooms SHOP_031 (all brothel_* assets).
No world assignment, store replacement or message to another task was performed.
That integration handoff remains deferred. Preserve the sealed library and sources.

# Work orders — Tareas_laborales_01 (2026-09-08)

Read PROJECT_CONTEXT.md §28 and Documentacion/Tareas_laborales_01/IMPLEMENTACION.md.
One sim.work / existing clock, employment, objects, money, NPC IDs and vehicles.
73 definitions; E contextual, Tab > Status > Work & employment. Probar trabajos.cmd
is a reusable isolated retail test; normal New Game/home/menu are unchanged.
Do not reshape heads, bodies, hair, UVs, rigs or approved clips:6480 hashes preserved.
Finite supplies/cargo, real multi-stop trips, task reservations/results, shared NPC
and player job controller. Faction membership remains separate from legal payroll.
Read exact times/prices/conditions in §28; do not infer values from old interim notes.
Police/EMS NPC operations integrate with work; full manual player service-shift
driving/custody controls remain unadapted. Prior peripheral/seamless world requests
also remain pending. Do not claim all job minigames or all past documents complete.
All QA -- --damage-test; never real saves. No questions or agents. UI English.
Once entregado.json exists, never rerun archived generators, QA or finalizers or
overwrite their evidence. Copy to a new revision. Reusable launchers live in Sistema.

# Interior/work asset library — Interiores_trabajo_01 (2026-09-08)

Read PROJECT_CONTEXT.md §29 and Documentacion/Interiores_trabajo_01/LEEME.md.
Nico authorized the 80 sheets in stuffimadeuseonlyifiask/interior and work assets.
198 independent low-poly assets/variants: 19 furniture/electronics, 7 service,
88 shop pieces/panels/signs and 84 exterior pieces/panels/signs. 198 editable packed
Blender files, GLBs and native Godot scenes in Modelos/Interiores_trabajo/01.
All 80 source PNG hashes are unchanged; 58 oversized copies were reduced to512x512,
22 were already512. This explicit512px rule applies to THIS environment library,
not to the separate128px clothing/hair or256px vehicle rules. 80 shared runtime
atlases; 8–1056 triangles per asset,24280 total. Measured source rectangles are
recorded in catalogo.json. Dimensions approximate; simple optional AABB collisions.
Review: Assets interiores y trabajo.html / Ver assets de interiores y trabajo.cmd.
198 Blender reopen checks,198 native Godot scene loads, rendered viewer/search/clay
QA passed. Isolated library only: no world placement or new gameplay mechanics.
Preserve Nico's later edits. Once entregado.json exists, do not rerun generators;
version the next authorized rebuild. Viewer launch remains reusable and isolated.

# Corpse optimization and master population core — Ragdoll_y_poblacion_01 (2026-09-07)

READ PROJECT_CONTEXT.md §27 and Documentacion/Ragdoll_y_poblacion_01/IMPLEMENTACION.md.
This supersedes the old 50-resident quotas and uniform service shifts below.
Production expand_population=true:420 initial adults,190private+44service cars,
325 persistent parking spaces. One existing store/clock/queue; fixed contracts and
cycle offsets never reroll on reload/day. Preserve deaths, existing identities,
homes, owned vehicles and all6480 approved art/rig/UV/clip files. No replacement
people or vehicles per trip. Civil passengers use actual doors/seats/car/parking.
Slots are real curbside envelopes, not invented driveways across sidewalks.
Dead bodies preserve the original19-body articulated solver while moving, then
freeze exact pose, detach physics and use3proxy shapes. Wake without pose reset.
Death stops AI/IK/blink/weapon/locomotion; living get-up behavior stays intact.
Ctrl+F11 population; Ctrl+F10 corpse physics; F11 travel; F12 services; F10 clothing.
Probar poblacion.cmd is reusable isolated preview; Play Dark City.cmd normal menu.
All QA -- --damage-test; NEVER real saves. No questions/subagents. UI English.
Urban WALK uses168 sidewalk edges+126crossings around42blocks; DRIVE stays separate.
Outlying routes without connected sidewalks retain the old street graph. Full
peripheral navigation and seamless interiors remain PENDING in the other world-
coherence document: do not say all prior documents are complete. FIRE/RESCUE use
existing truck/van standby resources;
taxi boards available staffed cab within300m on foot, no phone pickup dispatcher.
Some isolated exit-only ObjectDB warnings remain recorded; no1000NPC/FPS claims.
Once entregado.json exists, do not rerun this revision's generators, archived QA
or finalizers. Copy to a new revision. Read §27 before assuming previous choices.

# Physical world continuity — Continuidad_01 (2026-09-07)

Read PROJECT_CONTEXT.md §26 and Documentacion/Continuidad_01/LEEME.md before changing travel.
183 checks in 23 suites; 6480 protected art files unchanged. Same 50 residents.
No convenience teleports, no spawned replacement crews/cars. One TravelPlan, existing
NPC queue/clock/store. Physical observed travel; timestamped routes when offscreen.
Ten existing police, nine medical staff, 00/08/16 eight-hour shifts, actual arrival
and essential relief. Base B0001 police / B0002 hospital; one existing vehicle each.
Arrest walks, boards rear seat, drives, exits, walks inside and books only at cell.
No sentence time skip. Sleep at actual bed is the only normal large calendar skip.
EMS treats bleeding after150 game seconds, carries same rigid body, drives and walks
to hospital. No free healing. Medical pose modifiers must publish real last_world
for snapshots while normal ragdoll capture is suspended; preserve pose/body alignment.
Phones require actual reach/visibility. Waiting queue, finite units, real commutes.
Civil vehicles use timed shared seat adapters; never revive old instant mount logic.
Portal frame transforms are for the SAME door; retain geometry/visibility safeguards.
F11 NPC travel, F12 service inspector. Entire game English. No questions/subagents.
Play Dark City.cmd normal menu unchanged; Probar continuidad.cmd isolated preview
allows up to4h scheduled commute warmup without touching real saves.
Always -- --damage-test for QA. This revision is sealed: do not rerun its generators,
archival tests or finalizer; copy to a new revision. Reusable launcher is permitted.
Some headless exit-only RefCounted warnings remain documented; do not claim1000NPC
performance or that all historical logs are warning-free. Preserve art/rig/UV/clips.

# Weapon library — Biblioteca_armas_01 (2026-09-07)

Read PROJECT_CONTEXT.md §25 and Documentacion/Biblioteca_armas_01/LEEME.md.
Five original-sheet low-poly weapons; revolver visually replaces PPK with unchanged
244m/s test projectile/physics. One-hand revolver/pistol; two-hand shotgun/SMG/rifle.
Actual RIGHT arm is .L. Original donor grip/head/rig/art remain unchanged. Support
is rotation-only damped IK on .R, with model Support marker. RIGHT severity>=3
blocks all; LEFT>=3 blocks/drops two-hand only; LEFT2 reduces handling. Preserve
normal carry/sprint and previous temporary-fall policy. Use damage.last_world for
drops: SkeletonModifier results are temporary outside final capture callbacks.
record.weapon_loadout_01 is sole per-type gun/ammo authority, legacy ammo migrates
once to revolver. Prices/capacities/round vs magazine reload in weapon_library.gd.
Purchases full once, zero reserve, existing pawn counter and objects.balances.
Drops preserve type/ammo through existing dynamic streaming. I>Weapons chooses;
2 draw/holster,RMB aim,LMB fire,R reload. Probar armas.cmd is reusable isolated
review; normal Play Dark City.cmd/main menu/home spawn/save behavior unchanged.
310 checks + five reopened blends +6480 protected hashes. Delivery sealed: do not
rerun its generators, archival QA, or finalizer. Copy to a new revision. No real
save for QA; always -- --damage-test. No interim questions or proactive subagents.

# Fixed New Game spawn — UI_03 (2026-09-07)

Read PROJECT_CONTEXT.md §24. Only runtime change is pueblo_caminata.gd SPAWN:
Vector3(14.5,.175,49.5),1.2m outside B0029 front door, on sidewalkY.15.
Existing headingPI/yaw0 faces the house. Saved position/interior overrides remain.
Play Dark City.cmd → NEW GAME → START NEW GAME. No duplicate menu/project.
21 rendered checks;6480 protected art files unchanged. Preserve UI_02 and its
English/neon/save/control behavior. QA fixtures only, -- --damage-test always.
UI_03 sealed; version future changes and read context before assumptions.

# Current English neon UI / main menu — UI_02 (2026-09-07)

Read PROJECT_CONTEXT.md §23 and §16, then Documentacion/UI_02/LEEME.md FIRST.
192 checks in 8 rendered suites; 6480 protected art files byte-identical.
EVERY player-facing game string must be English. Keep proper names, persisted IDs,
room/type keys, model paths and historical docs unchanged. New UI text: English.
Legacy display translation: game_english.gd + Sistema/UI/english.tsv. Native labels
auto translate but source .text properties remain old Spanish; custom draw calls
need explicit English. Keep ui_language_lifetime's exit cleanup to prevent crashes.
Theme: green #00EF79, magenta #FB17C8, dark panels, pixel fonts, stepped frames.
Pixelify Sans + Press Start2P with bundled OFL licenses. Do not bake mockup images
over controls or invent game systems/items shown only in the style references.
Start main_menu.tscn via Play Dark City.cmd or existing Caminar launcher; direct
caminata.tscn still works for development. Same 5 player tabs and UI_01 behavior.
Six manual slots user://saves/slot_01..06.json, original autosave separate.
Use original atomic CharacterLives writer, .bak recovery if primary bad/missing;
New Game archives autosave before starting. Do not destroy manual slots.
selected_save_path/start_new_game metadata consumed once by CharacterLives.service.
Do not create another persistence database or translate data IDs for localization.
ALL Godot QA ends -- --damage-test. UI_02 QA/saves ONLY; never inspect real saves.
No interim questions; choose best reasonable option. No proactive subagents.
Preserve head/body/UV/paint/rig/clips/physics, NPC logic and earlier sealed deliveries.
UI_02 sealed by entregado.json: copy tests to a later revision, never rerun this
revision's preparation/finalizer/QA or overwrite its evidence. Older Spanish UI
labels/main-scene statements below are superseded; UI_01 gameplay rules remain.

# Current player UI / controls — UI_01 (2026-09-07)

Read PROJECT_CONTEXT.md §22 and §16, then Documentacion/UI_01/LEEME.md FIRST.
167 checks; 6480 approved art files byte-identical. User asks no interim questions,
choose best reasonable option and add missing controls within this structure.
No proactive subagents. Active project is Dark City Project, not historical cwd.
Tab/I/M open ONE PlayerMenu at Status/Inventory/Map; pause SceneTree and hold_time
player_menu, restoring prior pause/input/orbit/mouse and other clock owners exactly.
E is universal context and confirm; W/S lists, A/D tabs, Esc back/pause; no R teleport,
Tab aerial or N/G/H/J/V/P/F gameplay shortcuts. R reload shared PPK6/36/1.4s;
record.weapon_ammo_01 persists, no free refill, cancellation costs no rounds.
NPC small menus keep world alive, lock only player/target inputs; aiming gets combat
priority. Preserve original aiming, animations, head/rig/art and physics constants.
Contacts require has_met_player, known locations/notes only explicit knowledge;
world_state.player_ui_01 never becomes a second NPC database or GPS/route/police view.
Gift/drop/use/pay/sell use original physical inventory IDs and original balances;
protected quest/story/mission and keys/documents cannot be given/dropped/sold.
Keep giftable/reservation/payment/distance checks at presentation AND transaction.
CRIMINAL REPUTATION NOW0–500: unique x5 migration with reputation_scale=500;
not wanted0–5, affinity or convictions. Personal relationship changes only display
bands per §22, not historical reward/willingness algorithms. No generic crime reward.
Action extension register_action(id, valid, execute, label) adds future mission/favor/
romance/follow options without keys; hide invalid actions, don't invent mechanics.
Preserve F2–F11 explicit dev tools, but block equipment/appearance mutations in cars.
All Godot QA ends -- --damage-test; never inspect/use real save. Rendered input suite
requires actual display mouse capture. Seal is entregado.json; never overwrite it.
Historical controls/0–100 reputation below are superseded by this header and §22.

# Current justice / investigation / punishment — Justicia_01 (2026-09-07)

Read PROJECT_CONTEXT.md §21 and Documentacion/Justicia_01/LEEME.md FIRST.
Latest delivery: 185 checks, protected art 6480 files unchanged. Existing employment
§20 and logical life §19 remain in place. No questions during reasoning; choose best
reasonable implementation. No proactive subagents unless explicitly requested.
LogicalNPCWorld.justice is the sole authority, persisted in world_state.justice_01.
Use K/ in the existing event queue; same WorldCalendar 15:1 and objects.balances.
Separate wanted, unresolved charges, convictions/time served, criminal reputation,
and personal affinity/knowledge. Never copy true_offender_id to suspect_id unproven.
Initial radius100m; witnesses45m/FOV140°, recognition22m, conscious and actual LOS.
Valid mask abs(affinity)<=25 blocks identity unless observed link; outside radius
unknown escape is NOT named, but a prior identified witness may report later.
Police:10 existing residents (1chief/2sergeants/7officers), max4 active operations,
on-foot navigation/last observed position, real portals, known residences only.
No new police traffic/convoy or autonomous criminal mission AI. Masks API only.
H surrender/answer actual home visit, J legal record. Sentence sums, repeat1/1.1/1.2,
cap90 days. Fine cannot make balance negative. Quest/story/mission items protected.
Medical intake stops bleeding but never heals HP/limbs or revives. Injured custody
transfers test real shapes against new floor/furniture and rebase detached rig frame;
recreate physics proxies on space change, preserve authored rigid segment lengths.
Jail skip uses shared calendar/queue. Only ENERGY/HUNGER/THIRST/BLADDER;
release values90/70/70/80. NPC prison logical except required loaded inmates.
One social receipt per observer/incident, upgrades only incremental loss; no city-wide
stranger affinity hit and no crime->criminal reputation. CRIMINAL_JOB/CRIMINAL_MISSION/FACTION_WORK
reward uses award_criminal_work receipt, no generic crime reward.
NORMAL/SCRIPT_CONTROLLED/TEMPORARILY_PROTECTED + MISSION_EVENT protection.
All Godot QA ends -- --damage-test; never inspect/use real save. Version sealed with
entregado.json. Copy tests to new revision, never overwrite prior final evidence.
Do not modify approved art, UV, textures, meshes, rig, joint settings or clips unless asked.
Historical pending-justice statements below are superseded by §21 and this header.

# Current NPC employment and life stability — version01 (2026-09-07)

Read PROJECT_CONTEXT.md §20 and Documentacion/Empleo_vida_01/LEEME.md first.
Latest delivery passed 149 checks. This supersedes historical statements below
that wages/employment are pending. Four needs ONLY: ENERGY/HUNGER/THIRST/BLADDER.
LogicalNPCWorld.jobs (RefCounted) owns employment/stability/risk in the existing queue.
CharacterLives records employment/life/life_status and world_state.npc_employment_01.
Money ONLY WorldSmallObjects.balances. Calendar ONLY WorldCalendar, 15:1. No offscreen
NPC Node/process/timer. Daily/review/journey events, persistent RNG, sparse coworkers.
JobDefinition and life tuning in npc_employment.json/npc_life_stability.json.
Actual work/interview attendance matters; no wages or hiring from presentation alone.
Warnings recover; firing/death releases a real vacancy, never clones a replacement.
Alcohol is paid/inventory + timed shared ConsumeAction + existing balance modifiers.
Crisis is abstract/reversible; fatal outcome disabled. No methods or fatal crisis code.
LEFT_CITY alive/history survives load; not resident/household/spawn. Return uses the
same identity and real vacancy; no bus/funeral/full traffic AI is claimed implemented.
F11 dev inspector only. F8 explicit test revival keeps history, returns unemployed;
never claims an old filled job. Normal death never revives on streaming or R.
Only logical queue time_quantum=.001; bleeding queue MUST remain 0 (unquantized).
JSON full_precision=true, day arrays cast to int, tie decisions by stable ID.
Protect all approved models, skin/paint/UV/hair/rig/clips. 6480 assets unchanged.
All Godot QA ends -- --damage-test; do not touch the real save. Version sealed by
entregado.json; copy tests to a new revision instead of overwriting final evidence.

# Current persistent NPC logical world — version01 (2026-09-07)

Read PROJECT_CONTEXT.md §19 and Documentacion/Vida_logica_01/LEEME.md first.
Latest delivery passed119 checks. Both player and ALL NPCs have ONLY
ENERGY/HUNGER/THIRST/BLADDER. Previous SOCIAL-need instructions below are historical
and superseded; preserve relationships, affinity/familiarity, TALK/GIFT and cooldowns.
LogicalNPCWorld owns schedules/routes/needs/events; CharacterLives remains the database,
WorldCalendar the sole15:1 calendar. No per-NPC offscreen Node/process/timer or old
advance_route/apply_logical teleport. Runtime NPCs only through presence, max24, radius50/65m
plus visibility/event safeguards85m. Persistent physical snapshots rebase journeys on load.
logical_handoff guards damage snapshots during portal exits, despawn and sleep reconstruction.
Damage health queue tracks offscreen bleeding bands75/50/25/8/0; healthy records not scanned
per frame. Use track_bleeding/rebuild_health_events for explicit data imports.
Graph, queues, route queries and private hourly thermal integrals contain no 3D resources.
NPC self-maintenance: sleep7.5h maximum8, eat1200s, drink90s, toilet360s, food+30, water+35/-10.
All dates are GAME CALENDAR seconds except legacy health tick timestamps. Don't scale physics.
No automatic need deaths. Preserve body/head/rig/UV/paint/hair/clips. Future justice, mission
and transport producers use the documented APIs; no claim of a full police AI or wage economy.
All Godot QA must end -- --damage-test; never inspect or mutate the real save for tests.
Do not rerun sealed generators or integrar.py. Make a new delivery for later changes.

# Current protagonist needs — version 01 (2026-09-07)

Read PROJECT_CONTEXT.md first, especially §18, and Documentacion/Necesidades_01/LEEME.md.
Player has ONLY ENERGY/HUNGER/THIRST/BLADDER. Never restore protagonist SOCIAL;
NPC SOCIAL and all personal relationships stay intact. ENERGY stays owned by the
existing WorldCalendar; the other three persist under player_needs_01.
Rates per calendar hour: energy3 awake, hunger5, thirst100/14 with thermal factors,
bladder8. Sleep uses missing-energy formula1–8h; other needs keep decaying.
No automatic death/damage/collapse/accidents/forced sleep. Penalties bounded, not multiplied.
N status, I selected inventory item, E fixtures/pickup. Physical items are the same
identities through unpaid/payment/theft/gifts/consumption. Consume reserves until
animation end; cancellation/streaming/damage keeps the item. Shared consume poses
run BEFORE damage; no second capture, no dead blink restoration, no source rig edits.
New props have64×64 textures; runtime .res textures are baked from PNG sources.
Do not rerun sealed generators over later painted edits. See version01 delivered
manifest and backups; old character/world art remains byte-identical.

# Required project continuity (Nico, 2026-09-07)

After context compaction, on resuming this project, or whenever a previous
decision is uncertain, read PROJECT_CONTEXT.md BEFORE making assumptions or
editing. Keep it current with exact values, rules, exceptions and implementation
status. It distinguishes implemented systems from pending design. This AGENTS
file retains historical notes; do not treat older CURRENT headings as the latest
state when PROJECT_CONTEXT.md and newer code explicitly supersede them.

Active project: C:/Users/Nico/OneDrive/Documents/Dark City Project.
The sibling fantasygamegodot is historical. Never restore its rejected models or
old generators into this project. Social version 01 is now implemented and tested.
Read PROJECT_CONTEXT.md sections 14–15 and Documentacion/Sistema_social_01/LEEME.md.
Never infer that pending jobs/factions/full romance/funerals also exist.

# Current social system — version 01 (2026-09-07)

WorldSocial is installed by pueblo_caminata.gd after calendar, inventory and sleep.
One central world_state.social_01 stores pair affinity/familiarity/tags/memories,
per-person SOCIAL/preferences and timed NPC meetings. All social dates are calendar
seconds, NOT LifeStore physical seconds. Never restore record.relationships scalars;
they are migrated once into central records, retaining only legacy_sources audit.
Same records survive streaming, clothes changes and F8. No new random people.

E: vehicle > bed > available NPC (TALK/GIFT) > item/counter. Menu restores prior
camera/control/mouse; no global time hold. TALK lasts 120 game seconds (8 real).
SOCIAL decays 3/hour. TALK: +12 SOCIAL; affinity -1/0/+1/+2, 6h pair cooldown.
GIFT transfers real inventory: liked +4 / neutral 0 / disliked -3, 24h cooldown.
Shared positive cap +6/pair/calendar day. No friendship farming through repeats.
Fixed 300s calendar planner; 1800s NPC meetings, 4h next-meeting cooldown. Respect
work/sleep/shelter/health and actual arrivals nearby; analytically resolve offscreen.
Family and partner tags are supported, not randomly assigned. Grief lasts 3 days
for strong ties. Funeral/reputation hooks do not implement those future systems.

Social pose is a reversible shared SkeletonModifier3D inserted BEFORE damage's
modifier. Do not add a second final-pose capture, change bones/meshes or restore
blink on dead characters. Existing locomotion, aim and damage keep authority.
Data and exact tuning: Sistema/Datos/social.json and PROJECT_CONTEXT.md §15.
QA: Documentacion/Sistema_social_01; always end executions -- --damage-test.

# Current time / climate / sleep — version 01 (2026-09-07)

The streamed town now uses world_time.gd, a SINGLE persistent calendar mapped
from CharacterLives.game_time at 15:1: 24 game hours = 96 real minutes. Keep
legacy damage/physics tick units unchanged; never multiply animation or physics
delta by 15. Sleep advances LifeStore analytically and emits a calendar event.
world_state.time_environment_01 stores the date mapping, weather-front queue,
RNG state (as a string), minute surface anchors, energy, permissions, rentals
and timers. New old-save migration starts 1994-03-14 08:00 without changing lives.
Northern temperate climate; snow OFF by default. Region changes for existing
saves use world_clock.set_regional_options. Do not reroll weather on scene load.

E beside a valid bed opens 1–8 hours with recovery/wakeup preview. Own safehouse
B0029 is beside spawn; hotel/motel rent uses the existing inventory balance,
$25 through next-day 11:00 checkout. Other beds need explicit grants, never an
assumed friendship threshold. Recovery = energy + missing_energy * hours/8;
8h also allowed at 100. No health reset or forced sleep/collapse. Temporary
bed poses preserve bone lengths/rest transforms; hands/feet swing outside the
mattress before lying down. Restore controls, camera, modifiers and blink on exit.

world_npc_calendar adds 50 varied logical daily schedules and shelter intentions
using existing actors/locomotion. This supersedes the historical "no schedules"
note below; social intentions are now added by Social version 01 above. Autonomous
vehicle traffic and job-specific action animations remain pending. Dead/injured actors remain under existing damage rules.
Climate clothing selection happens only before physical assembly. Never change
wardrobe in front of the player; daily_life.auto_climate_clothes can opt out.

Streamed sleeping NPCs reserve their bed and capture damage transforms ONCE,
after the final sleep pose. Disconnect the original damage-modifier capture
while this final capture is active, then restore it on wake. Double capture
creates false bone velocities and can launch a ragdoll. A hit hands the lying
pose to the existing damage system without stretching bones or resetting health.

world_atmosphere clones ONLY streamed environment materials in memory. Original
world/character/weapon/vehicle art stays untouched. Eight local street lights,
420 rain particles / 140 optional snow particles, no far-world particle spawning.
Material caches use stable SOURCE PATH keys, not transient resource instance IDs.
Disconnect atmosphere resize/stream callables on exit (Godot retains their closure
references otherwise). Existing pole heads are used; do not add duplicate lights.

Documentation, backups, isolated tests: Documentacion/Tiempo_clima_sueno_01.
Captures/video: Vistas/Tiempo_clima_sueno_01. Root catalog: Tiempo clima y descanso.html.
All tests MUST end -- --damage-test; never write the player's real saves for QA.

# Current vehicles — version 01 (2026-09-07)

Vehicle work is delivered in Modelos/Vehiculos/01 and Documentacion/Vehiculos_01.
10 native models / editable Blender files, 780-892 triangles, 256px atlases.
7 civil paint colors via shared shader; taxi/police/ambulance remain fixed.
All lateral doors open OUTWARD (left negative yaw, right positive yaw).
Pickup tailgate opens with positive X rotation; rear cargo leaves retain their
outward hinges. Van side door slides. Do not accidentally reverse these signs.

world_vehicles + vehicle_body handle persistent parked/driven cars (50m spawn,
70m release, cap12; one each of ten types initially). Occupied vehicles remain
pinned and save their identity. Shared vehicle_driver_pose temporarily rotates
the existing rig and places hips at the seat; original character assets, bone
rest transforms and locomotion resources are preserved. Entry is 2.15s, exit
1.85s, left hand reaches the handle, right foot enters first. The head lowers
before crossing the doorway. Never scale limbs or reset character health.

Controls: V enter/exit at DRIVER SIDE while stopped; E nearest door; WASD
drive/brake/reverse; Space handbrake; P civil paint. Building doors still use
walking/pushing. vehicle_driver_pose captures final damage/skin transforms
after its modifier; restore original modifiers and weapon on exit. F10/debug
teleports are blocked while occupied. No autonomous NPC traffic, mechanical
damage or suspension simulation is supplied by this basic kinematic controller.

Only pre-existing gameplay file changed for integration: pueblo_caminata.gd,
backed up under Documentacion/Vehiculos_01/Antes. The complete town v04 and
approved character/weapon art remain protected. Run Godot tests with
-- --damage-test to isolate real saves. verificacion.json contains 92 checks;
blender_verificado.json reloads all 10 editable files. Vehiculos.html is the
catalog and shows the actual entry/exit recording. Once entregado.json exists,
do not rerun generators over subsequent user edits; version future work.

# Dark City Project — current working assets

CURRENT URBAN DETAILS (2026-09-07), version 04, on the preserved version-03 town.
Active index combines Modelos/Mundo04 detail/interior/native parts with untouched
Modelos/Mundo03 ground, structures and horizon. 8 new props use Nico's 10 source
sheets, 60-126 triangles each, separate Blender files, small shared atlases.
51 new wall/poster materials; 1716 prop instances, 638 outdoor/34 indoor posters,
13 residential/lodging interior finishes. Sources, tests and backups are in
Documentacion/Utileria_urbana_04; root Objetos y materiales nuevos.html is the
catalog. New editable assets: Modelos/Entorno/Utileria_04. Existing world runtime,
character assets/rig/animations and weapon/damage systems were not modified.
Do not rebake sealed v03 or v04 output over user edits; version future changes.
Index parts are authoritative; utileria_04.json holds the new prop placements.
Cabins and newspaper boxes are decorative; no calling/purchasing mechanic yet.

USER WORKFLOW (2026-09-07): Nico requests no intermediate clarification questions.
Choose the best reasonable implementation option and continue within the
authorized system scope; report outcomes and material findings concisely.

CURRENT DENSE TOWN / FURNITURE PASS (2026-09-07), version 03. This paragraph
supersedes the historical town controls, counts and streaming distances below.
User asked for denser decayed streets, simple furnished interiors, push doors,
50m detail radius, 50 test citizens and future population scaling. No questions.

Active native world assets: Modelos/Mundo03. Keep Modelos/Mundo and the locked
version-01 sources unchanged. Data stays in Sistema/Datos/Mundo. The current
plan retains all 220 old building IDs and contains 785 buildings / 67 types,
104 enabled entrances, 582 measured 2m alleys, 2.5m curb-to-facade frontage,
1604 overhead cable spans, dirty wall/litter decals and stepped tall buildings.
42 visible blocks remain 100x100m; world 950x1650m, road 12m/.05m and sidewalk
.15m unchanged. Infill is deliberately non-enterable. Upper floors remain closed.

Near streaming tests a 50m circle against cell content_bounds (including
buildings owned by an adjacent cell). Native 100m batches conservatively extend
beyond that circle: never create holes by culling each triangle at 50m. Low/far
representations, fog, directional prefetch, hysteresis, cache and essential
collision pins remain. New world_far_dense shader/proxies preserve cheap window
rhythm at distance. Loader type hint is empty to accept scenes AND appearance
textures. Never request ignored editable raw clothing images via ResourceLoader.

Only walk/push at enabled doors to enter/exit; E is now for small objects or
checkout, I inventory, G drop. world_push_door creates a short hinged motion,
then world_interiors transfers only after collision is ready. Rear interior
exits work; exterior entrances use the front door. One physical interior only.
Snapshot objects BEFORE every space switch; health/equipment remain untouched.
One-time v03 layout migration moves a living saved outdoor player out of newly
occupied building bounds to the adjacent road; preserve dead and interior saves.

The new 38-piece furniture kit + 11 small objects use 12-168 triangles each.
Large furniture stays batched; only selected objects have RigidBody3D nodes
(max 16 per local context). world_small_objects owns stable item IDs through
world/inventory/drop/payment/theft/gifts in LifeStore.world_state.small_objects.
Ownership and original owner persist, unpaid shop items become stolen on exit,
witnesses need physical sight, masked identity is unknown to witnesses. APIs
support current actors, but autonomous NPC shopping/jobs, hand pickup clips,
searchable/locked containers and a full crime/faction scheduler are NOT supplied
by this furniture pass. Don't claim they are implemented. Preserve future hooks.

50 logical citizen descriptors use existing male/female movement and the
original npc_female_001 ID. Only nearby actors become physical (24 cap,
50m spawn / 65m release, one per tick). Far identities, routes, damage and
appearance stay in LifeStore. Cache required clothing/hair resources before
assembly. A measured first actor assembly still exceeds a frame budget; no
promise of 60fps or validated 1000-person performance. Character source art,
rig, animation, weapon and damage core remain hash-identical to their baseline.

Version-03 sources, backups, geometry audit and actual Godot test reports:
Documentacion/Pueblo_streaming_03. Captures: Vistas/Pueblo_denso. Guide:
Pueblo y streaming.md. All Godot checks MUST use -- --damage-test, never the
real save. Once entregado.json exists, don't rerun the world generators/baker
over Nico's subsequent edits; version the next authorized rebuild. Atlas source
and exact generation prompt are documented separately. No subagent requirement.

HISTORICAL TOWN CONTINUITY PASS (version 02): continued autonomous review of the
streamed town. world_collision_bindings.gd attaches weak visual receivers to
batched collision bodies, provides lazily created zero-render-layer receivers
for struck MultiMesh instances, and installs visible colliding interior exit
doors plus the missing ceiling collider. E still transfers between spaces;
walking through an exit without E must never fall into the off-map void.
The only additional pre-town gameplay integration is world_bullet_impact.gd:
resolve the linked mesh/instance and prioritize the struck surface material for
world batches. Preserve the prior untagged-material path and original atlases.
Do not unbatch every prop or duplicate GPU geometry to support bullet marks.

Interior transfers snapshot newly dropped objects BEFORE switching context.
A same-frame drop/exit must remain in the original building. Failed interior
requests release player control and have a bounded retry delay; repeated E/R
must not start overlapping transfers. Booting into a saved interior applies
the same collision setup. NPC physical death/wardrobe persist through unloading;
dead faces remain closed and stop blinking. Character art/rig/animation and
weapon/damage physics are unchanged. Evidence and backups are in
Documentacion/Pueblo_streaming_02, with continuity and integration tests and
regressions for the previous material impacts and saved interiors. All tests
use -- --damage-test. Version 01 generation remains locked; no rebake was used.

HISTORICAL STREAMED TOWN (version 01): Nico authorized the town from MAPA GENERAL
DE REFERENCIA.png and Documentacion/Diseno/{Streaming_mundo_abierto,
Distribucion_interiores}.txt. Main caminata.tscn now uses pueblo_caminata.gd;
Caminar con protagonista.cmd launches it. 950x1650m, 100x100m urban blocks,
12m roads, .05m road / .15m sidewalk tops retained. 180 technical cells, 42 urban
blocks, 220 buildings / 58 archetypes, 104 active entrances across 55 types.
Porches, yards, roofs, commercial/public/industrial/port silhouettes and compact
room layouts use 12 kit families. Other floors are closed; windows decorative.
Interior activity markers are preparation, not a new jobs/population system.

Runtime assets: Modelos/Mundo; data/config: Sistema/Datos/Mundo. Nearby 3x3 full,
5x5 low, global cheap horizon, speed/direction prefetch, hysteresis and bounded
cache. Threaded ResourceLoader is shared/bounded; native cell parts instantiate
one per frame with a soft 2.5ms budget. Physics ground/structures precede entry.
Pin critical owners; remote essential pins omit props/nav. Main-thread native
scene installation only; never bake navigation or raw city geometry at runtime.
world_stream_loader uses one concurrent job with Dummy/headless renderer to
avoid that backend's non-thread-safe mesh storage; normal backend uses three.
Prebaked navigation uses .05m coordinate precision and merge raster scale .001.
MultiMesh buffers must be serialized explicitly as 12 row-major floats/instance:
Dummy renderer get_buffer during offline saving previously discarded transforms.

world_interiors owns one separate physical interior at (0,-120,0), prefetched
near doors and released after exit. Transfers reset WORLD support/arm anchors
after physics/interpolated transforms catch up, preserving health/equipment and
approved clips. Never reset player health or weapons to implement a teleport.
world_npc_presence uses only the existing persistent female ID; farther models
become data. world_character_snapshot retains appearance and exact triangle
wound anchors. world_dynamic_presence virtualizes sleeping distant dropped PPKs
and restores transforms; moving physics retains collision until settled.
LifeStore remains the logical owner; world_state and snapshot_requested are its
only additions. Old gameplay models/rigs/animations/damage/weapon code untouched.
The legacy map remains behind --legacy-map and the old review flags. Nullable
far NPC handling was added to clothing_browser; do not respawn one just for UI.

Controls: E entrances, M map, F9 streaming metrics, Tab exterior aerial, original
WASD/Shift/PPK/F10 retained. Existing launcher unchanged. Guide: Pueblo y
streaming.md; source, backups, audits: Documentacion/Pueblo_streaming_01;
actual Godot captures: Vistas/Pueblo. Geometry audit 5590 checks, actual-town
31, persistence/transfer 28, synthetic 45m/s collision probe and memory pressure
pass. The fast probe is NOT a new vehicle system. All tests MUST use
-- --damage-test; preserve the real save. Full scene hand-off drains loaders via
prepare_unload(). The existing actor assembly may still cause a ~60ms peak;
the cell phase budget is soft, not a guarantee for every engine operation.
All 2043 previous protected files audited; four runtime/config integrations
plus this AGENTS update only, original art exact. 52 byte-identical world texture
copies enable mipmaps; the original 134-material catalogue remains unchanged.
World builders are guarded by entregado.json after delivery. Never rerun them
over later user edits; version any authorized world geometry rebuild.
The material-preparation paragraph below describes the prior stage; placement
and world-only mipmapped copies are now implemented as described here.

CURRENT WORLD MATERIAL PREPARATION (2026-09-06): Nico supplied nine indexed PNG
sheets in stuffimadeuseonlyifiask/Materials, preserved exactly. Extracted 134 PNGs
and 134 StandardMaterial3D resources under Modelos/Entorno/Materiales, grouped as
architecture (walls/interiors/floors/roofs), commercial signs (24 backgrounds and
8 separate words), awning tops/fringes, urban metals/hazard stripe, and terrain.
Catalogue: Materiales del mundo.html / Modelos/Entorno/Materiales/Catalogo.html.
Manifest stores source rectangles, original sizes, alpha and usage hints.
No resizing/repainting: regular grid interiors are 62x62, terrain 81x81, others
use alpha-measured bounds. Native sign bands are NOT uniform 32px rows. Keep the
actual sign frame; remove only atlas spacing. Letter/fringe transparency exact.
Future 64/32px derivatives must be separate. Nearest, lossless, no mipmaps,
detect_3d/compress_to=0; alpha-scissor/two-sided only where source has transparency.
Preparation ONLY: nothing placed in the map, no existing runtime/material edits,
no new buildings, street sign pictograms or lamppost geometry. Repetition still
needs placement-specific visual seam checks; source art was not made seamless.
Evidence: Documentacion/Materiales_ambiente_01; views: Vistas/Materiales_ambiente.
Recut generator is guarded after entregado.json to preserve later user edits.

CURRENT CLOTHING LIBRARY (2026-09-06): Nico authorized validation of the first 19
pieces followed immediately by the full wardrobe. Delivered 71 references, 60
unique meshes, 282 128x128 textures and 92 outfits, plus nine preserved legacy
references. Files: Modelos/Ropa/Biblioteca/{Masculino,Femenino}/ID/{model,uv,textures}.
Catalogue and outfit pools: Sistema/Datos/Ropa/{catalogo,conjuntos}.json. Stable
IDs and one fixed simple UV per geometry. Eleven aliases share meshes. Garments
replace the body section; outerwear includes its visible inner shirt, not a
second full hidden shirt/body. Preserve original bodies, head/hair, skin/face UV,
hands/feet, per-sex bone rests, scale and ALL animation assets. Do not rebuild
the NPC system or spawn occupations to demonstrate clothes. Optional headwear is
not implemented. Original painted PNGs remain exact. New garment color PNGs are
read directly when selected in the editor; preserve future user painting.

Shared CharacterClothing installs after Damage from character_locomotion.gd.
NORMAL_CLOTHING/WORK_CLOTHING/active persist in existing life records; F8 health
reset preserves wardrobe. No respawn rerolls. occupation_clothing.assign_existing
rejects absent IDs and incompatible sex, fills missing contexts by default;
overwrite=true is an intentional reassignment. It does not implement NPC jobs,
factions, schedules or create people. Map still has protagonist/npc_female_001.
Changing models refreshes grip/hit receivers and the existing cloth clearance;
changing color preserves installed meshes. Do not alter approved aim or physics.

F10 opens clothing_browser on the existing map actors. Preview changes are not
saved until Apply; closing/target switch discards uncommitted preview. Standalone
Ver biblioteca de ropa.cmd uses --damage-test --clothing-review (no real saves).
HTML catalogue: Biblioteca de ropa.html; actual Godot captures: Vistas/Biblioteca.
Automated local-HTML browser opening was URL-policy blocked; file links checked.
Evidence/backups/docs: Documentacion/Biblioteca_ropa_01. Audit: all 776 prior files
accounted for, 770 exact, six runtime integrations only; all original art exact.
Generation scripts refuse --rebuild-new after entregado.json: never overwrite
later user edits or silently re-unwrap an approved UV. Use a new version for an
authorized geometry revision. ALL runtime tests MUST pass -- --damage-test.

CURRENT RAGDOLL REFINEMENT (2026-09-06): shared by protagonist and both NPC sexes.
The 19 PhysicalBone3D bodies solve native contacts, gravity and applied impulses.
Articulation is now solved ONCE by ragdoll_constraints.gd: inverse-mass/inertia
position constraints and ground contacts (24 iterations), then exact original
bone offsets and asymmetric XYZ limits in anatomical rest frames. Preserve COM
and derive velocities from corrected positions. Do NOT add Generic6DOF, cone,
hinge or pin joints on top of this solver: competing constraints were unstable.
Do NOT replace the inertia/contact pass with pure FK projection; that incorrectly
balanced a dead character upright on its feet. Incoming pose limits blend over
0.035-0.22 seconds to retain animation hand-off. Visible and physical link lengths
remain fixed. Original skeleton, meshes, weights and animations stay untouched.

Self-collision excludes only nearby connected shells; forearms/hands versus
torso/head and opposite arms/legs remain enabled. Character motors include layer
2 but do not follow ragdolls as moving platforms. Contact impulses use the actual
struck part's mass and point velocity. Pending impulses flush AFTER projection,
including later corpse hits; Toes maps to Foot. PPK response gain is 1.15 (~1.73
N*s), independent of unchanged HP and ballistics. Body masses remain 75/62 kg.
Grounded, slow corpses rest as an assembly with zero velocities and held poses;
external contact/shot wakes them. Auto blink, active blink and facial processing
stop on death. Keep the articulated rest and wake checks when editing this code.

Current validation: 488 assertions (360 logic, 24 runtime, 43 recoveries,
19 continuity, 42 corpse/contact/limits/wake). All passed; healthy pose error zero.
Corpse walk pushes: ~4.7/3.1 cm; later local arm shots ~9.2/8.7 cm while COM moves
~1.4/4.0 cm. Backups, logs, checks and guide: Documentacion/Ragdoll_peso_y_articulaciones.
771 protected files audited: 766 unchanged; five existing runtime scripts edited
plus new ragdoll_constraints.gd. All authored assets are byte-exact. Review movie:
Vistas/Ragdoll_peso_y_limites.mp4. Tests MUST use -- --damage-test; never real saves.

CURRENT DAMAGE / PHYSICAL RECOVERY (2026-09-06): Nico authorized implementation
of Documentacion/Diseno/Dano_fisico_y_recuperacion.txt. Shared character_damage.gd
is now installed by character_locomotion.gd on player, male NPC and female NPC.
100 HP; all 17 body regions; independent left/right injuries; injury-dependent
movement/sprint/aim/drop; analytic bleeding; shared body/projectile impact events;
localized spring torque and parent propagation; balance/support-foot correction;
stumble, living/dead physical falls, actual-pose front/back get-up and stabilization.
Healthy incoming/outgoing walk/sprint poses are exactly equal in runtime checks.

character_ragdoll.gd lazily creates 19 native PhysicalBone3D bodies. The current
articulation solver and limits are described above; they supersede the original
Generic6DOF implementation. ragdoll_pose.gd also protects the rendered original
bone lengths and angular stops. Never stretch the skeleton to accommodate solver
error. Capture the final projection modifier's output.
When falling, the model is top_level with interpolation OFF because captured bones
are already in interpolated world space. Restore interpolation after get-up.
Get-up blends from last_world (visible projected pose), NOT raw physics proxies.
Current get-up clips are generated runtime-only, preserving source GLB animations.
Healthy partial motion continues using existing springs/IK; this is a hybrid
controller with native full falls, not a full active-muscle/Euphoria implementation.

character_life_store.gd owns logical records independently of spawned 3D actors.
Persistent IDs in the map: protagonist and npc_female_001. Assign stable IDs before
adding future persistent NPCs. Save user://character_lives_v1.json atomically with
.bak; save snapshots before writing; unloaded actors keep bleeding in GAME time.
Closed-game real time does not advance the simulation. Health/death never reset
on load/despawn. F8 is the EXPLICIT prototype health reset; R only returns position.
Death records and character_died signal carry identity, attribution, time/location,
region and cause. The wider life-simulation (funerals, jobs, factions, succession)
is still design-only; subscribe it to this boundary when it is implemented.

Tune damage_settings.gd. Physical solver iteration increase is reference-counted
per space and restored after the last active ragdoll stops. Anatomical RIGHT is
the inherited .L bone chain; do not rename bones. Healthy aim/recoil, model meshes,
textures, UVs, skeletons and authored animations are unchanged. Seven preexisting
runtime scripts integrate the new modules; 743/750 protected files are byte-exact.
Evidence and backups: Documentacion/Dano_y_reacciones. Guide: LEEME.md there.
446 assertions pass across logic, actual swept projectile / real sprint contact,
six front/back recoveries, clearance, continuity, drops and persistence checks.
All automated tests MUST pass -- --damage-test to avoid touching real user saves.
Review movie: Vistas/Dano_reacciones_y_recuperacion.mp4 (actual Godot rendering).

CURRENT SIDEWALK TILES (2026-09-06): Nico supplied newsidewalktiles.png, a compact
indexed 512x512 atlas. Runtime copy in Modelos/Entorno/Veredas/Texturas is exact
(14,254 bytes vs former 1,096,007). Seven populated crops: one straight curb,
one bottom-left corner, crack, grouped wear, drain, scattered wear, small patch.
sidewalk_details.gd and atlas_layout.json store measured interior rectangles;
exclude the black guide grid AND its one-pixel colored fringe. Texel-center UVs,
nearest sampling, no mipmaps; source art/palette/alpha remain unchanged.

Use exact quarter-turn transforms for both geometry and attached UVs: the same
straight/corner art serves all four sides. No separate directional textures or
old corner-blending shader. 2m perimeter cells join exactly along both 100m blocks.
555 tiles / 1110 triangles, two batches: 384 edges, 8 corners, 163 details
including 24 drains. Detail placement reserves whole curb/corner cells and uses
separation checks, staying in the outer 5m band and outside the building.
Fixed seed 6092026, rebuild-safe state reset. Physics stays .05m street/.15m
sidewalk, art at .152m; no new collisions. Characters, architecture, weapons,
movement and all user-painted/source files remain unchanged. Existing verifier
updated to check all seven crops, exact perimeter joins, all tile pairs for
overlap, repeated distribution, footprint exclusion and original physics height.
Backups/results: Documentacion/Veredas_tiles_512. Godot captures inspected in
Vistas/Veredas_nuevas_*.png. The former 1254px sidewalk description below is
historical; that PNG is retained as reference but no longer loaded by the map.

CURRENT WORLD BULLET IMPACTS (2026-09-06): Nico supplied five RGBA atlases in
stuffimadeuseonlyifiask/weapons/bullets impacts on materials. Byte-exact runtime
copies are Modelos/Armas/PPK/Impactos/{brick,concrete,glass,metal,wood}.png, 12
variants each. impact_atlas.gd stores measured UV rectangles and actual hole
centers; sheets have different layouts. Do not replace them with a uniform grid.
world_bullet_impact.gd selects the visible mesh surface at the projectile impact,
clips a transparent lit patch to that receiver's coplanar triangles, and parents
it to the receiver. No source mesh/material/UV mutations. Door marks follow the
door; hidden sidewalk deck must NEVER be used as the visible receiver. Visible
replacement sidewalk pieces, modular interior floor and raised road paint work.
128 environment marks per session, independent of existing animated NPC wounds.
Current mapping: brick facade, concrete stone/plaster/floors/paving, wooden door,
glass pane and painted-metal window frames. Explicit impact_material metadata on
mesh/body/material supports future props. Natural ground has no supplied atlas.
Only test_projectile.gd was edited among existing runtime code, adding an else
branch for environment marks. Its trace, ballistics and character-wound branch
are unchanged. No new damage, penetration, glass destruction or hit reactions.
Real-projectile material/edge/visibility/moving-door/cap checks and shared
player/male/female weapon/NPC-wound regression pass. Actual Godot render reviewed
in Vistas/Impactos_materiales.png. Evidence: Documentacion/Impactos_materiales.
Initial/final asset audit: 737/740 protected files exact; the other files are
test_projectile.gd and two architecture PNGs (door/frame) changed concurrently
outside this integration. Their observed new versions are preserved, not reverted.
All five impact atlas copies exactly match Nico's originals.

CURRENT ARMED LOCOMOTION (2026-09-06): Nico approved the current aim pose and
requested the NORMAL walking/sprint arm motion while carrying the PPK without
aiming. weapon_pose.gd now leaves every incoming bone pose exactly unchanged when
aim_blend and reach_blend are zero. GripPPK and the attached gun remain active;
equipped state alone must NEVER force the former static rear/waist carry pose.
Idle, walk, sprint and turn inertia therefore use the same live locomotion as
unarmed characters. This is shared by protagonist, male NPC and female NPC.

Draw/holster contact retains the existing reach solve. Intermediate action poses
blend LOCAL upper-arm/forearm/hand rotations back to incoming locomotion using
max(aim_blend,reach_blend), preserving joint lengths. At full aim the existing
solve and recoil are executed without any additional blending. 126 before/after
full-body aim/recoil snapshots are exactly equal. Armed passive movement checks
on all three actors show ZERO differences from incoming normal locomotion poses;
grip remains closed and armed sprint, draw, holster and fire pass. Only the existing
weapon_pose.gd changed (737/738 protected files exact). Evidence/backups:
Documentacion/Movimiento_con_PPK; review: Vistas/PPK_caminar_y_sprint.mp4.

CURRENT PPK MUZZLE FLASH (2026-09-06): Nico supplied the pixel-flash reference
sheet. Modelos/Armas/PPK/Efectos contains three final 64x64 PNGs generated with
built-in imagegen from that style reference. Original generated images and exact
prompts are preserved in Documentacion/Destello_PPK. Runtime texture filtering is
nearest. weapon_muzzle_flash.gd uses two crossed perpendicular quads (4 triangles),
an unshaded additive shader, no shadows/lights/particles, normal depth testing and
no depth write. Each ACCEPTED shot selects one random texture, 0-360 degree barrel
roll, .8-1.2 scale around a .12 m base and .03-.06 s lifetime. At least one visible
render frame is guaranteed. The three textures are choices, not a three-step
animation on every shot. Optional smoke was not part of this implementation.

character_weapon.gd creates one private effect per actor and updates its anchor
from the FINAL interpolated muzzle transform, after recoil. Automatic physics
interpolation is OFF on the effect to avoid double interpolation / lag. Hidden
effects do not process. Reset clears them; rejected shots produce no flash.
Player and both NPC sexes share this implementation with independent state.
24-shot runtime checks cover all variants, variation bounds, exact barrel anchor,
short lifetime, rejected shots, reset, actor isolation and unchanged camera.
Actual Compatibility rendering reviewed at normal speed; video Vistas/PPK_destello.mp4.
Only character_weapon.gd changed among existing protected runtime/assets; all
authored models/textures, projectile ballistics, recoil, audio and animation remain
exact. Evidence and backup: Documentacion/Destello_PPK.

CURRENT PPK PROJECTILE (2026-09-06): Nico supplied weapons/projectile.blend and
a .380 ACP reference table. Only its 17-vertex object Projectile is exported to
Modelos/Armas/PPK/Proyectil/proyectil.glb (30 triangles); the 15 PPK parts are
excluded. Source blend remains exact. Uniform scale gives a 9 mm cylinder diameter
and preserves the authored shape (10.04 mm length). Tip at origin, forward -Z,
simple copper material. Do not restore the former yellow 24 m/s test box.

test_projectile.gd retains the shared aiming/trace/impact API but now uses this
mesh and ppk_ballistics.gd: 244 m/s launch speed, supplied drops of .003/.020/.090/
.410 m at 10/25/50/100 m. This is a monotone smooth curve calibrated to Nico's
table relative to the initial launch line, NOT a validated Earth-gravity/drag/
sight-zero solution. 95 grains (~6.156 g) and effective range 25-40 m are reference
metadata, not damage rules or a 40 m despawn limit. Beyond 100 m the curve is
smoothly extrapolated without an asserted real-world match. Existing five-second
cleanup remains. At game scale/speed the projectile is naturally hard to see;
Vistas/PPK_proyectil.png is explicitly an enlarged inspection view.

Complete curved travel is swept in <=1 m segments even on a long physics frame.
Thin-wall and exact animated NPC impact/wound handling are preserved. Tests at
30/60/120/144 Hz match the table; 15 mm wall tests including a .2-second frame,
expiry and existing shared male/female weapon regression pass. Only the existing
test_projectile.gd changed among protected runtime/assets; ballistics and exported
projectile are new. Recoil, camera, audio, controls, clothing, rigs, animation and
user sources remain untouched. Backup/exporter/checks: Documentacion/Proyectil_PPK.

CURRENT PHYSICAL PPK RECOIL (2026-09-06): Nico's annotated reference requests a
small upward wrist/gun impulse per individual shot, less movement in the forearm,
subtle variation and a natural return. Its drawn angle is illustrative. The old
fixed recoil scalar / 18 mm hand pullback / 3-degree pitch decay is superseded.
weapon_recoil.gd now simulates two constrained angular spring-damper joints,
anchored to the existing aim pose. This is custom active joint physics, NOT free
PhysicalBone3D collision ragdoll or a whole-body hit reaction. Wrist and forearm
have independent angular position/velocity; only an ACCEPTED shot adds momentum.
No frame-by-frame random noise or angle teleport. Per-actor RNG changes impulse
strength by +/-9%, with tiny lateral/roll variation. Wrist peaks roughly 8-10
degrees; forearm roughly 1.7-2.0 degrees. Typical recovery is about .25-.35 s.
Exact damped-oscillator integration plus joint limits stays stable across frame
rates and repeated shots. Angular bounds: wrist 15 degrees, forearm 4.5 degrees;
ordinary shots stay well below these safety limits. Tiny damped undershoot only.

weapon_pose.gd solves the unchanged aim arm first, then rotates the forearm about
its elbow and the hand about its wrist using aim-relative axes. Gun and grip remain
attached. Local joint positions, head, shoulders, torso, camera, animations and
all authored meshes are unchanged. Releasing aim blends the effect out; holster
settles it; reset_state clears momentum. The same component serves protagonist
and both NPC sexes. Input controls, projectiles, damage marks and audio are exact.

Verification: isolated/rapid impulses at 30/60/120/144 FPS, return to aim, bounded
variation and reset pass. Runtime tests on all three actors show ~9.91-degree
combined muzzle lift for the test seed, smaller forearm response, preserved joint
positions and stationary camera. Existing weapon tests pass, including all female
outfits. Unarmed comparison across 433 poses remains exactly equal. Evidence,
backups and review: Documentacion/Retroceso_PPK; Vistas/PPK_retroceso_fisico.mp4.
Only character_weapon.gd and weapon_pose.gd changed among existing runtime/assets;
weapon_recoil.gd is new. NPC impact ragdoll/damage remains a later task.

CURRENT SHARED PPK PROTOTYPE (2026-09-06): Nico requested basic rear-waist draw /
holster on key 2, held RMB over-shoulder aim with the right arm extended, LMB
single shots using shotpistol.wav, visible test projectiles and precise animated
NPC wound marks from shootingwoundstiles.png. Key 1 is reserved for future melee.
This authorizes weapon gameplay integration beyond the old editing-only PPK notes.
Hit reactions / ragdoll / damage are explicitly the NEXT stage, not implemented.

character_weapon.gd is installed by shared character_locomotion.gd for player,
male NPC and female NPC. Controllers supply weapon.toggle_equipped(),
set_equipped(bool), set_aiming(bool,world_target), try_fire(). NPCs do not decide
to attack automatically. The right-arm WeaponPose runs AFTER existing movement
modifiers; unarmed output remains exact. Draw is .90 s with spawn/hide contact
at .38 s. Aim extends to 98.5% of the actor's own arm reach. Sprint is suppressed
while drawing/holstering or actively aiming. Other locomotion clips are untouched.

IMPORTANT HAND LABEL: in this inherited rig the anatomical RIGHT side (with
the face oriented +Z) is named .L. Do not rename or mirror the skeleton. The
runtime weapon uses UpperArm.L / Forearm.L / Hand.L, matching the right shoulder
camera. weapon_grip.gd mirrors the authored RightHand grip delta and PPK placement
into private runtime meshes, preserving open Basis, wrist, materials and UVs.
grip_delta.json is extracted from the current 84-vertex authored GLB morph.
Male mapping error < .001 mm; female transfer keeps her original open hand and
uses its existing dimensions. Original hand/weapon .blend/.glb files are unchanged.
Do not re-export source geometry or restore the initially left-sided preview.

Camera transitions to 1.20 m / .43 m shoulder offset / 52-degree FOV while aiming;
normal orbit, terrain smoothing and obstruction handling return after release.
No camera shake. Shooting is semi-automatic (.28 s minimum interval), unlimited
test ammo, yellow 24 m/s swept projectiles expiring after 5 s. Near-wall muzzle
obstruction is checked. Audio copy lives in Modelos/Armas/PPK/Audio; the supplied
wound atlas copy is in PPK/Texturas. Both source files remain untouched.

character_hit_surface.gd queries visible skinned triangles from the FINAL modifier
pose, including run and grip morphs; capsules only reject distant queries and
are never accepted as surface hits. World occlusion takes precedence.
bullet_wound.gd clips a small patch to hit triangles and retains barycentric
anchors through deformation; the Compatibility-compatible shader feathers the
opaque 5x3 atlas background. Marks are session-only, capped at 24 per actor,
and cleared when clothing is replaced. The hit signal exposes point, normal,
actor, triangle/barycentric data and dominant bone zone for the later reaction.

Tests: real graphical keyboard/mouse input, equip/holster timing, player and both
NPC sexes, all three female outfits, shot cooldown, thin-wall occlusion, exact
head/arm/thigh/shin anchors, moving marks and cap pass. Unarmed comparison of 433
poses has ZERO position/speed/heading/phase/bone differences. 708/712 original
protected files exact: only shared locomotion, player, generic NPC and map scripts
changed; all authored models, clips, textures, UVs and user sources are exact.
Evidence/backups/integration notes: Documentacion/Arma_prototipo.
Video with audio: Vistas/PPK_equipar_apuntar_disparar.mp4.

GLOBAL CHARACTER ANIMATION RULE (2026-09-06): Nico explicitly requires every
character animation/action to be available to NPCs as well as the protagonist.
Implement future movement/action improvements in shared character systems;
player input and NPC decisions supply intentions, not separate motion logic.
The latest male sprint below was APPROVED by Nico ("ahora si!!! muchisimo mejor!").
Preserve that approved clip and appearance when extending NPC capabilities.

CURRENT SHARED LOCOMOTION: character_locomotion.gd owns clip installation,
walk/run/idle transitions, acceleration, braking, terrain steps, delayed
head/chest/body turning, support-foot correction, leg clearance and arm inertia
through the existing common modifiers. jugador_caminata.gd now supplies input
and the unchanged camera. npc_character.gd supplies route/external intentions
for either sex; npc_femenina.gd is its compatibility wrapper. Future AI uses
set_movement_intent(world_direction, running). Each actor has private animation
playback, settings, turn/support state and modifiers. Never share those mutable
instances between characters. Male NPCs use the exact approved male clips;
female NPCs keep their authored female clips and restrained shoulder profile,
with the SAME movement capabilities and correction stack. Both shoe mesh names
and named skin bindings are supported; refresh sole probes after outfit changes.
No new animation clips, character variants or persistent population were built.

Verification: approved player motion is identical across 433 before/after poses
(position, heading, speed, phase and all bone transforms). Player/male-NPC pose
agreement within .022 mm under equivalent commands. Both NPC sexes pass walk,
sprint, head-first turns, stopping and independent-state checks. All three female
outfits pass 539 sampled poses without tested garment/leg or shoe intersections.
710 original protected runtime/assets checked: only jugador_caminata.gd,
npc_femenina.gd and body_secondary_motion.gd changed; the two shared-controller
files are new. All clips, canonical meshes, textures, UVs and rigs remain exact.
Evidence, backups and integration notes: Documentacion/Locomocion_compartida.
Review: Vistas/Locomocion_compartida.mp4. The temporary male comparison NPC uses
existing protagonist clothing; the walking map's population is unchanged.
Final audit note: after the 15:46 preservation check, PPK/Texturas/ppk_128.png
was independently edited at 15:48:45. That concurrent texture edit was preserved;
the final report separates it from the three locomotion changes (706/710 exact).

CURRENT SPRINT INCLINATION / LEG ALIGNMENT (2026-09-06): Nico rejected the prior
comparison because torso/head were still upright and the legs looked twisted.
The current male run supersedes the upper-body angles in the next note. Actual
rendered hip-to-neck lean is now 21.5-22.7 degrees (was 9.6-10.8); head pitch is
14 degrees (was 2). Hips/Spine/Chest/Neck global-rest-relative pitch targets are
15/22/26/21 degrees; existing local arm and clavicle motion follows the chest.
An inherited idle Root X bias of -47.9 mm displaced the pelvis to the left while
foot targets were centered on zero. That bias is removed, retaining the small
lateral weight-transfer wave, exact Root Y/Z curve and all joint offsets/scales.
Feet use parallel +/-96 mm lanes. Thigh/shin rotations now constrain both the
aim direction AND the knee hinge plane from the rest frames, removing residual
axial twist instead of merely positioning knee points with shortest-arc turns.
In steady runtime the left knee's X excursion fell from 13.7 cm to 1.6 cm;
the right knee's from 10.7 cm to 1.4 cm. This is an animation correction, not a
body/rig/mesh edit. Exact limb lengths, .66 s cadence and 3.8 m/s speed retained.
Private RunClearance adds 20 mm lift / 10 mm outward at the front shirt hem to
accommodate forward lean; walking and canonical garment geometry remain exact.
Runtime Shift, walk/run transitions, braking, reversals and curbs pass; minimum
tested turn leg gap .179 m. 115 garment samples: zero run intersections, four
preexisting walking contacts recorded separately. Maximum tested steady hip
vertical frame step 2.91 mm at 60 FPS. Camera and all locomotion modifiers are
unchanged, as are female sprint, walk/idle, meshes, rigs, textures and UVs.
Only correr_masculino.tres and character_run_cloth.gd changed (708/710 protected
files unchanged). Backup/current authoring/evidence: Documentacion/
Sprint_inclinacion_alineacion. Review: Vistas/Sprint_inclinacion_y_piernas.mp4.
The comparison restores both the former run clip and former private shirt
clearance in its BEFORE views. Never regenerate from older sprint scripts.

CURRENT MALE SPRINT POSTURE (2026-09-06): Nico requested less crouching and arm
exaggeration, more forward lean/chest-led shoulder motion, and forward foot lanes
closer to the body, supplying SlothArt's Run Cycles video bVk2qxH2YUU. The current
male run supersedes the lowered stance described in the stability note below.
Root is 3.2 cm higher, retaining the smooth 18 mm rise and the same .66 s cadence,
3.8 m/s speed and contact timing. Spine/chest lean increases to 9.5/14 degrees;
chest counterrotation is 8.5 degrees each way with subtle shoulder protraction.
The driving hand arcs inward with its shoulder, while the returning elbow opens
to let the hand pass behind the hip. Forward arm excursion is reduced.
Foot lanes are +/- .094-.096 m, with forward knee poles. A smooth longitudinal
reach compression only materially affects recovery (max 4.61 cm); support travel
changes less than .05 mm. Never lower the whole Root again to preserve extreme
swing extension. Preserve local joint positions, scales and bone lengths.
Private male shirt RunClearance adds up to 2 cm side-hem lift for the stronger
torso twist. Canonical garment geometry and zero-blend walking shape are exact.
Only correr_masculino.tres and character_run_cloth.gd changed: 708/710 protected
files unchanged. Camera, walk/idle, female sprint, head-first turning, hand
inertia and outward leg avoidance retain their earlier implementation.
Checks: closed loop/joint offsets; Shift/walk/run/release/stop/turns/curbs; min turn
leg gap .177 m; 115 clothing samples with zero run intersections (four preexisting
walk contacts separately recorded). Rendered steady run at 60 FPS: maximum hip
vertical frame step 2.91 mm, camera Y range zero on flat ground. Backup, current
authoring script and evidence: Documentacion/Sprint_postura_dinamica. Review:
Vistas/Sprint_postura_comparacion.mp4. Do not regenerate from older sprint scripts.

CURRENT SPRINT STABILITY FIX (2026-09-06): Nico reported player/body and camera
vibration. The male run Root curve contained reach-correction spikes: measured
up to 48.6 mm vertical change between rendered frames. correr_masculino.tres now
has a periodic 18 mm peak-to-peak rise, with rotation-only thigh/shin/foot solves
retaining prior shoe paths within 1.84 mm and exact joint lengths. Same .66 s
cycle, speed and upper-body rotations. The running stance averages 3 cm lower
to stay inside the original leg-reach ceiling; standing/body height is unchanged.
The walk, idle and female run clips, all canonical models and textures are exact.
Do not regenerate with the older Sprint/construir_correr.gd over this correction.

3D physics interpolation is enabled. Camera3D is now an independent top-level
child of the player with automatic interpolation OFF, updated every rendered
frame from the interpolated player position. Its elevation follows smoothed
ground/capsule height, never BodySecondaryMotion.visual_floor or animation.
SpringArm remains the physics obstruction probe, with immediate camera retraction
and eased return. Reset/teleport resets the interpolation history and camera.
Keep skeletal animation/modifiers on their existing idle/render clock; switching
them to physics does not provide interpolated bone animation in this setup.
World-space body/arm/turn modifiers use the same interpolated skeleton transform
as rendering, avoiding stepwise world-space targets between physics ticks.

Run free-leg clearance also covers the short interval BEFORE a delayed turning
event: only the recovering leg yields, the support stays planted. Walking rules
and head-first turn/arm hold behavior are retained. The private RunClearance
shirt shape has another 4 mm at the front hem to clear the softer run stance;
source garment geometry and zero-blend walk shape are unchanged.

Final checks: Shift/acceleration/release/braking, turns, curb up/down, joint
lengths, airborne phase and female runtime regression pass. Minimum tested turn
leg gap .176 m. 115 shirt/trouser samples: zero running intersections; four
previous walking hem contacts remain separately documented. Camera tests at
30 physics ticks / 60 rendered frames pass: zero held camera frames, .06334 m
maximum forward frame step at 3.8 m/s, no vertical gait bob, wall obstruction
and teleport recovery pass. 701 of 710 previously existing protected files are
exact; nine animation/runtime/configuration files changed. Evidence, source
backup and build records: Documentacion/Sprint_ajuste_vibracion. Playable map
unchanged; review video: Vistas/Sprint_estabilizado.mp4.

CURRENT FACIAL STYLES (2026-09-06): Nico supplied eye/mouth/nose references and
requested several styles for both sexes, open/closed states, iris colors and
painted nostril shading. facial_style_catalog.gd now provides three eye/brow
styles per sex, three independent mouth shapes per sex and five iris colors
(brown/honey/green/blue/gray): 45 combinations per sex. Defaults in the map are
style 0 eyes, style 0 mouth, brown iris. Ver expresiones.cmd has selectors,
original-art comparison (-1), nose toggle and the existing expression controls.
Viewer choices are per-session/per-sex and DO NOT persist into the walking map.
get_appearance/apply_appearance expose appearance data for later NPC persistence;
the full life simulation is still not implemented.

AUTHORITATIVE PAINT INPUTS: six rasgos_0{1,2,3}_{reposo,expresion}.png files under
UV para pintar/Rasgos faciales are read directly at process startup, 512x512 RGBA.
Restart the viewer/map after painting. Copies under Modelos/Piel/Expresiones/
Estilos are imported fallbacks. Recortes_de_referencia are reference-only crops,
NOT game inputs. The original shared skin atlas and all legacy expression art
remain exact. Existing UV regions are unchanged: M eye (4,344,120,64), M mouth
(132,344,120,112), F eye (260,344,120,64), F mouth (388,344,120,112).
Only blue iris pigment is recolored; alpha blends features over the original
skin via UV2 without making the head transparent. Keep approved scale, offsets,
pivots, male mouth centering and the stable VERTEX_ID eye-side mask.

Nostril detail: narina_UV_espejado.png (64x32) in the same painting folder has
ONE half-mark, mirrored by existing head UVs. face_nostril_detail.gd installs a
private HeadSkin material preserving character_planes shading and the original
skin, with strength .55. Do not add nose geometry, move head UVs or edit Nico's
head. Sources were generated with built-in image_gen; Fuentes is build-only.
Auto blink remains 3.5 s start-to-start and 400 ms fully closed, with independent
desired eye states restored; changing mouth, style or color cannot reset it.
No head/body/hair/clothing/rig/clip/locomotion assets were altered. Evidence,
backups, generation prompts and construction records are under
Documentacion/Rasgos_faciales_2026_09_06. Never recompile over Nico's later art.

CORE GAME DESIGN (2026-09-06): Nico supplied the full concept document and said
"ese documento es la idea del juego". Exact original is preserved at
Documentacion/Diseno/Idea_del_juego_NPCs_persistentes.txt. This turn records the
design direction only; the persistent life simulation is NOT implemented yet.
Read that document when developing the simulation; its implementation headline
does not mean every subsystem or the full population has already been requested
as the immediate next task. Follow Nico's current requested scope.

Dark City combines GTA III-style open-world play with persistent Sims-like lives,
legal/illegal repeatable jobs, possessions and relationships; history emerges
from the player's actions and city events instead of requiring a linear campaign.
The authoritative NPC data IS the person; the 3D actor is a temporary view.
Unloaded people need no model, skeleton, animation, ragdoll, physics, navigation
or per-frame AI. Resolve needs/actions/travel with elapsed time and timestamped
events; animation never awards money, consumes food or determines an outcome.
Persistent IDs, appearance/clothes, unique homes and household item inventories,
jobs/income, five needs, relationships, schedules, current tasks/locations and
history must survive spawn/despawn and save/load. Spawn hysteresis and observation
checks must preserve continuity. Keep current modular character assets compatible.

Target initial population is 50 UNIQUE people: 10 traditional Mafia, 10 modern
Mafia, 10 police (chief, 2 sergeants, 7 officers), 20 civilians. One data-driven
architecture, not 50 scripts. Factions and personal relationships are separate;
all faction members still have normal home/work/food/social lives. Death is
permanent, records remain, and population does not auto-refill. Preserve possessions
and vacancies; next-day funerals use existing attendees, graves retain identities,
grief is temporary, and leadership succession promotes existing living members.
Time skips must resolve the important events without stepping every minute.

When implementation begins, FIRST prove ONE civilian's complete home/food/shower/
work/wage/groceries/sleep cycle, both loaded and unloaded, with spawn continuity,
save/load and time skips. Only after that works expand toward 50. Reuse existing
systems, keep logical simulation separate from character movement/visuals, and
do not confuse the current short-route demonstration NPC with a persistent person.

CURRENT SPRINT (2026-09-06): Hold Shift with movement in the walking map to run;
release it to decelerate to walking. Shift alone stays idle. New male/female
run clips in Sistema/Animaciones/correr_{masculino,femenino}.tres are installed
by character_walk.gd on private libraries, preserving all earlier source clips.
Male: 3.8 m/s, .66 s cycle. Female: 3.55 m/s, .60 s cycle. Shared support phase
ends at .32; includes aerial time, bent elbows and heel recovery. Original 22
bone rests, names, local joint offsets and body assets remain intact. Running
uses only Root translation and joint rotations; never translate Hips locally.
character_run.gd preserves normalized support phase across walk/run blends and
uses speed hysteresis (1.68 enter / 1.48 exit). Normal walking remains approved.

Protagonist body/head turn anticipation, arm inertia and protected outward leg
routes stay active. body_secondary_motion selects a separate run profile/gait;
turn_limb_coordination uses .065 s support hold / .055 s release for running,
turn_arm_follow_through .09/.10 s, with walking settings retained exactly.
F7 toggles the EXISTING female NPC's running test independently of player Shift;
F2 still changes its three outfits. Route pauses and all hair/paint controls stay.
character_run_cloth.gd creates private in-memory clearance blend shapes for
the skirt/dress and male shirt hem, easing the fabric during acceleration/running
and protecting the hidden skirt waistband. Blend zero restores the source walk
shape. Source mesh positions/topology/UV/weights, exposed skin and all canonical
models/textures are unchanged. No free ragdoll, cloth simulation or combat added.

Runtime Shift/release/idle/90-180 degree turns/curb tests, original map regression,
closed loops and preserved joint lengths passed. 539 final rendered-pose samples
of all three female outfits pass garment/leg and shoe/shoe crossing checks plus
sole clearance. Male shirt running clearance also passes; four legacy walk hem
contacts are reported separately, preserving the source walk shape. Sample from
the last modifier's modification_processed signal;
include the RunClearance blend before skinning. Dummy headless renderer cannot
read blend-shape arrays back reliably; the exact arrays submitted to rendering
are retained as run_clearance_vertices metadata for numeric QA. Graphical review
also passed. Evidence/backups/build records: Documentacion/Sprint. Video:
Vistas/Sprint_masculino_femenino.mp4. Do not regenerate over later user edits.

CURRENT REFINED PPK GRIP (2026-09-06): Nico clarified the index must enter the
trigger guard, thumb must oppose it, and the three joined fingers must follow
the grip contour. The earlier first proposal did NOT fully meet that placement.
mano_derecha_grip_PPK.blend and mano_grip_ppk.glb now contain a revised GRIP_PPK
shape: separate index ring curl, thumb wrapped around the rear to the opposite
side, and a continuous low-poly three-finger block around the grip. Added
INDEX_GRIP / THREE_FINGERS_GRIP selection groups, kept THUMB_GRIP. No topology
added. Open Basis, all UVs, original weights, wrist rim and rig/actions are exact.
The separate open-hand blend, independent PPK and ALL other character/game/source
assets are unchanged. No aiming or gameplay integration. Authoring backup,
triangle contact/self-intersection checks, preservation and current construction
record are in Documentacion/PPK_grip/Refinamiento; earlier PPK grip scripts are
historical and must not overwrite this version. Review image:
Vistas/PPK_agarre_refinado.png. Keep this edit intact for Nico's review/next step.

CURRENT RIGHT HAND / PPK EDITING ASSETS (2026-09-06): Nico requested the current
male right hand separately, the supplied PPK at realistic scale and textured,
and optionally a first grip. New files only: Modelos/Manos/Derecha contains
mano_derecha_base.blend (exact original open hand) and mano_derecha_grip_PPK.blend
(editable first grip proposal, not yet approved by Nico). Both preserve the
84-vertex / 158-triangle hand, all UVs, skin weights, 8-vertex wrist boundary and
original 22-bone rig/actions. Basis is exact; GRIP_PPK is the editable shape key.
Do not reshape the actual player body/hand or change animation for this prototype.
Modelos/Armas/PPK has the separate 2540-triangle PPK, a packed 128px atlas and
game GLBs. Dimensions approximately 15.49 x 9.65 x 2.54 cm, based on Nico's specs.
The grip scene .tscn activates the morph at 1; raw GLB imports it at 0 in Godot.
All 551 previously existing protected files remain exact, including Nico's PPK
source, body/head/hair/clothing and runtime. No shooting or aiming system added.
Evidence and generation records: Documentacion/PPK_grip. Never regenerate these
authoring files over Nico's later edits. This initial grip still needs his review.

CURRENT HAIRSTYLE CATALOG (2026-09-06): Nico requested ALL authored male/female
hairstyles in game, with black/brown/blonde/red texture variants. hair_catalog.gd
now exposes 7 male (current hero, 2 saved former-hero NPC fringes, 4 Male_short)
and 8 female (short/medium/long/bun, long02/side-long/split/split-long), 60 color
combinations. All four runtime PNGs are 128x128 under Modelos/Pelo/Texturas.
Existing brown, all old GLBs/blends and ALL Nico source files remain exact.
Eight new hairstyles and one UV-only copy of saved NPC_flequillo_01 were exported
as hair-only GLBs, exact source geometry/weights and Solidify -0.01 / offset -1.
Their Edicion/peinado_catalogo.blend contain only hair + original 22-bone rig.
Never restore old heads from source hair files: the CURRENT approved female head
below remains exact. Do not fill the open crown of Nico's Male_short04; this is
the authored receding/balding cut. Do not count .blend1/revision backups or the
old rejected Corto_sencillo experiment as extra styles.

Ver peinados.cmd now shows every style with front/profile/back, gender/style
selectors and four colors. In the walking map F3/F4 change protagonist hair/color,
F5/F6 change the existing female NPC hair/color. F2 keeps the chosen female hair
when changing clothes. Defaults remain current hero/bun, both brown, at each
startup; trial choices are not persisted. No new NPC population or hair physics.
Hair replacement uses the original module rest checks and one existing skeleton;
color changes assign immutable palette materials, so one actor cannot recolor
another. Head/skin/expressions/body/garments/rig/clips/locomotion are unchanged.
Geometry matches source evaluated triangles within 1 micrometer; all 60 runtime
combinations, outfit retention, independent colors, map hotkeys/walking and viewer
render checks passed. Paths and instructions: Modelos/Pelo/LEEME_catalogo.md,
catalogo.json. Evidence/build records/backups: Documentacion/Peinados_catalogo.
Do not rerun these build records over later source/model/texture edits.

CURRENT FEMALE HEAD (2026-09-06): Nico supplied
stuffimadeuseonlyifiask/new_head_model_female.blend and explicitly chose
"Toda mi edición" after inspection found edits beyond the chin. The source is
already at the CURRENT enlarged head scale; do not rescale or lower it again.
Its exact eight edited vertex positions (chin, nose tip, two ear points and a
point near the mouth) are now in cuerpo_femenino.glb and canonical
Edicion/cuerpo_femenino_uv.blend. All 86 head positions match Nico's source.
Only head positions and their shading normals/tangents changed in the GLB.
Current UVs, skin/expressions, body, weights, rig/rests, clips, hair, clothing and
male assets remain exact. Nico's original file and the older separate head/hair
editing files are untouched. Do not restore their older chin over this version.
The prior immutable-head rule now protects THIS approved user-edited shape.
Backups/comparison/preservation: Documentacion/Cabeza_femenina_Nico. Head tested
with all three female outfits, idle/walk, and current bun. Screenshots:
Vistas/Cabeza_femenina_edicion_Nico.png and Cabeza_femenina_Nico_en_NPC.png.

CURRENT FEMALE FITTED WARDROBE (2026-09-06): Nico requested fitted female clothes,
a shorter skirt, crop top, denim shorts, dress, dress shoes, closer feet and a
hip-led walk with less shoulder sway. Three authored outfits now share the SAME
FemaleNPC01: F2 cycles fitted shirt/skirt, crop/denim shorts, and short-sleeve
dress. No random population, male changes or sprint. New modules are in
Modelos/Ropa/Femenino/{Camisa_entallada,Pollera_corta,Crop_top,Shorts_jean,
Vestido,Zapatos_vestir}. The earlier Camisa/Pollera/Zapatos assets remain intact.
All new clothing and its direct painting PNGs use 128x128. Five UV blocks for
shirt/crop/shorts/dress, three for skirt/shoes; no collapsed faces. New paint
catalog: UV para pintar/Vestuario femenino.html. Never overwrite Nico's paint.
Head, canonical female/male body, original 22-bone rests, hair and skin are exact.
Garments replace body sections; only exposed skin and small seam margins remain.
The dress is continuous at the waist, with the skirt portion following thighs.
New female idle/walk are installed by character_walk.gd; male behavior is exact.
Mean ankle separation: idle 29 -> 18 cm, walk 21.7 -> 13.4 cm. Chest global sway
is attenuated, hips get restrained +12% yaw/+15% roll; original arm local poses
and loop timing stay. Never interpolate local bone poses toward identity: their
rest bases are not identity, which would lift the arms. Bake on immutable source
clips, keep local joint positions/scales, and check the actual dress-shoe soles.
female_foot_contact.gd solves only floor penetration during idle/walk blending,
with rotation-only leg IK BEFORE unchanged ArmInertia. Protagonist terrain/turn
mechanics remain byte-identical. Final-pose sampling MUST use the last modifier's
modification_processed signal; process_frame alone observes restored base poses.
413 final runtime poses pass garment/leg and shoe/shoe crossing checks and sole
clearance. F2/live rig/head/hair preservation, 128px textures, route and collision
with the player pass. 412 existing protected files are unchanged; seven explicitly
authorized female-animation/integration files changed. Evidence and backups:
Documentacion/Vestuario_femenino_02. Ver ropa femenina.cmd opens three outfits;
arrows orbit, Space idle/walk, G clay, Esc exits. Vistas/Vestuario_femenino.mp4
and Vestuario_femenino_en_mapa.mp4 show the implemented result. Build scripts
are records, not automatic sync tools; do not regenerate over later user edits.

TEXTURE SIZE RULE (2026-09-06, Nico): clothing AND hair use 128x128 in game.
Later small decorations will use 64x64 / 32x32; do not change environment art yet.
character_texture_size.gd enforces 128px for garment materials and separate hair
meshes through character_surface_style.gd. Skin/face/eyes/mouth atlases stay exact.
The 14 existing wearable texture imports also use process/size_limit=128, avoiding
large imported textures; direct user paint is resized on an in-memory copy.
Keep Nico's existing male paint files (currently some are 64px) and high-resolution
authoring originals intact. New female painting PNGs and UV_transparente.png are
128x128; 1024px UV diagrams are enlarged guides only, not game textures. Future
garment/hair exports should start at 128px. Prior 256px delivery notes are historical.
Original female 256px painting bases are saved in Documentacion/Texturas_128.
Final female authoring copies now also pack 128px shirt/skirt/hair images. Only
the skirt's first 36 vertices (three HIDDEN waistband rings) were pulled inward
3-6mm to remove a remaining sub-millimeter shirt/waist crossing during idle.
All other positions, topology, UVs, weights, head/hair geometry and rigs are
unchanged. 198 poses from the ACTUAL walking-map NPC, including idle/walk blends
and reversals, pass leg/skirt AND outer-shirt-hem/skirt triangle intersection
checks. The normal camera distance also shows both arms correctly. Evidence:
Documentacion/Texturas_128/deformacion.json, modulos_terminados.json and
Vistas/NPC_femenina_128_verificada.mp4. Do not restore the wider hidden waistband
from NPC_femenina_01/Antes or older captures. The user must restart a running
game to load changed resources; an open instance retains its loaded meshes.

CURRENT FIRST FEMALE NPC (2026-09-06): Nico requested one female NPC with a shirt,
skirt and any of his female hairstyles. This explicitly authorizes this outfit;
the older male-only/no-female-clothes scope notes below are superseded for it.
Runtime: female_outfit.gd replaces FemaleBase_Body with FemaleShirtTorso,
FemaleSkirtLegs and FemaleShoes, and attaches FemaleHair, on the ORIGINAL female
22-bone rig. The head resource/transform and original assets are unchanged.
New modules live in Modelos/Ropa/Femenino/{Camisa,Pollera,Zapatos}. Hair comes
from Nico's stuffimadeuseonlyifiask/hairs/female_bun.blend, unchanged cage and
Solidify -0.01 / offset -1, with a textured copy in Pelo/Femenino/Recogido.
Camisa uses the accepted 5-block UV layout; pollera uses 3 large blocks. Direct
startup painting PNGs are UV para pintar/Camisa femenina/CAMISA_FEMENINA.png
and Pollera femenina/POLLERA_FEMENINA.png. Never overwrite Nico's future paint.
Editing blends are new isolated module scenes with the same original rig.
The garment IS its body section; no hidden full naked body remains. Preserve
the approved original head, body, rigs, animations and existing male outfit.
npc_femenina.gd is one fixed pedestrian, not a random NPC system. Spawned once
by mapa_caminata at (7.6,.165,44), route to z38 on the same sidewalk. Uses the
adapted female walk, existing idle/face/arm inertia, collision and short pauses.
Male controller and all head-first/hand/support/leg-clearance mechanics stay
unchanged. No sprint yet. Normal Caminar con protagonista.cmd shows this NPC.
134 skinned garment pose samples pass skirt/leg intersection checks; actual
map route, stopping collision and direct painted-PNG loading pass. Read
Documentacion/NPC_femenina_01/LEEME.md for assets, preservation and evidence.
Do not regenerate new editing files over later user changes.

CURRENT ADAPTED MALE/FEMALE WALKS (2026-09-06): Nico authorized applying the
studied references. Sistema/Animaciones/caminar_{masculino,femenino}.tres now
provide separate adapted 1.1s cycles for the existing 22-bone rigs. character_walk.gd
installs only walk in a PRIVATE AnimationLibrary per model, idempotently. Integrated
in jugador_caminata (male protagonist), male_clothing_study (both bases and male
garments), and visor_peinados (both sexes). Embedded GLBs/idle/rest stay exact.
Do not revert these entry points to the original robotic embedded walk.
Source-derived asymmetric arm/elbow curves, pelvic roll/chest counterrotation,
and bounded swing recovery/foot roll preserve current phase 0/.5 contacts and
.60 support end. Translation is on Root, NOT the Hips attachment. Baking resets
every pose each sample, keeps limb lengths/local joints, bounds pelvis reach and
checks actual bare-foot soles. Both loop ends coincide. Legacy walk_cycle arm
replacement/pelvis drop/swing lowering are skipped for clips marked reference_walk
because the new pose already supplies them; retain legacy path for before-review.
Gait variation, arm inertia, turn sequence, turn hand coordination, brief planted
support and self-clearance scripts/settings stay byte-identical. Turn advanced
sampling automatically reads the newly installed walk. No model/head/hair/rig,
paint, wardrobe or environment asset changes (344 protected files exact).
One necessary terrain probe correction: upward sole-ray bias .01m -> .0005m,
so low forbidden blockers are detected during the revised foot roll. No controller
speed/contact/step thresholds, geometry, collision shapes or camera changes.
Both base clips passed joint/scale/loop/sole/lane sampling; final protagonist
passed 30/60fps turn regressions, 45/90/135deg at 60, head delay and terrain suite.
Actual runtime elbow ranges before ~8-25deg both, now L10-41 / R12-29deg. Evidence,
backups and build records: Documentacion/Caminatas_desde_referencias/LEEME.md.
Videos: Vistas/Caminatas_adaptadas_antes_y_ahora.mp4 (our models, normal speed)
and Caminata_adaptada_en_mapa.mp4. Female uses the existing base viewer; no NPC
controller/system or running was added. Protagonist launcher remains unchanged.
The inspection-only / await-implementation notes below are now HISTORICAL.

CURRENT WALK REFERENCE STUDY (2026-09-06): Nico now authorized inspecting both
walking reference folders and explaining what each contributes. Completed study:
Documentacion/Referencias_caminata/LEEME.md, native FBX pose samples and metrics.
Mr_Man_Walking.fbx has one 1.033s in-place cycle; Mia_Walking.fbx one .967s cycle,
each 67 Mixamo bones. Male: stronger shoulder/pelvis counterrotation and unequal
arm/elbow paths. Female: more pelvic roll but LESS vertical bounce, more flexed
knees and different arm poses. These are clip-specific, not universal sex rules.
Both have foot roll / knee recovery / extension sequencing worth adapting.
One repeated cycle each does NOT supply multi-stride variation, turns or running.
No runtime/model/rig/animation changes were made during this analysis. Video:
Vistas/Referencias_caminata_masculina_femenina.mp4 shows the reference clips only,
neutral review materials, NOT an implemented new walk for our characters.
The pending inspection note below is now historical. Await implementation request;
preserve the approved head/hands/support/self-clearance behavior when adapting.

CURRENT TURN STEP SELF-CLEARANCE FIX (2026-09-06): Nico reported the trailing
shoe passing through the planted leg. The former cross-center landing and
unchecked sine arc were NOT a collision-safe trajectory. Superseding the
crossing rule below: the foot follows its anatomical stride lane; a separate
leg_swing_clearance.gd routes the moving leg around the support volume before
terrain/reach IK. It predicts thigh/shin segments and shoe/toe spans, checks
intermediate points of each movement, limits ankle travel to 4.2m/s while this
turn adjustment is active, and retains one detour direction instead of jumping
across the obstacle. The whole transition back to the clip gets clearance.
Final leg sequencing retains support for .16s and releases over .14s. The free
leg samples a slightly advanced phase of the SAME walk clip, adds an outward
35mm arc and up to 12deg of shoe heading lead, with zero added offset at contact.
Do not restore the prior fixed future landing / long planted support / recovery
chain: it forced thigh intersections, and merely projecting the shoes away did
not fix the entire leg or its continuity. Only moving targets yield; planted
anchors stay fixed during the hold. Both changed targets
are rechecked against terrain/sole probes before final IK. Head-turn code,
turn timings, hand scripts/settings, skeletons and meshes remain unchanged.
The independent bone/sole tests reproduce the old intersection and pass the
fix at 30/60fps, left/right, three gait phases; 45/90/135deg tested at 60fps.
Checks include thigh/shin/shoe separation, maximum displacement between frames,
planted drift, reach, segment lengths, hands and reset. Existing terrain suite
and head timing regression pass; all 306 protected assets/scripts remain exact.
Evidence/backups: Documentacion/Giro_sin_atravesar_piernas. Review video:
Vistas/Giro_recorrido_sin_cruzar_pierna.mp4 (same turn, front and elevated view).

PENDING, WAIT FOR NICO: user wants to try these changes FIRST. Only after he
says to continue, inspect walking reference female / walking reference male
inside stuffimadeuseonlyifiask for animation references to improve the walking
loop, preserving head/hands/turn features. Shift-to-run comes later. Neither
the reference folders nor running were worked on during this clearance fix.

CURRENT TURNING HANDS / SUPPORT STEP (2026-09-06): Nico approved head-first
turning and requested an inside-hand delay, a quicker outside hand, a planted
support foot and a redirected crossing step. turn_limb_coordination.gd now
shares a direction-change event between BodySecondaryMotion foot IK and the
new TurnArmFollowThrough modifier AFTER the unchanged ArmInertia. Inside wrist
is held in world space for .16s (bounded by anatomical reach), then released
over .16s. The outside hand turns ahead with a .065m forward lead and a trunk
side boundary. Rotation-only two-bone IK preserves segment lengths and rest.
Foot selection follows actual walk phase: keep the grounded shoe's world
anchor AND orientation, redirect the other shoe toward the requested heading
with shorter flight timing (.78 of remaining swing, bounded .16-.34s). The
outside leg crosses the travel centerline slightly; do not force the same foot
to cross regardless of the current contact. Foot and toe poses are included in
the real skinned sole clearance checks. Recovery steps sample the original
clip's next contact, avoiding a snap back to a moving mid-swing target. Do not
replace this with a long stationary anchor followed by a short position blend.
Stop/teleport/long-frame resets clear anchors. Settings are in locomotion_settings.
This is constrained procedural IK/secondary motion, not a free physical ragdoll.
The approved .10s chest/.24s body sequence is unchanged (verified actual head
.033s, chest .167-.183s, body .250s at 60fps). No mesh, rig, clip, skin, texture,
garment, terrain or camera asset changes: all 306 protected files remain exact.
Tests at 30/60fps cover left/right turns at three gait phases, actual hand
travel, support drift, skinned sole clearance, segment lengths, reach and reset.
Full existing locomotion and actual map tests passed. Evidence/backups:
Documentacion/Giro_apoyo_cruzado. Review Vistas/Giro_manos_y_apoyo_comparacion.mp4
shows identical inputs/camera at normal speed, prior behavior left, new right;
Vistas/Giro_manos_y_apoyo_en_mapa.mp4 is the full current gameplay recording.

CURRENT TEMPORAL TURN SEQUENCE (2026-09-06): Nico clarified that head rotation
must START before body rotation; the previous angular lead started both together.
turn_sequence.gd now buffers input/travel headings with a .10s chest delay and
.24s visual body delay. Head sees immediate input. Body follows buffered actual
travel with response 9/s; chest anticipation uses chest_facing_error. Head bound
is now 32deg (supersedes 20 below) for readable gaze from the gameplay camera.
Velocity/input acceleration remain immediate; only orientation is sequenced.
Do not describe this as delayed movement translation, or restart a countdown on
every input/camera update. History resets on release, teleport and long frame;
the initial held sample prevents anticipatory interpolation before the delay.
At 60fps actual skeleton onset against a straight-walk control: head .033s,
chest .167-.183s, root .250s. Previously head/root both .033s. At 30fps the new
gap remains .20s. Tests also cover from-rest buffering, wrap at +/-180deg and
release cancellation. Existing terrain/map checks passed. 306 protected files
remain exact. Sources/backups/tests: Documentacion/Giro_cabeza_primero.
Demo Vistas/Giro_cabeza_primero_en_mapa.mp4 is an uncut 11s actual-map recording
at normal speed, gameplay camera (normal distance then ordinary wheel zoom).
No model, head/skin weights, rig, walk poses, garments or environment changes.

CURRENT WALK CYCLE / HEAD ANTICIPATION (2026-09-06): Nico rejected the prior
microvariation-only result as still robotic and explicitly requested head lead.
BodySecondaryMotion now uses walk_cycle_refinement.gd to revise the actual
walking poses: relaxed upper-arm swing, elbows about 11-23 degrees before the
existing variation/inertia, reduced passing extension via 14mm pelvis lowering
and a small loading response. Swinging feet lower by up to 22mm before the
original real-sole terrain constraints; original support timing remains intact.
Arms are aligned on existing segments with unchanged lengths and joint locations;
the shared ArmInertia still runs last. Previous slow gait variation remains.
Head anticipation is a separate bounded critically damped target from input
facing error / yaw rate (20 degrees maximum), split with 25% neck contribution.
Final head yaw is solved explicitly so the prior +/-8deg walk oscillation cannot
overwhelm the requested gaze. Walking head yaw oscillation is attenuated 75%.
Only bone poses change: FINAL original head/neck meshes are byte-identical.
Original GLB clips are also unchanged; the revised cycle is applied at runtime.
This supersedes the earlier claim that microvariation alone resolves the walk.
Do not remove it by restoring the older BodySecondaryMotion. Tuning is in
locomotion_settings.gd, group Casual walk poses and head anticipation.
Tests: actual final head leads chest by 12-13deg in left/right 90deg turns;
mean elbow bend 28.45 -> 16.25deg, passing stance knee 11.50 -> 22.17deg at 60fps.
Head/cycle tests passed at 30/60fps; full terrain and actual map checks passed.
307 protected files unchanged, including actor controller, gait_variation and
arm_inertia. Backups/review: Documentacion/Caminar_cabeza_ciclo. New video:
Vistas/Caminar_ciclo_y_cabeza.mp4, compared against the PREVIOUS delivery.

CURRENT WALK VARIATION (2026-09-05, Nico's casual-walk video references): the
walking-map protagonist now uses gait_variation.gd inside BodySecondaryMotion,
before the unchanged ArmInertia modifier. Independent continuous slow waves
adjust each arm's original clip amplitude/phase, without changing clip data.
Swinging feet get up to centimeter-scale path variation, small knee bend-plane
variation and bounded turning yaw; their added positional correction AND its
velocity vanish at toe-off/contact. Keep real shoe sole probes rotated with the
swing yaw before terrain constraints. Planted-foot targets receive no variation.
Pelvis/spine retain bounded springs, with modest nonrepeating weight transfer
and a small turn lean. The visual root follows measured travel during turns;
chest anticipation still follows input. Original controls, speed, collision,
1.1s clip, .26s blending and all model/rig/painted-texture files stay unchanged.
This is controlled secondary motion plus IK, not a free physical-bone ragdoll.
Only the existing map controller is integrated; no female/NPC system was added.
Tuning lives in locomotion_settings.gd. variation_strength=0 fades out new gait
offsets (existing terrain/arm springs and trajectory-facing behavior remain).
Do not restart the variation clock each stride or add per-frame random jitter.
Evidence/backups/reproducible before-after and tests: Documentacion/
Caminar_variacion_sutil. Real final bone poses vary across successive cycles at
30/60/120fps; planted offsets remain zero, movement trajectory unchanged. Terrain
and map checks passed. Video: Vistas/Caminar_variacion_antes_despues.mp4.
305 protected files retain their exact pre-task hashes, including arm_inertia.gd.

CURRENT SIDEWALK DETAILS (2026-09-05, Nico's sidewalkdetails.png): the source
1254x1254 RGBA image is copied BYTE-FOR-BYTE to Modelos/Entorno/Veredas/Texturas.
No repaint/resize/cutout. Use measured interior UV rectangles from atlas_layout.json
and sidewalk_details.gd, never raw 313.5px cells with their guide grid. The shader
also stores safe edge rectangles for the corner transitions; update both if the
atlas layout changes. PNG alpha is preserved; near-invisible alpha <.025 is ignored.
Two visual batches add 572 tiles / 1144 triangles, at y=.152, to the existing two
100m blocks. Physical surfaces remain street y=.05, sidewalk y=.15. No new collider.
Straight borders use 2m cells; eight corners are oriented to the outer perimeter
and blended into adjacent straight edge art. Drains are near curbs, cracks/wear
are seeded (9052026) and sparse in the outer 5m band. No road/building overlap.
Only mapa_caminata.gd integrates the detail builder; building, character, rig,
textures and movement assets remain exact. Ver edificio modular.cmd opens near
the result. Reports/backups: Documentacion/Veredas_tiles_Nico. Preserve Nico's
Desktop source and later painting. Rendering does not auto-overwrite his PNG.

CURRENT OPENING MATERIALS (2026-09-05, Nico's correction): WALL_WINDOW and
WALL_DOOR now use plain brick tile 0 around their actual openings. Atlas cells
1/2 with stamped window/door artwork are UNUSED; atlas PNG itself is unchanged.
Door leaf uses Texturas/puerta_madera_128x256.png + material_puerta.tres. Window
frame/sash and door jamb use Texturas/marco_ventana_128.png + material_marco_ventana.tres.
Glass is one two-sided transparent plane with material_vidrio.tres and
architecture_glass.gdshader, tint (.50,.64,.66,.16); original glass collider stays,
NO opaque backing box/quads. Window rails are actual low-poly geometry. Native
module meshes have named surfaces: atlas/frame/glass or door. Geometry JSON and
Blender exporter support ALL surfaces/materials. Both editable kit/building
.blend copies contain three packed PNGs and transparent glass material.
Dimensions, module transforms, site, floor grid, door traversal, player/rig and
all other character assets remain unchanged. Textures and opening geometry
supersede the earlier single-atlas/opaque-window description below. Backups,
prompts and final validation: Documentacion/Texturas_aberturas. Never rebuild
these authoring outputs over future user painting without preserving that work.

CURRENT MODULAR BUILDING (2026-09-05): the old near/eastern 18x6.5x22 box has
been replaced by Modelos/Arquitectura/Edificios/edificio_01.tscn, 18x21m footprint,
two 3.30m storeys (6.60m total), 215 reusable module instances. Root world corner
is (11,.15,23.5), horizontal center still (20,34), no rotation. Entrance faces west
at (11,.15,40), toward the central street. Normal spawn/streets/curbs are unchanged.
mapa_caminata.gd now keeps buildings as Node3D assemblies and tests structural
metadata rather than an obsolete BoxMesh. The sidewalk's visible top is omitted
under the modular floor to avoid z-fighting; original terrain collision remains.

GLOBAL ARCHITECTURE STANDARD: 3m horizontal grid, wall 3x3x.20m, slab 3x3x.30m,
finished floors at index*3.30m. Doors .90x2.10m; windows 1.50x1m with 1.20m sill.
Wall local origin is bottom exterior corner: +X along facade, +Y up, +Z inward.
Floor/roof origin is finished-floor corner with slab below (Y=-.30..0). Corners
are two mitered 3m legs inside the existing 3x3 cell, never extra .20m grid width.
Godot Y-up corresponds to Blender Z-up. All placements derive from integer bay
and floor indices; a site translation does not alter the building's local grid.

Kit: Modelos/Arquitectura/Kit_3m/Modulos (16 native reusable .tscn types), shared
material_atlas.tres and Texturas/atlas_512.png (4x4 cells of 128px, 3x3m each).
UV0 is the readable atlas mapping; UV2 records cell coordinates for edge sampling
clamp. architecture_atlas.gdshader uses simple diffuse, nearest sampling and no
mipmaps. Decorative frames/fascia may project a few centimeters but never alter
structural extents. Door leaf is a separate auxiliary piece, left open in this
prototype; no room distribution, staircase or door interaction was added.
Kit_3m/Edicion/kit_arquitectura_3m.blend and Edificios/Edicion/edificio_01.blend
provide editable faithful copies with linked reusable meshes and packed atlas.

building_assembly.gd assemble(6,7,2) builds the current structure; 9x12m/three-storey
temporary assembly, module swaps and real protagonist entry/exit are verified.
Ver edificio modular.cmd opens the normal walking map near the door. Reports,
backups, original generated atlas and its prompt: Documentacion/Edificio_modular_01.
The original character/body/skin/hair/animation assets remain unchanged. Older
notes below calling the current building a single box are HISTORICAL. Generated
architecture scripts are authoring tools, not startup sync; review/back up later
Nico edits before rebuilding. Follow Kit_3m/LEEME.md for asset and pivot rules.

CURRENT CORRECTED HAIR (2026-09-05, Nico 19:06/19:10): installed Nico's corrected
hairbaseforprotagonist.blend and longHair Female.blend from the same source stash.
Only these two hair GLBs were replaced; female short/medium and NPC archives stay
exact. Current textured copies are Protagonista/Edicion/
pelo_protagonista_corregido_20260905_texturado.blend and Femenino/Largo/Edicion/
pelo_femenino_largo_corregido_20260905_texturado.blend, under Modelos/Pelo.
Preserve source shapes (9/14 author-edited vertices), Solidify -0.01 / offset -1,
43/46 source vertices, 168/180 evaluated triangles and Head-only rig binding.
Only the hair copy receives UV/material; all original heads and source files
remain unchanged. The previous visible head/fringe holes are gone in inspected
front/profile/back and walk views. Old hole warnings below are HISTORICAL.
Current waist/chest female refinement remains intact; no body/skin/rig edits.
Reports and exact prior GLBs: Documentacion/Peinados_corregidos. Hair tools accept
--doc Documentacion/Peinados_corregidos --styles protagonista,largo and the export
uses --tag corregido_20260905. It stages only. Do not run old default build records
over newer user sources. Capture helper now reads each current asset's report,
not a historical four-hair manifest; --corrections selects the two updated styles.
Map check and both rest/walk captures passed; 154 other protected files unchanged.

CURRENT FEMALE WAIST/CHEST (2026-09-05, Nico's annotated front/profile image):
The female base GLB and canonical Edicion/cuerpo_femenino_uv.blend now have a
localized 6% waist narrowing (26.1612 to 24.5915 cm at the narrowest source ring)
and up to 2 cm chest lowering, with soft transitions on existing torso rings.
44 of 740 body vertices moved. Approved shoulders, neck/head, hip seam, limbs,
topology, UVs, weights, rest skeleton, materials and animation bytes remain exact.
356 idle/walk deformation frames passed; outside-region vertex differences are
zero. The 153 other tracked assets/scripts are unchanged, including all current
hair GLBs and male assets. Nico saved a new longHair Female.blend externally
during this torso pass; it was preserved, not re-exported or restored. Therefore
the prior four-hair source snapshot no longer describes that live long source.
Backups/reports: Documentacion/Cintura_pecho_femenino. Views: Vistas/
Cintura_pecho_femenino_comparacion.png (before above, after below), *_walk_despues.png.
The position-only GLB and deformation helpers accept --doc to use this delivery's
reports. Never rerun older shoulder or body generators over the current torso.
Female garments remain a future task, not part of this localized base change.

CURRENT FOUR HAIRSTYLES (2026-09-05, Nico 18:23:31): the CURRENT protagonist
uses the latest stuffimadeuseonlyifiask/hairbaseforprotagonist.blend (43 source
vertices / 65 triangles, 168 evaluated). Current editable textured copy:
Modelos/Pelo/Protagonista/Edicion/peinado_182331_texturado.blend. The 17:42 hair
is preserved EXACTLY in Modelos/Pelo/Masculino/NPC_flequillo_02; NPC_flequillo_01
is unchanged. New supplied female short/medium/long hairs are separate GLBs in
Modelos/Pelo/Femenino/Corto, Medio and Largo (164/164/180 triangles), not random
NPCs. Ver peinados.cmd compares all four and uses the existing animation system.
All retain Nico's source shape, head, rig, weights and Solidify -0.01 / offset -1.
Only hair copies have new UV/material; shared approved brown256 texture lives
at Modelos/Pelo/Texturas/cabello_castano_256.png. A tiny head/fringe intersection
is visible on female long and confirmed in the SOURCE .blend; do not silently
reshape Nico's head or hair to hide it. Report: Documentacion/Cuatro_peinados.
Four rest/walk captures and actual map check passed. The 188 protected files
remain byte-identical; Nico's shirt/pants live PNG edits were preserved separately.
project.godot now disables automatic .blend import: game uses exported GLBs.
The new batch exporter stages only; review before installing. All older current
hair source notes below are historical. Female clothes are still a future task.

CURRENT FEMALE SHOULDERS (2026-09-05): Nico approved the male refinement and
requested the same on the female base. cuerpo_femenino.glb and its canonical
Edicion/cuerpo_femenino_uv.blend now have 7% narrower deltoid span, up to 7.53 mm
inner upper-trap rise and 5.73 mm outer-shoulder lowering, using the female's
existing scale. 88 of 740 body vertices moved; topology, UVs, weights, all head
geometry, fixed neck/waist boundaries, lower limbs and original rig/animation
bytes remain exact. 356 walk/idle deformation frames passed, and Godot front,
side/back plus walking captures were inspected. 183 other files are unchanged,
including the approved male assets. The prior 'Female is unchanged' male-pass
note below is historical. Before/after: Vistas/Hombros_femeninos_base_comparacion.png.
Backups/reports: Documentacion/Hombros_femeninos. Shared shoulder build/check
tools use --female for this delivery; never rerun them over subsequent edits.
Nico identified female camiseta, pants and shoes as the NEXT step; this pass
only refines the base and does not create female garments or a variant system.

CURRENT MALE SHOULDERS (2026-09-05, after facial +10%): Nico requested a restrained
protagonist shoulder/trapezius refinement. The CURRENT male base, Camisa and
Camiseta GLBs and their *_uv.blend authoring files have 7% less deltoid span,
an inward taper that fades to zero at the elbow/lower chest, up to 8 mm of
inner upper-trap rise, up to 1.5 mm posterior fullness and 6 mm outer-shoulder
lowering. No topology or polygon-count changes. Fixed neck/collar/waist/wrist
boundaries, head/hair, forearms/hands, legs/feet, UVs, painted textures, weights,
22-bone rests and original animation bytes are preserved. Female is unchanged.
78 source base vertices and 126 per garment changed. All three passed 356
walk/idle deformation frames and the walking map passed STREETS_VERIFY_OK.
Current geometry sources remain Modelos/.../Edicion/*_uv.blend. Original non-UV
blends and UV para pintar Blender snapshots are historical; do not restore
their old shoulders over the current assets. Never regenerate over later Nico
edits. The staged-build scripts read immutable backups, not older generators.
Backups/reports: Documentacion/Hombros_protagonista. Before/after Godot views:
Vistas/Hombros_protagonista_camisa_comparacion.png and *_geometria_comparacion.png.
Historical hash reports now predate this explicitly authorized geometry change.

CURRENT EYES/MOUTH SIZE (2026-09-05, after new protagonist hair): Nico requested
10% larger eyes and mouth for BOTH sexes. bald_base_face.gd sets FEATURE_SCALE
1.10 on the existing expression shader. It scales texture sampling about each
original artwork center, after the male mouth's -5/120 offset. Preserve those
anchors and offset; all open/closed variants share the scale and anchor. This
is additional to the historical 1.265 already baked into UVs, not a replacement.
No model/UV/bitmap/atlas slot/rig/animation edits. The eyes include their existing
brow artwork. Blink timing and independent state logic are unchanged (56 checks
passed). Before/after and expression views: Vistas/Expresiones_10_por_ciento.png.
Backups and 121 unchanged asset hashes: Documentacion/Expresiones_10_por_ciento.
Prior task hash reports are historical; this later facial code edit is authorized.

CURRENT PROTAGONIST HAIR (2026-09-05, Nico's saved 17:42 edit): use the exact
HAIR_BASE.001 from stuffimadeuseonlyifiask/hairbaseforprotagonist.blend. The
runtime remains Modelos/Pelo/Protagonista/pelo_protagonista.glb. This supersedes
all older protagonist-hair source notes below. Preserve the source/head and
41-vertex / 63-triangle hair cage, Solidify -0.01 / offset -1, 160 evaluated
triangles and Head-only weights. Only the delivery hair copy has HairWrap UVs
and a packed 256x256 brown hair texture. No head, rig, gameplay or skin edits.
Textured Blender copy: Modelos/Pelo/Protagonista/Edicion/peinado_nuevo_texturado.blend.
The previous protagonist GLB and Blender source are preserved EXACTLY in
Modelos/Pelo/Masculino/NPC_flequillo_01 for future male NPCs. No random system
was created. Existing male/female hair assets remain untouched.
Do not regenerate over later user edits. integrar_peinado_nuevo.py is a guarded
build record for this exact request, not an automatic asset sync. The older
exportar_pelo_protagonista.py delegates to it so it cannot restore old hair.
Reports, original generated texture and prompt: Documentacion/Peinado_nuevo.
Godot views: Vistas/Peinado_nuevo_protagonista.png; map verification passed.
The user-source stash has .gdignore to avoid importing reference blends.

CURRENT LOCOMOTION (2026-09-05): jugador_caminata.gd now uses terrain_steps.gd
and body_secondary_motion.gd, with all tuning in locomotion_settings.gd.
Preserve the authored 1.1 s walk, 1.060606 m/s speed, original .26 s blend,
controls and byte-identical arm_inertia.gd. BodySecondaryMotion runs BEFORE
ArmInertia on the existing skeleton, so arms respond to the modified torso.
This is bounded spring secondary motion and terrain two-bone leg solving,
not an unconstrained physical-bone ragdoll. No mesh/rig/rest/clip/UV edits.
Auto-step maximum is now 0.20 m (supersedes the .11 m note below). Validate
the actual contacted face/top, capsule clearance, direction and slope; preserve
upper support while crossing the capsule edge to prevent momentary stalls.
The collision capsule and visual pelvis elevation are separate: feet and knees
adapt, pelvis elevation is smoothed/reach-limited, camera follows visual height.
Use the actual current shoe sole/skin weights for diagonal edge clearance.
no_auto_step group excludes otherwise low objects. Do not replace this with
capsule-only stepping or modify original animations to fake terrain response.
Source clips contain idle/rest_pose/walk ONLY: run-to-walk testing remains
unavailable until a run asset is authored; do not claim that test was performed.
Tests/captures/backups: Documentacion/Locomocion_terreno. The original one-building
map, model assets, Nico's painting, face system and arm code remain unchanged.

CURRENT TEST MAP (2026-09-05): mapa_caminata.gd now creates ONE simple building
on the near/eastern block: Block2_Building1, center x=20,z=34, 18x6.5x22 m.
The other 23 former building blocks are gone. Both 100x100 m blocks remain.
Physical asphalt surface is y=0.05 m. Sidewalk platforms are y=0.15 m, exactly
10 cm above asphalt. Ground remains y=0; markings, block labels, building base
and spawn/reset heights follow their corresponding new surfaces.
jugador_caminata.gd adds only small-curb clearance (maximum 0.11 m) via capsule
sweeps and a flat-landing check. Keep original gait, speed, bones and animations.
This allows the 10 cm curb to be traversed; walls and overhead obstructions
remain solid. Backups and verification: Documentacion/Mapa_un_edificio.
The --verify-streets checks now target one building and physical raised surfaces,
not the historical 24-building flat map described below.

CURRENT PAINTED PANTS (2026-09-05): UV para pintar/Pantalon/pantalon.png is now
read directly at runtime by the existing male_clothing_prototype.gd, like the
shirt. apply_painted_garment handles only each garment's named cloth surfaces;
CHINOS uses Debug_Chinos and Debug_Garment_Return. PNG is authoritative, not BMP.
Restart the map/viewer after saving. No reimport needed for local painting.
Nico's 512x512 image is preserved exactly and copied to the canonical pants PNG
as imported fallback. Models, UVs, rig and animation files remain unchanged.
Backups and verification: Documentacion/Pantalon_pintado. Do not restore the
plain pants texture from historical UV manifests over the current painting.

CURRENT MALE MOUTH ALIGNMENT (2026-09-05): Nico identified a leftward lip offset.
Male mouth artwork spans atlas x=158..216 (center 187) while mesh center samples
x=192. Existing shader expression_horizontal_offset=-5/120 on male MOUTH only
centers both mouth_closed and mouth_open. Eyes and female use zero offset.
No mesh/UV/atlas-region/bitmap, vertical placement or scale changed. Do not
remove this correction when adding expressions. See Vistas/Boca_centrada.png
and Documentacion/Centrado_boca; previous facial reports predate this correction.

CURRENT PAINTED SHIRT (2026-09-05): Nico painted UV para pintar/Camisa/CAMISA.png
(currently 1024x1024). His PNG is authoritative for local shirt preview.
male_clothing_prototype.gd reads it directly when assembling SHIRT, before the
existing surface styling, and overrides ONLY Debug_Shirt/Debug_Garment_Return.
Restart the map/viewer to reload later saved edits; no editor reimport required.
No image resize, mesh, UV, head, rig or animation change. The current painting is
also copied exactly to Modelos/Ropa/Camisa/Texturas/camisa.png as imported fallback.
Backups: Documentacion/Camisa_pintada/Antes. Never regenerate over Nico's PNG.
The previous UV manifest's plain-shirt bitmap is now historical, not current.

CURRENT MODULAR EXPRESSIONS (2026-09-05): extend bald_base_face.gd and the existing
protagonist_expression.gdshader. NEVER alter head, mesh, UVs or expression slots.
One FaceAppearance per model (attach_to is idempotent), one independent clock.
Automatic triggers start-to-start every 3.5 s; close BOTH eyes for the full 0.400 s.
Restore desired left/right variants afterward; mouth never resets the blink clock.
The original skin PNG is byte-identical. Modelos/Piel/Expresiones/variantes.png is
one transparent same-coordinate 512x512 sheet of ONLY closed eyes/open mouths.
Six named AtlasTexture views per existing sex reference original/variant regions.
Visible brows are original texels. No full-face swaps, new bones or geometry.
The existing mirrored eye surface has ten vertices. Shader side selection reads
their imported VERTEX_IDs with a rest-position mask populated by the controller;
do NOT use animated VERTEX.x (it changes during head motion). No UV channel added.
Ver expresiones.cmd opens the review scene. Existing walking map blinks already.
Reports/backups: Documentacion/Expresiones_modulares. Do not rerun preparation
scripts over later painting. Nico's UV para pintar/Camisa/CAMISA.png changed
externally during this task and was preserved; it is not an expression edit.
The old alpha and UV manifests below are historical; do not restore their code.

FUTURE CLOTHING UV RULE: Nico approved the five-block UVs as perfect. Follow
the same simple front/back/sleeve/collar or leg-panel/waistband logic for future
garments. Prioritize easy hand painting at 256x256 and avoid fragmented islands.

CURRENT CLOTHING UV BLOCKS (Nico's simplification request, 2026-09-05):
Camisa, Camiseta and Pantalon each have exactly FIVE connected UV islands at
256x256. Shirt/tee: front, back, one unrolled block per sleeve, one collar strip.
Pants: left/right front, left/right back, one waistband strip. Thin garment
returns/hem faces remain attached to the corresponding main chart; no tiny
separate return islands. These replace the earlier 24 / 20 / 10 island layouts.
The Godot GLBs and existing *_uv.blend working copies use the new garment UV0.
Only garment UV0, seam flags, and rebaked garment bitmap placement changed.
Mesh positions, normals, topology, all other UV channels, skin, head, hair,
weights, bones, rig hierarchy and animations were verified unchanged.
Each chart has space around it. Controlled distortion is intentional to make
painting simple. No overlapping or collapsed UV triangles. Both sleeve sides
and all four leg panels are independent, allowing asymmetric painting.
UV para pintar contains the updated PNG/BMP and Blender files. Its default
UV_transparente.png is a CLEAN CONTOUR guide; UV_detallado.png is the optional
full polygon wireframe. ZONAS.png and GUIA.png are labeled illustrations,
never game textures. See Vistas/UV_ropa_bloques.png and Godot cloth/grid views.
The newest manifest is Documentacion/UV_bloques/terminado.json; backups are in
UV_bloques/Antes. Earlier UV_compactos and Expresiones_alpha reports remain
historical snapshots. Do not rerun build/delivery scripts over Nico's painting.
Use this garment UV layout as the current source, not a historical UV copy.

CURRENT FACIAL ALPHA (2026-09-05): Nico requested only eyes + eyebrows and
only lips, with transparent surrounding skin. Modelos/Piel/piel_personaje.png
is now the single 512x512 RGBA atlas. All original RGB texels are exact; only
alpha in the four expression tiles/gutters changed. No UV, geometry, size,
placement, weights, skeleton, animation or head/hair source changed. The Godot
expression shader composites patch.rgb over UV2 skin using patch.a; it keeps
the head opaque (do NOT connect feature alpha to surface transparency).
The six *_uv.blend working copies and paint-kit copies have updated packed
PNG/material nodes. Original non-_uv body/head/hair Blender files stay intact.
Use UV para pintar/Abrir UV.html, Piel/PIEL.png and the updated ZIP. The old RGB
skin BMPs cannot carry this alpha and are backed up under
Documentacion/Expresiones_alpha/Antes. Garment BMP/PNG assets remain unchanged.
Expresiones_alpha/terminado.json is the current delivery manifest; the previous
UV_compactos/entrega_final.json records the pre-alpha snapshot. Do not rerun
alpha prep/delivery scripts over subsequent user painting. No new variants.

CURRENT UV / TEXTURE SYSTEM (Nico's explicit correction): exposed skin, head,
ears, neck, arms, hands, legs/feet AND male/female eyes/mouth now reference ONE
physical 512x512 image: Modelos/Piel/piel_personaje.png (now RGBA, see above).
The eyes/mouth keep independent regions and the existing
size/placement, with UV2 for underlying skin. bald_base_face.gd now
uses atlas regions; skin and expression materials share that same image.
All actual game body/garment GLBs have the corresponding UVs installed. The
hand maps were unfolded without clamps, with separate palm/back/cant islands
and one additional UV island at the inner thumb fold. NO mesh vertices moved.
Camisa, Camiseta, Pantalon each have complete noncollapsed UVs and their own
256x256 image under Texturas/{camisa,camiseta,pantalon}.png, with current plain
colors baked as painting bases. Shoes retain their existing 128 atlas. Base
underwear remains its existing flat material; no underwear variant was made.
Godot positions, normals, topology, weights, nodes, skins and animation data
were verified EXACT against Documentacion/UV_compactos/Antes/*.glb. Only UVs,
UV seam duplicates and image/material references changed. No head reshaping;
the user's head and hair authoring files are byte-for-byte untouched. Skin
bilateral parts intentionally reuse texture regions. Both hands and all three
garments were checked for collapsed UVs and unintended same-side overlaps.

Use UV para pintar/Abrir UV.html and UV_para_pintar_Dark_City.zip for the NEW
paint kit (one skin image, 4 garment/shoe images, transparent UV guides, labeled
guides, six Blender copies and actual Godot captures). UV y Texturas/ is the
older untouched historical snapshot. Do not export over either paint folder
after Nico starts painting. Active UV authoring copies are *_uv.blend next to
the originals under each Modelos/.../Edicion/. They have UV_Atlas FIRST and
UV_Skin_Atlas SECOND, plus the archived original UVs. They use the compact
images and include the face compositing nodes. Original non-_uv blends retain
their pre-atlas UVs as backups; do not restore those UVs to the runtime.
The unwrap/bake/delivery helper scripts are build records, not safe live-edit
commands: never rerun them over a user-edited UV model or texture. Head/hair
geometry, main hair mass, skeleton and all animation clips remain protected.
Full reports: Documentacion/UV_compactos/{antes,desplegado,integracion,
verificacion,entrega_final}.json. The hair validator accepts only the exact
documented later UV-only GLB hashes, retaining the original hair provenance.

HISTORICAL NOTES BELOW (superseded for UVs by the compact atlas above):

LATEST USER HAIR EDIT (2026-09-05 14:48:51): Nico edited the existing
Modelos/Pelo/Protagonista/Edicion/pelo_protagonista.blend and requested it in-game.
That saved file is now the exact export source, SHA256
ed7d341e8d08d34eba2fe3276a6ae67a1d4c6b556a1c560580fdb00363c8f47a.
Its hair has 38 vertices / 56 triangles, or 76 / 148 with Solidify -0.01.
The export includes his geometry and modifier without any further remodeling.
Head and rig/actions hashes still match the approved originals. The previous
runtime GLB is backed up under Edicion/Antes_edicion_Nico_20260905_144851.
Godot export matching and walking-map verification passed. The latest visual is
Vistas/Flequillo_protagonista.png. The earlier 36-vertex refinement report below
and flequillo_verificado.json are historical; do not regenerate that older mesh.

PREVIOUS PROTAGONIST FRINGE: Nico requested a broad-root / narrow-tip refinement
of his existing protagonist hairstyle. The runtime GLB now comes from
Modelos/Pelo/Protagonista/Edicion/pelo_protagonista.blend. It is a separate copy
of his saved hairbaseforprotagonist.blend, which remains byte-for-byte unchanged.
Only free fringe vertex 17 moved toward vertex 23 by 72%; root edge 15--31,
all other cage vertices, topology, UVs, weights, smoothing, head and rig/actions
are exact. No polygons were added: 36 source vertices / 54 triangles, 72 / 140
after the original Solidify -0.01, offset -1. Its normal recalculation moves
only outer fringe-root vertex 15 by 0.537 mm; nonfringe evaluated mass is exact.
No FRINGE_GUIDE exists in this protagonist file; its two existing front fringe
faces 43/44 were used. Male/female NPC hair and guides were not changed.
exportar_pelo_protagonista.py now reads the reviewed Edicion copy and must never
silently restore the original blunt fringe. Do not rerun refinar_flequillo_...
over user edits; it refuses to overwrite the editing copy. Before-edit GLB and
captures are under Edicion/Antes_del_flequillo. See flequillo_verificado.json
and glb_verificado.json for preservation/export checks, and
Vistas/Flequillo_protagonista.png for the actual Godot four-view capture.
The UV y Texturas delivery remains an untouched earlier snapshot.

UV DELIVERY: Nico requested the current UV maps and textures for everything.
UV y Texturas/ and UV_y_Texturas_Dark_City.zip contain 38 exported views, transparent
PNG/SVG guides, original PNG/BMP textures, raw coordinates and a local HTML gallery.
These are READ-ONLY snapshots from current GLBs; no UV/model/source was edited.
UV audit: Debug_Shirt on Camisa has 90/398 nonzero-area UV triangles (partial);
Camiseta's cloth 384/384 and Pantalon's cloth 372/372 collapse to one UV point.
Garment return faces also have collapsed UVs. Do not call these paint-ready UVs.
Pelo/Protagonista inherits head UVs, including mirrored/overlapping Solidify layers;
it has only a brown material, not a dedicated hair texture or unwrap. Skin, face,
eyes, mouth and shoes have current bitmap textures. Eyes/mouth additionally use
shader-adjusted coordinates (scale 1.265, mouth offset 0,.15) and SkinWrap/UV2 skin.
The delivered layouts distinguish raw mesh UVs from effective expression sampling.
Do not run entregar_uv_texturas.py over a copy Nico has started painting; it is
an exporter, not an asset builder. Generate a separately named snapshot if needed.

CURRENT WALKING MAP: Nico requested walking with the clothed protagonist. The
existing two-block test map and original walking controller now run independently
here in Sistema/Escenas/caminata.tscn (main scene). Caminar con protagonista.cmd
or viewer option 5 launches it. Current head + shirt + pants + shoes + Nico's hair
share ONE original 22-bone skeleton and animation player. No body, proportions,
joint positions, actions, secondary-motion behavior or source asset were changed.
Map has the original two 100m blocks, 24 buildings, 950x1650m ground and collisions.

SOLIDIFY EXPORT REQUIREMENT: the user hairstyle in hairbaseforprotagonist.blend
has Solidify thickness -0.01, offset -1, rim enabled. Export with export_apply=True
to include its result (72 evaluated vertices / 140 triangles). An initial export
omitted the modifier and looked sunk into the head; this was corrected. Never
restore the 54-triangle unmodified cage as the visible hair. No depth-bias shader
or head geometry change is used. Exported triangles match the user's evaluated
Blender result to 1 micrometer. See Modelos/Pelo/Protagonista/glb_verificado.json.
Sistema/Herramientas/exportar_pelo_protagonista.py reads but never saves the
reviewed hairstyle editing copy. Only the exported hair copy receives a brown material. protagonista.gd
attaches it through the existing module loader; the rest/animation rig is exact.

LATEST USER CORRECTION: Nico already made the protagonist hairstyle himself in
Modelos/Cabezas/hairbaseforprotagonist.blend. Preserve his hairstyle; do not
replace it with the generated Corto_sencillo experiment. That experiment is
NOT the protagonist asset and has been removed from the normal viewer menu.
He separately updated cabeza_masculina.blend and cabeza_femenina.blend and
says FRINGE_GUIDE belongs to HAIR_BASE in THOSE TWO files, not the protagonist.
For fringes, work only on copies of the saved current user hair. FRINGE_GUIDE
allows moving/extruding/reshaping/removing/rebuilding geometry inside its area.
Preserve faces outside it unless strictly necessary. Never edit the head.
Nico saved the updated files during the walking-map task. FRINGE_GUIDE is now
confirmed on both male/female HAIR_BASE.001 objects: 14 marked vertices, 12 fully
inside faces. The original head meshes remain exact. This task only inspected
those new markings; no fringe remodeling was done while preparing the map.
See Documentacion/Pelo_flequillo/fuentes_usuario.json for exact source hashes.

HAIR-ONLY RULE (explicit latest instruction from Nico): HAIR_BASE, currently
named HAIR_BASE.001 in both edited head files, is exclusively starting geometry
for hairstyles. Never use it for hats, helmets, accessories, facial geometry or
any other object type. The ORIGINAL HEAD IS FINAL AND MUST NEVER BE MODIFIED,
reshaped, replaced, conformed or adapted to any reference. Build separate
low-poly hair meshes derived only from HAIR_BASE. GTA character models may be
inspected only for hair silhouette, polygon economy, volume, hairlines and how
textures supply detail. Do not copy/reuse their heads, transfer/morph geometry,
or adapt our head to theirs. Preserve current head mesh positions, topology,
UVs, weights, proportions and face. Modify hair to fit the fixed head only.
Original head files and the user-created HAIR_BASE objects remain protected;
work on separate hairstyle copies. No non-hair reuse of HAIR_BASE is permitted.

LATEST: Nico requested separate heads so HE can mark the scalp in Blender.
Modelos/Cabezas/cabeza_masculina.blend and cabeza_femenina.blend are dedicated
editing copies of the current head/neck meshes: 86 vertices / 158 triangles each,
exact geometry/UVs/weights/materials, packed textures and original rig/actions.
Only the head mesh is visible; the retained original armature is hidden and set
to rest display. No scalp selection, seam or material has been assigned for him.
Do not overwrite these files or rerun Sistema/Herramientas/extraer_cabezas.py
after he starts editing. Treat user markings as new source work, and integrate
them into the body/game assets only when he requests it. Current body GLBs and
authoring files remain unchanged. See Documentacion/cabezas_para_edicion.json.

Nico requested this clean folder to organize the current two base bodies and
four existing male garment assets. The old fantasygamegodot directory retains
originals and historical backups. Work here for subsequent asset refinements;
do not regenerate models from the old experimental generators or transfer old
rejected versions into this project.

Read README.md for paths. Current assets are under Modelos/Cuerpos/{Masculino,
Femenino} and Modelos/Ropa/{Camisa,Camiseta,Pantalon,Zapatos}. GLBs were copied
byte-for-byte. Each Edicion/*.blend contains its own part and original rig with
packed textures; those authoring folders are ignored by Godot. Object and bone
names, mesh indices, UVs, skin weights and actions are preserved exactly.

Camisa is the approved folded-collar version with tips pulled 21 mm toward the
chest. Camiseta is the existing round-neck version from before_folded_shirt_collar,
with the SAME latest male body/head/hands and rig, not a new modeled variant.
Pantalon is the length/rear-knee/calf revision, 218 vertices / 408 triangles.
Zapatos is the foot-derived 144-vertex / 266-triangle pair with a 128px brown atlas.
Both bases retain the approved donor heads/hands/feet and latest proportion fixes.

Preserve current head/body scale, neck, shoulders, hands/feet, skeleton, hierarchy,
joint positions, animation clips and secondary-motion behavior unless Nico
explicitly asks to modify them. Male base: 22 bones, 1468 triangles. Female:
22 bones, 1516 triangles. The clothing is male only; no female clothing system,
NPC variant library, random generation or further variants are authorized.

Clothing geometry defines its silhouette with SUBTLE volume; textures define
surface appearance. The garment replaces its body section. Do not put garments
over a hidden full naked body, or retain bare feet underneath ShoesPair. Keep
the shirt untucked, sleeves/collar/hem modeled, pants above the shoe opening.
Maintain original modular boundaries and compatible weights. Eyes and mouth
remain independently replaceable textures; hair is a future separate mesh.

The runtime viewer is Sistema/Escenas/visor.tscn. Abrir visor.cmd selects shirt,
tee, male base or female base; P tests existing walk/idle. The assembled male
uses one Skeleton3D, one AnimationPlayer, and four meshes: head/neck, shirt with
exposed arms/hands, pants, shoes. Sistema/Scripts includes the relocated original
assembly, skin/expression style and unchanged arm inertia implementation.

Documentacion/inventario.json tracks source provenance and exact geometry/rig
digests. contrato_modular.json preserves current body-part indices. Original
workspace paths in historical provenance are informational, not dependencies.
The new project contains assets, the viewer and the current protagonist walking
map. The original map in fantasygamegodot remains as historical source.
