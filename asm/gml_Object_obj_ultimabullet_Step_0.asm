.localvar 0 arguments

:[0]
push.v 574.x
push.v self.x
sub.v.v
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.hh
push.v self.hh
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.hh

:[2]
push.v self.hh
pushi.e -1
cmp.i.v LT
bf [4]

:[3]
pushi.e -1
pop.v.i self.hh

:[4]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
push.v self.hh
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
pop.v.i self.hh

:[7]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
push.v self.hh
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
pushi.e 0
pop.v.i self.hh

:[10]
push.v 574.y
push.v self.y
sub.v.v
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.vv
push.v self.vv
pushi.e 1
cmp.i.v GT
bf [12]

:[11]
pushi.e 1
pop.v.i self.vv

:[12]
push.v self.vv
pushi.e -1
cmp.i.v LT
bf [14]

:[13]
pushi.e -1
pop.v.i self.vv

:[14]
push.v self.vv
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
pushi.e 0
pop.v.i self.vv

:[16]
push.v self.hspeed
push.v self.hh
add.v.v
pop.v.v self.hspeed
push.v self.vspeed
push.v self.vv
add.v.v
pop.v.v self.vspeed
push.v self.speed
pushi.e 22
cmp.i.v GT
bf [18]

:[17]
pushi.e 22
pop.v.i self.speed

:[18]
push.v self.direction
pop.v.v self.image_angle
push.v self.huer
pushi.e 20
add.i.v
pop.v.v self.huer
pushi.e 255
conv.i.v
pushi.e 60
conv.i.v
push.v self.huer
call.i make_color_hsv(argc=3)
pop.v.v self.image_blend
push.v self.image_blend
push.v self.trail
conv.v.i
pop.v.v [stacktop]self.image_blend

:[end]