.localvar 0 arguments

:[0]
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.i 16776960
conv.i.v
push.i 4235519
conv.i.v
call.i choose(argc=2)
pop.v.v self.image_blend

:[end]