.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.gil
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pop.v.v self.gir
push.v self.gir
push.v self.gil
sub.v.v
pop.v.v self.giw
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.giu
push.v self.t
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 0
pop.v.i self.i
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[2]
pushi.e 0
pop.v.i self.j
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [4]

:[3]
pushi.e 470
conv.i.v
push.v self.giu
pushi.e 80
sub.i.v
pushi.e 360
push.v self.i
mul.v.i
sub.v.v
pushi.e 90
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.gil
push.v self.j
push.v self.giw
pushi.e 4
conv.i.d
div.d.v
mul.v.v
add.v.v
pushi.e 20
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 10
push.v self.j
mul.v.i
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gg
push.d 0.25
conv.d.v
call.i random(argc=1)
push.d 0.25
conv.d.v
call.i random(argc=1)
sub.v.v
push.v self.gg
conv.v.i
pop.v.v [stacktop]self.vspeed
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [3]

:[4]
popz.i
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [2]

:[5]
popz.i

:[6]
push.v self.t
pushi.e 2
cmp.i.v EQ
bf [end]

:[7]
pushi.e 0
pop.v.i self.i
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [11]

:[8]
pushi.e 0
pop.v.i self.j
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [10]

:[9]
pushi.e 470
conv.i.v
push.v self.giu
pushi.e 80
sub.i.v
pushi.e 340
push.v self.i
mul.v.i
sub.v.v
pushi.e 90
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.gil
push.v self.j
push.v self.giw
pushi.e 4
conv.i.d
div.d.v
mul.v.v
add.v.v
pushi.e 20
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 10
push.v self.j
mul.v.i
add.v.v
call.i instance_create(argc=3)
pop.v.v self.gg
push.d 5.5
push.v self.gg
conv.v.i
pop.v.d [stacktop]self.mysf
push.d 3.5
push.v self.gg
conv.v.i
pop.v.d [stacktop]self.mysv
pushi.e 2
conv.i.v
call.i random(argc=1)
push.v self.gg
conv.v.i
pop.v.v [stacktop]self.mys
pushi.e 0
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.gg
conv.v.i
pop.v.v [stacktop]self.vspeed
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [9]

:[10]
popz.i
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [8]

:[11]
popz.i

:[end]