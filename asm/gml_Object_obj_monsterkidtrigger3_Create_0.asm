.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 113
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e 0
pop.v.i self.con
pushi.e 1117
conv.i.v
push.v self.y
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mkid
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 10
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.numero
pushi.e -5
pushi.e 90
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.numero

:[4]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [end]

:[5]
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]