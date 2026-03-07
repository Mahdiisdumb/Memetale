.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.shakeboy
push.i 65280
pop.v.i self.image_blend
pushi.e 2325
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.type

:[end]