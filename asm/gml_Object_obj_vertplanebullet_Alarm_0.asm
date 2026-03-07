.localvar 0 arguments

:[0]
push.v self.y
push.v 760.y
pushi.e 10
sub.i.v
cmp.v.v GT
bf [8]

:[1]
push.v self.off
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.off
b [4]

:[3]
pushi.e 0
pop.v.i self.off

:[4]
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.off

:[6]
pushi.e 320
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.bl
push.v self.bl
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
push.v self.dmg
push.v self.bl
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.off
push.v self.bl
conv.v.i
pop.v.v [stacktop]self.off

:[8]
pushi.e 6
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[10]
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [end]

:[11]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
push.d 1.5
mul.d.v
pop.i.v [array]self.alarm

:[end]