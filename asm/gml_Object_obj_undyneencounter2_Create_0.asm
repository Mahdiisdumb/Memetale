.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.cn
pushi.e 0
pop.v.i self.active
pushglb.v global.plot
pushi.e 110
cmp.i.v LT
bf [end]

:[1]
pushi.e 1119
conv.i.v
pushi.e 90
conv.i.v
pushi.e -40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.undyne
pushi.e 1117
conv.i.v
pushi.e 100
conv.i.v
pushi.e 360
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mkid
pushi.e 1526
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.dsprite
pushi.e 1526
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.active

:[end]