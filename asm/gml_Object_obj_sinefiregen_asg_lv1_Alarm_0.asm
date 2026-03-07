.localvar 0 arguments

:[0]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s
pushi.e 475
conv.i.v
pushi.e 130
push.v self.off
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.off
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 20
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fire
pushi.e 4
push.v self.fire
conv.v.i
pop.v.i [stacktop]self.sf
pushi.e 4
push.v self.fire
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.s
push.v self.fire
conv.v.i
pop.v.v [stacktop]self.s
push.v self.side
pushi.e 1
add.i.v
pop.v.v self.side
push.v self.side
pushi.e 4
cmp.i.v GTE
bf [2]

:[1]
pushi.e -1
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=2)
pop.v.v self.side

:[2]
push.v self.side
pushi.e 1
cmp.i.v LTE
bf [4]

:[3]
pushi.e 11
push.v self.fire
conv.v.i
pop.v.i [stacktop]self.sv

:[4]
push.v self.side
pushi.e 1
cmp.i.v GTE
bf [6]

:[5]
pushi.e -11
push.v self.fire
conv.v.i
pop.v.i [stacktop]self.sv

:[6]
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.off
pushi.e 1
add.i.v
pop.v.v self.off
push.v self.fire
conv.v.i
dup.i 0
push.v [stacktop]self.vspeed
push.v self.off
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.v
pop.i.v [stacktop]self.vspeed

:[end]