.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.dt
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1386
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[2]
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1386
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index

:[4]
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [end]

:[5]
pushi.e 1386
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_index

:[end]