.localvar 0 arguments

:[0]
push.v self.falling
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.bonk
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.bonk
b [end]

:[3]
push.v 1575.left
conv.v.b
bf [7]

:[4]
push.v self.hspeed
pushi.e -4
cmp.i.v GT
bf [6]

:[5]
pushi.e -4
pop.v.i self.hspeed
b [7]

:[6]
push.v self.hspeed
push.d 0.5
push.v self.size
div.v.d
push.d 0.05
add.d.v
sub.v.v
pop.v.v self.hspeed

:[7]
push.v 1575.up
conv.v.b
bf [11]

:[8]
push.v self.vspeed
pushi.e -3
cmp.i.v GT
bf [10]

:[9]
pushi.e -3
pop.v.i self.vspeed
b [11]

:[10]
push.v self.vspeed
push.d 0.5
push.v self.size
div.v.d
push.d 0.05
add.d.v
sub.v.v
pop.v.v self.vspeed

:[11]
push.v 1575.right
conv.v.b
bf [13]

:[12]
push.v self.hspeed
push.d 0.6
push.v self.size
div.v.d
push.d 0.05
add.d.v
add.v.v
pop.v.v self.hspeed

:[13]
push.v 1575.down
conv.v.b
bf [15]

:[14]
push.v self.vspeed
push.d 0.6
push.v self.size
div.v.d
push.d 0.05
add.d.v
add.v.v
pop.v.v self.vspeed

:[15]
push.v self.speed
push.d 0.4
cmp.d.v LT
bf [16]

:[16]
pushi.e 1
pop.v.i self.t

:[end]