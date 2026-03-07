.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.vic
pushi.e 0
pop.v.i self.fvic
pushi.e 0
pop.v.i self.image_speed
call.i scr_murderlv(argc=0)
pushi.e 4
cmp.i.v GTE
bf [2]

:[1]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushglb.v global.plot
pushi.e 57
cmp.i.v LT
bf [6]

:[5]
pushi.e 57
pop.v.i global.plot

:[6]
pushbltn.v self.room
pushi.e 63
cmp.i.v EQ
bf [8]

:[7]
pushglb.v global.plot
pushi.e 63
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
pushi.e 63
pop.v.i global.plot

:[end]