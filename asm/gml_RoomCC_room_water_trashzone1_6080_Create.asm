.localvar 0 arguments

:[0]
push.v self.x
push.v self.sprite_width
add.v.v
pop.v.v self.x
pushi.e -1
pop.v.i self.image_xscale

:[end]