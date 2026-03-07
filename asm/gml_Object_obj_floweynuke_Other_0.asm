.localvar 0 arguments

:[0]
push.v self.y
pushi.e 400
cmp.i.v GT
bf [2]

:[1]
push.v self.fader
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1640
conv.i.v
pushbltn.v self.room_height
pushi.e 150
sub.i.v
push.v self.x
pushi.e 75
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.fader

:[end]