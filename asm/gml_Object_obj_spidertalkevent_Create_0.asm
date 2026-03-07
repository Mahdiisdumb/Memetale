.localvar 0 arguments

:[0]
pushi.e 6
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.active
pushi.e 205
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
pushi.e -5
pushi.e 396
push.v [array]global.flag
pushi.e 5
cmp.i.v LT
bf [2]

:[1]
pushi.e -5
pushi.e 11
push.v [array]global.tempvalue
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 5
pushi.e -5
pushi.e 396
pop.v.i [array]global.flag

:[5]
pushi.e -5
pushi.e 396
push.v [array]global.flag
pop.v.v self.con
push.v self.x
pushi.e -5
pushi.e 396
push.v [array]global.flag
pushi.e 90
mul.i.v
add.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.pausewait
pushi.e 0
pop.v.i self.pausewaittime
pushglb.v global.plot
pushi.e 164
cmp.i.v GT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[7]
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [end]

:[8]
pushi.e 1
pop.v.i self.murder

:[end]