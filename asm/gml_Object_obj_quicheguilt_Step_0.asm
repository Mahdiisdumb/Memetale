.localvar 0 arguments

:[0]
pushglb.v global.inbattle
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.guilt
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
pushi.e -5
pushi.e 17
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.check
pushi.e 1
add.i.v
pop.v.v self.check
b [9]

:[8]
pushi.e 0
pop.v.i self.check

:[9]
push.v self.check
pushi.e 80
cmp.i.v GTE
bf [11]

:[10]
push.v self.guilt
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.s "* Somewhere^1, a quiche's worst&  fear becomes reality./%%"@50306
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 2
pop.v.i self.guilt
pushi.e 1
pop.v.i global.interact

:[14]
push.v self.guilt
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[19]
push.v self.guilt
pushi.e 6
cmp.i.v EQ
bf [21]

:[20]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [end]

:[23]
push.s "* A quiche in another timeline./%%"@50307
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 2
pop.v.i self.guilt
pushi.e 1
pop.v.i global.interact

:[end]