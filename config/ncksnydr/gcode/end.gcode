; --------------------------------------------------------------------------
;   end.gcode
; --------------------------------------------------------------------------



;   Prepare for sleep.
; -----------------------------------
; Wait for current moves to finish
M400
; Reset Speed factor override percentage to default (100%)
M220 S100 
; Reset Extrude factor override percentage to default (100%)
M221 S100
; Set coordinates to relative
G91
; Retract filament 5mm at 40mm/s to prevent stringing
G1 F2400 E-5
; Move Z Axis up 20mm to allow filament ooze freely
G0 F5000 Z20
; Set coordinates to absolute
G90


;   Present the print.
; -----------------------------------
; Move bed to the front for easy print removal
G0 X0 Y{machine_depth} 


;   Power down.
; -----------------------------------
; Disable stepper motors
M84

; Turn off hotend
M104 S0
; Turn off bed
M140 S0

; Set fans to full-speed for 3 minutes.
M106 S255
G4 S180

; Set fans to low for 6 minutes.
M106 S100
G4 S360

; Turn off fan.
M106 S0

; Goodbye
M117 Carnen hir vuin.

; MARIO!
M300 S1046 P150
M300 S1318 P150
M300 S1567 P150
M300 S2093 P150
M300 S2637 P150
M300 S3135 P400
M300 S2637 P400
M300 S1046 P150
M300 S1244 P150
M300 S1661 P150
M300 S2093 P150
M300 S2489 P150
M300 S3322 P400
M300 S2489 P400
M300 S1174 P150
M300 S1396 P150
M300 S932 P150
M300 S2349 P150
M300 S2793 P150
M300 S1864 P150
M300 S0 P400
M300 S1864 P120
M300 S0 P60
M300 S1864 P120
M300 S0 P60
M300 S1864 P120
M300 S0 P60
M300 S4186 P900