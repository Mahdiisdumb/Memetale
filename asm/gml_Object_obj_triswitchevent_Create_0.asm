.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.switches
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.deltaco
pushglb.v global.plot
pushi.e 140
cmp.i.v LT
bf [2]

:[1]
pushi.e 1185
conv.i.v
pushi.e 80
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff
pushi.e 0
push.v self.ff
conv.v.i
pop.v.i [stacktop]self.basic
pushi.e 5
push.v self.ff
conv.v.i
pop.v.i [stacktop]self.image_yscale
b [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 0
pop.v.i self.donkeykongismyfavoritemarvelsuperhero
pushi.e 0
pop.v.i self.won

:[end]