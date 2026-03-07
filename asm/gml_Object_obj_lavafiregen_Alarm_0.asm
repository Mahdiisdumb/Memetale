.localvar 0 arguments

:[0]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 334
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.g
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.dmg
push.v self.g
conv.v.i
pop.v.v [stacktop]self.dmg

:[2]
pushi.e 334
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.g
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.dmg
push.v self.g
conv.v.i
pop.v.v [stacktop]self.dmg

:[4]
push.v self.lavatime
pushi.e 1
add.i.v
pop.v.v self.lavatime
push.v self.lavatime
pushi.e 2
cmp.i.v EQ
bf [7]

:[5]
pushi.e 333
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 60
add.i.v
pushi.e 120
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.g
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v self.dmg
push.v self.g
conv.v.i
pop.v.v [stacktop]self.dmg

:[7]
push.v self.lavatime
pushi.e 4
cmp.i.v EQ
bf [end]

:[8]
pushi.e 333
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 60
add.i.v
pushi.e 120
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.g
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
push.v self.dmg
push.v self.g
conv.v.i
pop.v.v [stacktop]self.dmg

:[10]
pushi.e 0
pop.v.i self.lavatime

:[end]