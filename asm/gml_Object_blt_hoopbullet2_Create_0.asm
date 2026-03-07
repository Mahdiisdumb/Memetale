.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.r
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.b
push.v self.r
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.hspeed
b [3]

:[2]
pushi.e -1
pop.v.i self.hspeed

:[3]
push.v self.b
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.vspeed
b [6]

:[5]
pushi.e -1
pop.v.i self.vspeed

:[6]
push.v self.x
pushi.e 5
add.i.v
pop.v.v self.x
push.d -0.042
pop.v.d self.friction
pushi.e 1
pop.v.i self.intangible
pushi.e 0
pop.v.i self.image_alpha
pushi.e 622
conv.i.v
call.i instance_number(argc=1)
pushi.e 5
cmp.i.v GT
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]