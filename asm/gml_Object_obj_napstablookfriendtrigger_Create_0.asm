.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
pushi.e 5
pushi.e -5
pushi.e 389
pop.v.i [array]global.flag

:[2]
pushglb.v global.plot
pushi.e 116
cmp.i.v GT
bf [5]

:[3]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[4]
b [6]

:[5]
pushi.e 1057
conv.i.v
pushi.e 60
conv.i.v
pushi.e 300
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.nap
pushi.e 1218
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.nap
conv.v.i
pop.v.i [stacktop]self.float

:[6]
pushi.e 5
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.tc

:[end]