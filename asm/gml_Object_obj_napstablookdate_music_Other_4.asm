.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.check
pushbltn.v self.room
pushi.e 120
cmp.i.v EQ
bf [4]

:[1]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -5
pushi.e 94
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[3]
pushi.e 1
pop.v.i self.check

:[4]
pushbltn.v self.room
pushi.e 119
cmp.i.v EQ
bt [8]

:[5]
pushbltn.v self.room
pushi.e 272
cmp.i.v EQ
bt [8]

:[6]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bt [8]

:[7]
pushbltn.v self.room
pushi.e 306
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i self.check

:[11]
push.v self.check
pushi.e 0
cmp.i.v EQ
bf [end]

:[12]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]