.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i action_set_relative(argc=1)
popz.v
pushglb.v global.bulletappearance
pop.v.v self.sprite_index
pushi.e -5
pushi.e 0
push.v [array]global.bulletvariable
pop.v.v self.myspeed
pushi.e -5
pushi.e 6
push.v [array]global.bulletvariable
pop.v.v self.mydirection
pushi.e -5
pushi.e 7
push.v [array]global.bulletvariable
pop.v.v self.mydirectionalspeed
pushi.e -5
pushi.e 1
push.v [array]global.bulletvariable
pop.v.v self.myrandomspeed
pushi.e -5
pushi.e 2
push.v [array]global.bulletvariable
pop.v.v self.mydirectionrandom
pushi.e -5
pushi.e 3
push.v [array]global.bulletvariable
pop.v.v self.gravity
pushi.e -5
pushi.e 4
push.v [array]global.bulletvariable
pop.v.v self.gravity_direction
pushi.e -5
pushi.e 5
push.v [array]global.bulletvariable
pop.v.v self.friction
pushi.e 684
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.dmg
push.v self.myspeed
push.v self.myrandomspeed
call.i random(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.myrandomspeed
sub.v.v
push.v 744.y
push.v 744.x
call.i action_move_point(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i action_set_relative(argc=1)
popz.v
push.v self.mydirectionalspeed
push.v self.myrandomspeed
call.i random(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.myrandomspeed
sub.v.v
push.v self.mydirection
call.i action_set_motion(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i action_set_relative(argc=1)
popz.v
push.v self.direction
push.v self.mydirectionrandom
call.i random(argc=1)
pushi.e 2
mul.i.v
push.v self.mydirectionrandom
sub.v.v
add.v.v
pop.v.v self.direction
push.v self.sprite_index
pushi.e 175
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.image_speed

:[2]
pushi.e 0
conv.i.v
call.i action_set_relative(argc=1)
popz.v

:[end]