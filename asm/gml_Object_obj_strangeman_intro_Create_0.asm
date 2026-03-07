.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.1
pop.v.d self.image_speed
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pushi.e 15
add.i.v
pop.v.v self.y
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
pushi.e 19
add.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.con
pushi.e -1
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.shake
pushi.e 0
pop.v.i self.nowx
pushi.e 0
pop.v.i self.nowy

:[end]