.localvar 0 arguments

:[0]
push.v self.ignore_border
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v other.y
push.v self.sprite_height
sub.v.v
pop.v.v self.y
push.v self.movement
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.jumpstage
pushi.e 0
pop.v.i self.vspeed

:[3]
push.v self.confuse
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v 155.runaway
pushi.e 1
cmp.i.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
push.v other.y
pushi.e 8
sub.i.v
pop.v.v self.y

:[end]