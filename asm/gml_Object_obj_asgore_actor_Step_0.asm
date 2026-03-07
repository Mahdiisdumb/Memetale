.localvar 0 arguments

:[0]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_depth(argc=0)
popz.v

:[2]
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e 772
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[4]
push.v 772.image_index
pop.v.v self.image_index

:[end]