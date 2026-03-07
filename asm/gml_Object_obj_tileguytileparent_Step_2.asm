.localvar 0 arguments

:[0]
push.v self.grey
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.d 0.25
pop.v.d self.image_speed
push.v self.image_index
push.d 2.5
cmp.d.v GTE
bf [end]

:[2]
pushi.e 3
pop.v.i self.image_index

:[end]