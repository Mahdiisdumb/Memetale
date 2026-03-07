.localvar 0 arguments
.localvar 1 i 870

:[0]
pushi.e 2
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [end]

:[2]
pushi.e 0
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.i [array]global.control_state
pushi.e 0
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.i [array]global.control_pressed
pushi.e 0
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.i [array]global.control_new_state
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [1]

:[end]