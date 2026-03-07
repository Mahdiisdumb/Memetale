.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.turns
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns

:[3]
pushi.e 65
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[4]
push.v self.turns
pushi.e 1
sub.i.v
pop.v.v self.turns

:[end]