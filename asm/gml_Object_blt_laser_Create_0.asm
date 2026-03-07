.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
call.i action_set_relative(argc=1)
popz.v
pushi.e -5
pushi.e 0
push.v [array]global.bulletvariable
pop.v.v self.mydirection
pushi.e -5
pushi.e 1
push.v [array]global.bulletvariable
pop.v.v self.mydirectionalspeed
pushi.e -5
pushi.e 2
push.v [array]global.bulletvariable
pop.v.v self.twdsX
pushi.e -5
pushi.e 3
push.v [array]global.bulletvariable
pop.v.v self.twdsY
pushi.e -5
pushi.e 4
push.v [array]global.bulletvariable
pop.v.v self.owngravity
pushi.e -5
pushi.e 5
push.v [array]global.bulletvariable
pop.v.v self.owngravity_direction
pushi.e -5
pushi.e 6
push.v [array]global.bulletvariable
pop.v.v self.friction
pushi.e -5
pushi.e 7
push.v [array]global.bulletvariable
pop.v.v self.twdsXspeed
pushi.e -5
pushi.e 8
push.v [array]global.bulletvariable
pop.v.v self.twdsYspeed
pushi.e 0
pop.v.i self.gravityincrement
push.v self.mydirectionalspeed
push.v self.mydirection
call.i action_set_motion(argc=2)
popz.v
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