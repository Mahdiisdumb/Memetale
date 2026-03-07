.localvar 0 arguments

:[0]
push.v self.factor
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=4)
pop.v.v self.tt
push.v self.tt
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 462
conv.i.v
pushi.e 146
conv.i.v
pushi.e 104
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.hand2
pushi.e 1
push.v self.hand2
conv.v.i
pop.v.i [stacktop]self.type

:[2]
push.v self.tt
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 462
conv.i.v
pushi.e 382
conv.i.v
pushi.e 440
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.hand1
pushi.e 2
push.v self.hand1
conv.v.i
pop.v.i [stacktop]self.type

:[4]
push.v self.tt
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 462
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 90
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.hand4
pushi.e 3
push.v self.hand4
conv.v.i
pop.v.i [stacktop]self.type

:[6]
push.v self.tt
pushi.e 4
cmp.i.v EQ
bf [end]

:[7]
pushi.e 462
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 10
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.hand3
pushi.e 4
push.v self.hand3
conv.v.i
pop.v.i [stacktop]self.type

:[end]