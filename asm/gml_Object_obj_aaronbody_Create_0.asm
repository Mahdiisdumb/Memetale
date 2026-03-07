.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.bull
push.d 0.1
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.siny
push.v self.y
pop.v.v self.yo
pushi.e 292
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.alphaup
b [3]

:[2]
pushi.e 0
pop.v.i self.alphaup

:[3]
pushi.e 0
pop.v.i self.shake
pushi.e 0
pop.v.i self.shack

:[end]