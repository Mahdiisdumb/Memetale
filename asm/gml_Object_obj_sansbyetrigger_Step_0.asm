.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [9]

:[4]
push.v 1576.x
push.v 1023.x
cmp.v.v GT
bf [6]

:[5]
pushi.e -3
pop.v.i 1023.hspeed

:[6]
push.v 1576.x
push.v 1023.x
cmp.v.v LT
bf [8]

:[7]
pushi.e 4
pop.v.i 1023.hspeed

:[8]
push.d 0.25
pop.v.d 1023.image_speed
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i self.conversation

:[9]
pushglb.v global.plot
pushi.e 37
cmp.i.v EQ
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]