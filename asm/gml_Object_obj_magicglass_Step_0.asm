.localvar 0 arguments

:[0]
push.v self.ar
pushi.e 1
sub.i.v
pop.v.v self.ar
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.ar
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[end]