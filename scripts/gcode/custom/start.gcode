; Bltouch check Z height
;M117 run {{ script.name }}
;M117 {{ last_position.x }}
;G28
;G1 Z20 F1200        ; 200mm/s
;G1 X140 Y90 F6000   ; Go center 
;G30

M321 	; Deactivate autolevel temporarily
M323 S0 ; Disable correction
G28
G1 Z10 F1200        ; 20mm/s
G1 X140 Y90 F6000   ; Go center 
M114
G30 ; Bltouch check Z height
G4 S10

