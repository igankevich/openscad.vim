A VIM plugin for [OpenSCAD](https://www.openscad.org/).
Detects file type and provides syntax highlighting.

Use the following command to export OpenSCAD file to one of the supported output formats.
```bash
openscad -o part-1.stl -Dpart=1 parts.scad
```
Here `-Dpart=1` overrides global variable in the file to export specific object.

To view updated 3-d model after every file change, just open the file in
OpenSCAD and turn on "Automatic Reload and Preview" option. The plugin provides
the following shortcut command.
```vim
let g:openscad_command = 'setsid -f openscad'  " the default
:OpenSCAD
```
