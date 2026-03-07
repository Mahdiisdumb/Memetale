.localvar 0 arguments

:[0]
pushi.e 10
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.go
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v EQ
bf [3]

:[1]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.plot
pushi.e 120
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.go
b [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
pushi.e 0
pop.v.i self.con

:[end]