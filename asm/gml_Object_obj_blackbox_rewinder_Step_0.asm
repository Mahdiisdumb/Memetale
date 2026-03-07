.localvar 0 arguments

:[0]
push.v self.rew
pushi.e 1
add.i.v
pop.v.v self.rew
push.v self.rewed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.rew
pushi.e 95
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.rewed
push.v 443.vspeed
pop.v.v self.vsp

:[5]
push.v self.rewed
pushi.e 1
cmp.i.v EQ
bf [8]

:[6]
push.v self.vsp
push.d 0.4
sub.d.v
pop.v.v self.vsp
push.v self.vsp
push.v self.maxrw
neg.v
cmp.v.v GTE
bf [8]

:[7]
push.v self.vsp
pop.v.v 443.vspeed
push.v self.vsp
pop.v.v 446.vspeed

:[8]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]