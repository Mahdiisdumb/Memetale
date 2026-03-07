.localvar 0 arguments

:[0]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.angle
push.v self.angle
pop.v.v self.image_angle
push.v self.speed
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.image_xscale
push.v self.speed
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.image_yscale
push.v self.blue
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e -1
pushi.e 7
dup.i 1
push.v [array]self.alarm
push.d 0.5
add.d.v
pop.i.v [array]self.alarm
push.v self.speed
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.image_xscale
push.v self.speed
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.image_yscale

:[2]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
pushi.e 3
pop.v.i global.mnfight

:[4]
pushi.e -1
pushi.e 7
push.v [array]self.alarm
pushi.e 10
cmp.i.v LT
bf [end]

:[5]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[end]