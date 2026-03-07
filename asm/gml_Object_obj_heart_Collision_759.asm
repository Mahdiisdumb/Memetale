.localvar 0 arguments

:[0]
push.v self.ignore_border
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.movement
pushi.e 13
cmp.i.v EQ
bf [5]

:[2]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 4
add.i.v
pop.v.v self.x
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.hspeed

:[4]
pushi.e 1
pop.v.i self.jumpstage

:[5]
push.v 155.runaway
pushi.e 1
cmp.i.v NEQ
bf [7]

:[6]
push.v other.x
push.v other.sprite_width
add.v.v
pop.v.v self.x

:[7]
push.v self.confuse
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v 155.runaway
pushi.e 1
cmp.i.v NEQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
push.v other.x
push.v other.sprite_width
add.v.v
pushi.e 8
add.i.v
pop.v.v self.x

:[end]