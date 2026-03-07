.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 1
pushi.e -1
push.v self.bltx
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
pushi.e -1
push.v self.bltx
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e -2
pop.v.i 680.vspeed
pushi.e 0
pop.v.i 680.hspeed
push.d -0.3
pop.v.d 680.friction
pushglb.v global.hardmode
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.d -0.5
pop.v.d 680.friction

:[2]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
pushi.e -1
pop.v.i 680.vspeed
push.d -0.1
pop.v.d 680.friction
pushi.e 3
pop.v.i self.rr
pushi.e 1
pop.v.i self.siner

:[end]