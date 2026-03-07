.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 5
cmp.i.v NEQ
bf [2]

:[1]
push.v self.rate_time
pushi.e 1
add.i.v
pop.v.v self.rate_time

:[2]
push.v self.falling
pushi.e 0
cmp.i.v EQ
bf [11]

:[3]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.y2
push.v self.x2
push.v self.y1
push.v self.x1
call.i collision_rectangle(argc=7)
conv.v.b
bf [11]

:[4]
pushi.e 1
pop.v.i self.falling
pushi.e 135
conv.i.v
call.i snd_play(argc=1)
popz.v
push.d 0.5
pop.v.d 1576.image_alpha
pushi.e 780
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 784
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 775
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 1
pop.v.i global.interact
pushi.e 6
pop.v.i 1576.vspeed
pushi.e 1
pop.v.i global.phasing

:[11]
push.v self.falling
pushi.e 1
cmp.i.v EQ
bf [end]

:[12]
push.v 1576.y
push.v self.triggery
cmp.v.v GT
bf [end]

:[13]
push.v self.fell
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1131
pop.v.i 1576.dsprite
pushi.e 1132
pop.v.i 1576.usprite
pushi.e 1133
pop.v.i 1576.rsprite
pushi.e 1134
pop.v.i 1576.lsprite
pushi.e 1
pop.v.i self.fell
b [16]

:[15]
pushi.e 1131
pop.v.i 1576.dsprite
pushi.e 1132
pop.v.i 1576.usprite
pushi.e 1133
pop.v.i 1576.rsprite
pushi.e 1134
pop.v.i 1576.lsprite
pushi.e 0
pop.v.i self.fell

:[16]
pushi.e 1
pop.v.i 1576.image_alpha
push.v 1576.x
call.i round(argc=1)
pop.v.v 1576.x
push.v 1576.y
call.i round(argc=1)
pop.v.v 1576.y
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pop.v.i self.falling

:[end]