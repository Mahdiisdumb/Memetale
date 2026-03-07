.localvar 0 arguments

:[0]
push.v self.sprite_index
pop.v.v self.mysprite
pushi.e 0
pop.v.i self.simage
pushi.e 0
pop.v.i self.death
pushi.e 0
pop.v.i self.image_speed
pushi.e 12
conv.i.v
call.i random(argc=1)
pop.v.v self.image_index

:[end]