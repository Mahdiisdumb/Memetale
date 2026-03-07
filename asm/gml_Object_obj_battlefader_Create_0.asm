.localvar 0 arguments

:[0]
pushi.e 640
pop.v.i self.image_xscale
pushi.e 320
pop.v.i self.image_yscale
pushi.e 744
pop.v.i self.heart
pushi.e 749
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 749
pop.v.i self.heart

:[2]
pushi.e -1001
push.v self.heart
conv.v.i
pop.v.i [stacktop]self.depth

:[end]