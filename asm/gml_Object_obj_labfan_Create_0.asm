.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
pushi.e -5
pushi.e 490
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2234
pop.v.i self.sprite_index

:[end]