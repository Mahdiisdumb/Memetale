.localvar 0 arguments

:[0]
push.v self.clap
pushi.e 3
cmp.i.v LT
bf [5]

:[1]
push.v self.depp
pop.v.v 1576.depth
pushi.e 148
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[2]
pushi.e 148
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
push.v self.heartdraw
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v 1576.y
pushi.e 17
add.i.v
push.v 1576.x
pushi.e 5
add.i.v
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]