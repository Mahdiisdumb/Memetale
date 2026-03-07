.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 91
push.v [array]global.flag
pushi.e 4
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.con
b [3]

:[2]
pushi.e 99
pop.v.i self.con

:[3]
pushglb.v global.plot
pushi.e 112
cmp.i.v GT
bf [6]

:[4]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[5]
b [10]

:[6]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1117
conv.i.v
push.v 1576.y
push.v 1576.x
pushi.e 8
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.mkid
push.v self.mkid
conv.v.i
push.v [stacktop]self.dsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 2.1
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.follow

:[8]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1117
conv.i.v
push.v 1576.y
pushi.e 8
add.i.v
push.v 1576.x
call.i instance_create(argc=3)
pop.v.v self.mkid
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 2.1
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.follow

:[10]
pushi.e 9
pop.v.i self.image_xscale
pushi.e 9
pop.v.i self.image_yscale

:[end]