.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.edge
pushi.e 2470
pop.v.i self.image
pushi.e 800
pop.v.i self.w0
pushi.e 800
pop.v.i self.h0
pushi.e -2
pop.v.i self.rotspeed
pushi.e 40
pop.v.i self.part
pushi.e 0
pop.v.i self.col
pushi.e 1
pop.v.i self.vk
pushi.e 0
pop.v.i self.image_alpha
pushi.e 660
pop.v.i self.flashtime
pushi.e 0
pop.v.i self.ftimer
pushi.e 0
pop.v.i self.falpha
pushi.e -5
pushi.e 502
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 9999
pop.v.i self.ftimer
push.d 0.5
pop.v.d self.image_alpha

:[end]