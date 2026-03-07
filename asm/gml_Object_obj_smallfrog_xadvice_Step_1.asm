.localvar 0 arguments
.localvar 1 skipbutton 6198
.localvar 2 skipped 6199

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
pushglb.v global.kills
pushi.e 16
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushbltn.v self.room
pushi.e 29
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.kills
pushi.e 10
cmp.i.v GT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
pushbltn.v self.room
pushi.e 12
cmp.i.v EQ
bf [9]

:[8]
pushglb.v global.kills
pushi.e 2
cmp.i.v GT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[13]
push.v self.myinteract
pushi.e 0
cmp.i.v NEQ
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pop.v.v local.skipbutton
pushloc.v local.skipbutton
conv.v.b
bf [18]

:[17]
push.v self.last_skipbutton
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
pop.v.b local.skipped
pushloc.v local.skipbutton
pop.v.v self.last_skipbutton
pushloc.v local.skipped
conv.v.b
bf [21]

:[20]
push.v 784.stringno
pushi.e 1
cmp.i.v GT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1
pop.v.i self.xed

:[24]
push.v self.xed
pushi.e 0
cmp.i.v GT
bf [end]

:[25]
push.s "obj_smallfrog_xadvice_150"@25735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 784
pushi.e 4
pop.v.v [array]self.mystring
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_smallfrog_xadvice_153"@25737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 784
pushi.e 4
pop.v.v [array]self.mystring

:[27]
pushi.e 0
pop.v.i self.xed

:[end]