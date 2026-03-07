.localvar 0 arguments

:[0]
push.v self.ignore_border
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.movement
pushi.e 11
cmp.i.v EQ
bf [6]

:[2]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 16
sub.i.v
pop.v.v self.x
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e 0
pop.v.i self.hspeed

:[4]
push.v self.movement
pushi.e 11
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.jumpstage

:[6]
push.v other.x
push.v self.sprite_width
sub.v.v
pop.v.v self.x
push.v self.confuse
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v 155.runaway
pushi.e 1
cmp.i.v NEQ
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
push.v other.x
pushi.e 8
sub.i.v
pop.v.v self.x

:[end]