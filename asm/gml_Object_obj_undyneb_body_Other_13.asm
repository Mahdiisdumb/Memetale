.localvar 0 arguments

:[0]
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.melter
push.v self.melter
pop.v.v 273.melter
push.v self.melter
conv.v.i
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.image_index
pushi.e 298
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 5
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_alpha

:[2]
popenv [1]
pushi.e 1
pop.v.i self.fadeout

:[end]