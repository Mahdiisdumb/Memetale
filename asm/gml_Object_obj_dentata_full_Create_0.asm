.localvar 0 arguments

:[0]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 1
pop.v.i self.size
pushi.e 0
pop.v.i self.halfsies
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
push.v self.image_xscale
mul.v.v
pop.v.v self.ssx
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
pop.v.v self.ssy
push.v self.y
pushi.e 130
cmp.i.v LTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.halfsies

:[2]
push.v self.y
pushi.e 190
cmp.i.v GTE
bf [4]

:[3]
pushi.e 2
pop.v.i self.halfsies

:[4]
pushi.e 0
pop.v.i self.maxer
push.v self.maxer
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.02
mul.d.v
add.v.v
pop.v.v self.size

:[end]