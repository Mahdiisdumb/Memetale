.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.darkify
pushi.e 1365
conv.i.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.pseudodarker
pushi.e 1
push.v self.pseudodarker
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.pseudodarker
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1084
push.v self.pseudodarker
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.pseudodarker
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.pseudodarker
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 600
push.v self.pseudodarker
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 600
push.v self.pseudodarker
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[end]