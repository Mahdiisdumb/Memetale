.localvar 0 arguments

:[0]
push.v self.ignore_border
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.movement
pushi.e 2
cmp.i.v EQ
bf [4]

:[2]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.vspeed

:[4]
push.v self.movement
pushi.e 12
cmp.i.v EQ
bf [9]

:[5]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
pop.v.v self.y
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
pop.v.i self.vspeed

:[7]
push.v self.movement
pushi.e 12
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.jumpstage

:[9]
push.v other.y
push.v other.sprite_height
add.v.v
pop.v.v self.y
push.v self.confuse
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v 155.runaway
pushi.e 1
cmp.i.v NEQ
b [12]

:[11]
push.e 0

:[12]
bf [end]

:[13]
push.v other.y
push.v other.sprite_height
add.v.v
pushi.e 8
add.i.v
pop.v.v self.y

:[end]