.localvar 0 arguments

:[0]
push.v self.sl
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
push.v self.doom
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v 1576.y
push.v 1576.x
push.v 1576.image_index
pushi.e 1897
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[3]
push.v self.doom
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v 1576.y
push.v 1576.x
push.v 1576.image_index
pushi.e 1898
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[5]
push.v self.doom
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v 1576.y
push.v 1576.x
push.v 1576.image_index
pushi.e 1899
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[7]
pushi.e 0
pop.v.i self.sl

:[end]