.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 118
cmp.i.v LT
bf [2]

:[1]
push.i 999900
conv.i.v
call.i tile_layer_hide(argc=1)
popz.v

:[2]
pushglb.v global.plot
pushi.e 117
cmp.i.v GT
bf [end]

:[3]
push.i 999900
conv.i.v
call.i tile_layer_show(argc=1)
popz.v
pushi.e 6
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 5
add.i.v
call.i instance_position(argc=3)
pop.v.v self.d
push.v self.d
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
call.i instance_destroy(argc=0)
popz.v

:[end]