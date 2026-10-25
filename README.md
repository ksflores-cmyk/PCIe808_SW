# PCIe Gen3 Packet Switch - PI7C9X3G808GP (modo 508)

Proyecto final de Electronica 2 - Kevin Flores. Cadence OrCAD X PCB Professional Plus 25.1.

- 1 puerto Upstream x4 (Gold Finger P2) + 4 Downstream x1 (SLOT4..SLOT7).
- 3 convertidores Buck discretos propios: 3.3V_EXT, 0.95V_VDDC, 0.95V_VP.

## Aviso
Este diseño es una version academica personalizada, desarrollada a partir del material de
referencia del fabricante proporcionado por el curso. El design kit original no se incluye en
este repositorio. El contenido se publica con fines educativos y de portafolio; no es un diseño
validado para fabricacion y se ofrece "tal cual", sin garantia. Cualquier uso o reproduccion
es responsabilidad de quien lo realice.

## Como abrir el proyecto
Clonar en una ruta sin espacios y abrir `PI7_KEVINFLORES.opj` con OrCAD X Capture 25.1.
Recomendacion: si la ruta tiene espacios, usar `abrir_proyecto.cmd`, que monta la carpeta
como unidad virtual `P:` (Cadence maneja mal las rutas con espacios).

## Estructura
| Carpeta | Contenido |
|---|---|
| `/` | `PI7_KEVINFLORES.opj` / `.DSN` (esquematico) |
| `allegro/` | `PI7_KEVINFLORES.brd` + netlist `pst*.dat` |
| `symbols/` | Footprints y padstacks propios (.pad .dra .psm) |
| `library/` | Simbolos Capture propios (.olb) |
| `docs/webench/` | Reportes de diseno de los Bucks |
| `outputs/` | PDF, BOM, reportes DRC por entrega |
