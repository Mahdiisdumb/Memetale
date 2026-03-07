.localvar 0 arguments

:[0]
pushi.e 382
conv.i.v
call.i instance_number(argc=1)
pushi.e 10
cmp.i.v LT
bf [3]

:[1]
pushi.e 382
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 10
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 20
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bl
push.v self.bl
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.dmg
push.v self.bl
conv.v.i
pop.v.v [stacktop]self.dmg

:[3]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]