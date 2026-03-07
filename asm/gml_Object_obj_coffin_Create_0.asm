.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1986
pop.v.i self.sprite_index

:[end]