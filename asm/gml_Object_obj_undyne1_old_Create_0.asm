.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 105
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [3]

:[2]
pushi.e 0
pop.v.i self.con
pushi.e 999
pop.v.i self.image_yscale
pushi.e 1117
conv.i.v
pushi.e 100
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mkid
pushi.e 1119
conv.i.v
pushi.e 100
conv.i.v
pushi.e 500
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.undyne
pushi.e 1545
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1487
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[3]
pushi.e 0
pop.v.i self.look
pushi.e 0
pop.v.i self.spinagain

:[end]