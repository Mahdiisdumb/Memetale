.localvar 0 arguments

:[0]
push.v self.ender
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [end]

:[2]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha

:[end]