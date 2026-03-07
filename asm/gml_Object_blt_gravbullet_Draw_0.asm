.localvar 0 arguments

:[0]
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 70
pop.v.i self.sprite_index
pushi.e 599
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 69
pop.v.i self.sprite_index

:[3]
call.i draw_self_border(argc=0)
popz.v

:[end]