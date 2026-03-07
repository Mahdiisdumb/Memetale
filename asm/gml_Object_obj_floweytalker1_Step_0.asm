.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.plot
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 770
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
push.v 770.image_index
pop.v.v self.image_index

:[5]
push.v self.sprite_index
pushi.e 1188
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_index
pushi.e 5
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]