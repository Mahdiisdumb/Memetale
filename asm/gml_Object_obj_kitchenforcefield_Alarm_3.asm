.localvar 0 arguments

:[0]
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.solid1
push.v self.image_yscale
push.v self.solid1
conv.v.i
pop.v.v [stacktop]self.image_yscale
push.v self.image_xscale
push.v self.solid1
conv.v.i
pop.v.v [stacktop]self.image_xscale
pushi.e 1
pop.v.i self.sold

:[end]