.localvar 0 arguments

:[0]
push.v self.sl
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 1576.y
push.v 1576.x
push.v 1576.image_index
pushi.e 1897
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[2]
pushi.e 0
pop.v.i self.sl

:[end]