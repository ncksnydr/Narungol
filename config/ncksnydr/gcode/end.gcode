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

; CHARGE!
M300 P221 S392
M300 P221 S523
M300 P224 S659
M300 P500 S784
M300 P167 S659
M300 P2999 S784