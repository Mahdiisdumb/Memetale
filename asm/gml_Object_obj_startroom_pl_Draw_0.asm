.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "INSTRUCTIONS ROOM.# #YOU WILL ENCOUNTER A SERIES OF ATTACK.# #PRESS [Z] TO FIRE THE WEAPON.# #YOU CAN TEST WEAPON HERE.#SPECIAL RULE:#BLUE LASERS WILL NOT HURT YOU IF YOU ARE STANDING STILL.##PRESS [SPACEBAR] TO CONTINUE."@48963
conv.s.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]