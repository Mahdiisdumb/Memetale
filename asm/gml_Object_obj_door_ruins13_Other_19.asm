.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i global.interact
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushbltn.v self.room
pushi.e 38
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v self.room
pushi.e 32
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [6]

:[4]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[6]
push.v self.touched
pushi.e 0
cmp.i.v EQ
bf [end]

:[7]
pushi.e 14
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.touched

:[end]