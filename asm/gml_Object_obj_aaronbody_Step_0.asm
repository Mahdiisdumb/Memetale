.localvar 0 arguments

:[0]
push.v self.bull
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.siny
pushi.e 1
add.i.v
pop.v.v self.siny
push.v self.yo
push.v self.siny
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 9
mul.i.v
add.v.v
pop.v.v self.y
push.v self.yo
push.v self.vspeed
add.v.v
pop.v.v self.yo
push.v self.alphaup
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[6]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [end]

:[7]
push.v self.shack
pushi.e 1
add.i.v
pop.v.v self.shack
push.v self.shack
pushi.e 2
cmp.i.v EQ
bf [end]

:[8]
push.v self.xstart
push.v self.shake
call.i random(argc=1)
pushi.e 2
mul.i.v
push.v self.shake
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x
push.v self.ystart
push.v self.shake
call.i random(argc=1)
pushi.e 2
mul.i.v
push.v self.shake
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.shack

:[end]