.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.on
pushi.e 0
pop.v.i self.myinteract
pushbltn.v self.room
pushi.e 149
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 374
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
pushbltn.v self.room
pushi.e 151
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 375
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
pushbltn.v self.room
pushi.e 208
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 419
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[15]
pushbltn.v self.room
pushi.e 208
cmp.i.v EQ
bf [end]

:[16]
push.i 700000
pop.v.i self.depth

:[end]