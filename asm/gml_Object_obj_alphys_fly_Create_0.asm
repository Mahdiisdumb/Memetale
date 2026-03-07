.localvar 0 arguments

:[0]
pushi.e -24
pop.v.i self.vspeed
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.y
pushi.e -1
pop.v.i self.image_yscale

:[end]