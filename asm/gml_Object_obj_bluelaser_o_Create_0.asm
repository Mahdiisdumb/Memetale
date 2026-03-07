.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.ex
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.blue
pushi.e 0
pop.v.i self.rememberhspeed
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushbltn.v self.room
pushi.e 166
cmp.i.v EQ
bf [5]

:[1]
pushi.e -5
pushi.e 372
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 2
pop.v.i self.active

:[3]
pushglb.v global.plot
pushi.e 160
cmp.i.v GT
bf [5]

:[4]
pushi.e 2
pop.v.i self.active

:[5]
pushglb.v global.plot
pushi.e 184
cmp.i.v GT
bf [7]

:[6]
pushi.e 2
pop.v.i self.active

:[7]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2
pop.v.i self.active

:[9]
pushi.e 0
pop.v.i self.activebuffer

:[end]