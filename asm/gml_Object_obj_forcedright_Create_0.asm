.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.t
pushbltn.v self.room
pushi.e 57
cmp.i.v EQ
bf [end]

:[1]
call.i scr_murderlv(argc=0)
pushi.e 3
cmp.i.v GTE
bf [end]

:[2]
pushi.e -5
pushi.e 64
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pushi.e -5
pushi.e 64
pop.v.i [array]global.flag

:[4]
pushglb.v global.plot
pushi.e 48
cmp.i.v LTE
bf [end]

:[5]
pushi.e 49
pop.v.i global.plot

:[end]