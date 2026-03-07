.localvar 0 arguments

:[0]
push.v self.image_xscale
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
push.v self.image_xscale
push.v self.xspeed
add.v.v
pop.v.v self.image_xscale

:[2]
push.v self.shimmy
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 5
pop.v.i self.depth
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.5
mul.d.v
add.v.v
pop.v.v self.y

:[end]