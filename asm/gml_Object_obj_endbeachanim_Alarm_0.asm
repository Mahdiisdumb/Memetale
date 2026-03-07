.localvar 0 arguments

:[0]
pushi.e 1703
conv.i.v
push.v self.y
pushi.e 13
add.i.v
push.v self.x
pushi.e 18
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.crack
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.crack

:[2]
push.v self.ctime
pushi.e 1
add.i.v
pop.v.v self.ctime
push.v self.ctime
pushi.e 5
cmp.i.v GT
bf [4]

:[3]
pushi.e 2
pop.v.i self.crack

:[4]
push.v self.ctime
pushi.e 10
cmp.i.v GT
bf [end]

:[5]
pushi.e 3
pop.v.i self.crack

:[end]