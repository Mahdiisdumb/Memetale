.localvar 0 arguments

:[0]
pushi.e 1612
conv.i.v
pushi.e 180
conv.i.v
pushi.e 260
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
pop.v.v self.hl
pushi.e 170
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 8
pop.v.v [array]self.alarm
push.v self.unhinged
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 145
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 8
pop.v.v [array]self.alarm

:[end]