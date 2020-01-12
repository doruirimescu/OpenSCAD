# Description

The necessary laser cut parts for building an enclosure for a arcade-style button tapping game. OpenScad is needed.

# Folder structure

| Directory        | Description                                                                          |
| ---------------- | ------------------------------------------------------------------------------------ |
| `Assemblies`     | Assembly of multiple parts, for visualization purposes                               |
| `Exports`        | Exported files for laser cutting                                                     |
| `Modules`        | Building blocks that make up parts                                                   |
| `Parameters`     | Parameters needed for modules (defining dimensions, distances, etc), include files   |
| `Parts`          | Functional parts ready for export and printing, made of combined modules             |

# How to cut

1. Export dxf file from OpenScad
2. Import in Inkscape with manual scaling of x 10
3. Reduce stroke width to 0.2mm
4. Select vector mode
  * Speed:70
  * Power:90
  * Passes:8
