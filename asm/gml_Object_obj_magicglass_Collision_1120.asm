.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.ar
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[end]