.localvar 0 arguments

:[0]
pushi.e 322
conv.i.v
pushi.e 50
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 70
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.dmg
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.parent
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.parent
push.v self.green
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.green

:[2]
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
push.v self.gen
conv.v.i
pushenv [5]

:[4]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
popenv [4]

:[6]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 10
add.i.v
pop.i.v [array]self.alarm

:[end]