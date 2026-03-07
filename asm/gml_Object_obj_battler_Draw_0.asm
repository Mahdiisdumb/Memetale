.localvar 0 arguments

:[0]
push.v self.clap
pushi.e 3
cmp.i.v LT
bf [2]

:[1]
push.v self.depp
pop.v.v 1576.depth

:[2]
push.v self.heartdraw
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
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