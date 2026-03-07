.localvar 0 arguments

:[0]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i self.image_index
b [3]

:[2]
pushi.e 1
pop.v.i self.image_index

:[3]
call.i draw_self_border(argc=0)
popz.v
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
add.i.v
cmp.v.v GT
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]