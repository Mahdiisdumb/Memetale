.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.threshold
pushi.e 17
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 492
push.v [array]global.flag
pushi.e 12
cmp.i.v GTE
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 17
pushi.e -5
pushi.e 450
pop.v.i [array]global.flag

:[7]
pushi.e -5
pushi.e 450
push.v [array]global.flag
push.v self.threshold
cmp.v.v GTE
bt [9]

:[8]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 12
cmp.i.v GTE
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[12]
push.v self.threshold
pushi.e -5
pushi.e 450
pop.v.v [array]global.flag
pushi.e 3
pop.v.i global.border
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 146
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]