.localvar 0 arguments

:[0]
push.d 0.1
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_alpha
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [end]

:[1]
pushi.e 869
pop.v.i self.sprite_index

:[end]