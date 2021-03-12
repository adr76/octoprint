; Bltouch check Z height
M117 run {{ script.name }}

G28
G1 Z20 F1200        ; 200mm/s
G1 X140 Y90 F6000   ; Go center 
G30
M117 {{ last_position.z }}