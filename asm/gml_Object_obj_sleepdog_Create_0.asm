.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pop.v.v self.y
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x
push.d 0.1
pop.v.d self.image_speed
pushi.e 5
pop.v.i self.dmg
pushi.e 0
pop.v.i self.myself
pushi.e 0
pop.v.i self.hmove

:[end]