# PCIe Gen3 Packet Switch - PI7C9X3G808GP (modo 508)

Proyecto final de Electronica 2 - Kevin Flores. Cadence OrCAD X PCB Professional Plus 25.1.

- 1 puerto Upstream x4 (Gold Finger P2) + 4 Downstream x1 (SLOT4..SLOT7).
- 3 convertidores Buck discretos propios: 3.3V_EXT, 0.95V_VDDC, 0.95V_VP.

## Regla de oro
Abrir el proyecto SIEMPRE con `abrir_proyecto.cmd`. Monta esta carpeta como la unidad `P:`
(ruta sin espacios para Cadence). Nunca abrir el .opj desde la ruta larga.

## Estructura
| Carpeta | Contenido |
|---|---|
| `/` | `PI7_KEVINFLORES.opj` / `.DSN` (esquematico) |
| `allegro/` | `PI7_KEVINFLORES.brd` + netlist `pst*.dat` (versionado, diff legible) |
| `symbols/` | Footprints y padstacks propios (.pad .dra .psm) |
| `library/` | Simbolos Capture propios (.olb) |
| `docs/webench/` | Reportes de diseno de los Bucks |
| `outputs/` | PDF, BOM, reportes DRC por entrega |

Material del design kit del fabricante (NDA) excluido del repositorio.
