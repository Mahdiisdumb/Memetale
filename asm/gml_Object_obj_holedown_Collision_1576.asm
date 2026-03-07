.localvar 0 arguments

:[0]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 4
pop.v.i global.interact
pushi.e 1
pop.v.i global.phasing
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.ns
pushi.e 923
conv.i.v
push.v other.y
pushi.e 20
add.i.v
push.v other.x
call.i instance_create(argc=3)
popz.v
pushi.e 923
conv.i.v
call.i instance_number(argc=1)
pushi.e 10
cmp.i.v GT
bf [6]

:[5]
pushbltn.v self.room
pushi.e 16
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [11]

:[8]
pushi.e 0
pop.v.i self.ns
pushi.e 3
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 923
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.destroyme

:[10]
popenv [9]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.phasing
call.i instance_destroy(argc=0)
popz.v

:[11]
pushi.e 923
conv.i.v
call.i instance_number(argc=1)
pushi.e 1000
cmp.i.v GTE
bf [15]

:[12]
pushi.e 923
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.destroyme

:[14]
popenv [13]
pushi.e 923
conv.i.v
push.v other.y
pushi.e 20
add.i.v
push.v other.x
call.i instance_create(argc=3)
popz.v

:[15]
push.v self.ns
pushi.e 1
cmp.i.v EQ
bf [end]

:[16]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]