.localvar 0 arguments

:[0]
pushi.e 6
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.friction
pushi.e -2
pop.v.i self.vspeed
push.d 0.3
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
pushi.e 0
pop.v.i self.stage
pushi.e -1
pop.v.i self.image_xscale
push.v self.x
push.v self.sprite_width
sub.v.v
pop.v.v self.x
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.i 43948
pop.v.i self.kid
pushi.e 0
pop.v.i self.stagetimer

:[end]