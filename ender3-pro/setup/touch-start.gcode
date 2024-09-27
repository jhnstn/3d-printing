; Ender 3 Custom Start G-code
M117 Heating Bed
M140 S{material_bed_temperature_layer_0} ; Set Heat Bed temperature
M117 Preheat e to 190 and Autohome
M104 S190; start warming extruder to 160
G28 ; Home all axes
; start bed leveling
M117 Load Bed Mesh
G4 P1500 ; Dwell for 1 & 1/2 second
M420 L0 S1 ; Loading the bed mesh
; end bed leveing
M117 Auto bed-level GO!
G29 ; Auto bed-level (BL-Touch)
G92 E0 ; Reset Extruder
G1 X0.1 Y.1 Z3.0 F5000.0 ; move to off the edge
M117 Heat E to temp
M104 S{material_print_temperature_layer_0} ; Set Extruder temperature
G1 X0.1 Y20 Z3.0 F5000.0 ; move to start-line position
M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature
M109 S{material_print_temperature_layer_0} ; Wait for Extruder temperature
G1 Z3.0 F3000 ; move z up little to prevent scratching of surface
G1 Z0.3 F3000 ; move z back down a bit
M117 Draw Line
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; draw 1st line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; draw 2nd line
G92 E0 ; reset extruder
G1 Z2.0 F3000 ; move z up little to prevent scratching of surface
M117 Begin Print
; End of custom start GCode
