.localvar 0 arguments

:[0]
pushi.e 599
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 65
pop.v.i self.sprite_index

:[2]
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.image_speed
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.image_index
pushi.e 270
pop.v.i self.graivty_direction
push.d 0.2
pop.v.d self.gravity
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.r
push.v self.r
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed

:[4]
push.v self.r
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e -2
push.d 0.2
conv.d.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed

:[6]
push.v self.y
pushi.e 8
sub.i.v
pop.v.v self.y
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
cmp.v.v LT
bf [8]

:[7]
push.v self.x
pushi.e 20
add.i.v
pop.v.v self.x

:[8]
pushi.e 0
pop.v.i self.green

:[end]