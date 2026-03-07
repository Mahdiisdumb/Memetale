.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
pushi.e 85
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.turns
pushi.e 1
sub.i.v
pop.v.v self.turns

:[3]
pushi.e 73
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [5]

:[4]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns

:[5]
push.v self.trcon
pushi.e 3
cmp.i.v GTE
bf [end]

:[6]
pushi.e 558
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
push.v 558.depth
pushi.e 2
add.i.v
pop.v.v self.depth

:[8]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 800
conv.i.v
pushi.e 800
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]