.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
pushi.e -5
pushi.e 35
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.xstart
pushi.e 60
add.i.v
pop.v.v self.x

:[end]