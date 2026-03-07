.localvar 0 arguments

:[0]
push.v self.sprite_index
pushi.e 1185
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.image_index
pushi.e 1187
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[2]
push.v self.sprite_index
pushi.e 1186
cmp.i.v EQ
bf [end]

:[3]
pushi.e 0
pop.v.i self.image_index
pushi.e 1188
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed

:[end]