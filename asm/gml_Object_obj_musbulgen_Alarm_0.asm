.localvar 0 arguments

:[0]
pushi.e 666
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.longnote
pushi.e 1
add.i.v
pop.v.v self.longnote
push.v self.longnote
pushi.e 12
cmp.i.v EQ
bf [4]

:[1]
pushi.e 260
pushenv [3]

:[2]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.longnote
call.i caster_play(argc=3)
popz.v

:[3]
popenv [2]

:[4]
push.v self.longnote
pushi.e 24
cmp.i.v EQ
bf [end]

:[5]
pushi.e 260
pushenv [7]

:[6]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.longnote
call.i caster_play(argc=3)
popz.v

:[7]
popenv [6]
pushi.e 0
pop.v.i self.longnote

:[end]