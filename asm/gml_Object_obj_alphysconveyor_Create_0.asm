.localvar 0 arguments

:[0]
push.d 4.8
pop.v.d self.image_yscale
pushi.e -1
pop.v.i self.col
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [2]

:[1]
pushi.e 1933
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_speed

:[2]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [end]

:[3]
pushi.e 1933
pop.v.i self.sprite_index
pushi.e -1
pop.v.i self.image_speed

:[end]