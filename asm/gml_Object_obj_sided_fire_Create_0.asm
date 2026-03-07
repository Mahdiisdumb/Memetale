.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.side
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pushi.e 5
sub.i.v
pop.v.v self.y
pushi.e 9
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed

:[2]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e -9
push.d 0.5
conv.d.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 5
add.i.v
pop.v.v self.y

:[4]
push.d 0.5
conv.d.v
call.i random(argc=1)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.hspeed

:[end]