.localvar 0 arguments

:[0]
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.sprite_index
pushi.e 171
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 171
pop.v.i self.sprite_index

:[5]
push.v self.cl
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 8
conv.i.v
pushi.e 8
conv.i.v
call.i draw_self_border(argc=2)
popz.v
b [end]

:[7]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[end]