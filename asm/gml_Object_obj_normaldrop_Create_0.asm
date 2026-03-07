.localvar 0 arguments

:[0]
pushi.e 2
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
push.d 0.2
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
push.v self.y
pushi.e 245
add.i.v
pop.v.v self.y
call.i scr_depth(argc=0)
popz.v
push.v self.y
pushi.e 245
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.dont
push.v self.ystart
pushi.e 240
add.i.v
pop.v.v self.goal
pushbltn.v self.room
pushi.e 107
cmp.i.v EQ
bf [end]

:[1]
push.v self.ystart
pushi.e 480
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.goal

:[end]