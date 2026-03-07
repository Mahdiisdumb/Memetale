.localvar 0 arguments

:[0]
pushi.e 669
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i instance_create(argc=3)
pop.v.v self.my
push.v self.dmg
pushi.e 2
sub.i.v
push.v self.my
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 7
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.offset
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 5
pop.v.i self.speed
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]