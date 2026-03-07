.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.image_index
pushi.e 2
conv.i.v
pushi.e 110
conv.i.v
call.i script_execute(argc=2)
popz.v

:[end]