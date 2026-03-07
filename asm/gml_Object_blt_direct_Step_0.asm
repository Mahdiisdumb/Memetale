.localvar 0 arguments

:[0]
push.v self.sprite_index
pushi.e 175
cmp.i.v EQ
bf [end]

:[1]
push.v self.direction
pushi.e 10
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v self.image_index

:[end]