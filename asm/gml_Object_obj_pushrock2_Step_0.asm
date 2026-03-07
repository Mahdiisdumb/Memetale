.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
pushi.e -5
pushi.e 32
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 280
pop.v.i self.x

:[end]