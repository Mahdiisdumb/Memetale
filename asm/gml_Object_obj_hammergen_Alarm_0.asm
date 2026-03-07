.localvar 0 arguments

:[0]
push.v 761.x
push.v 759.x
sub.v.v
pushi.e 22
conv.i.d
div.d.v
call.i ceil(argc=1)
pushi.e 1
sub.i.v
pop.v.v self.hnum
push.v self.odd
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 372
conv.i.v
pushi.e 0
conv.i.v
push.v 744.x
pushi.e 12
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.a
pushi.e 0
push.v self.a
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 0
pop.v.i self.odd
b [3]

:[2]
push.v self.hnum
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 22
mul.i.v
pop.v.v self.gg
pushi.e 372
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.gg
add.v.v
call.i instance_create(argc=3)
pop.v.v self.a
pushi.e 0
push.v self.a
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
pop.v.i self.odd

:[3]
push.v self.hnum
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 22
mul.i.v
pop.v.v self.gg
pushi.e 372
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.gg
add.v.v
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e 1
push.v self.b
conv.v.i
pop.v.i [stacktop]self.side
push.v self.hnum
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 22
mul.i.v
pop.v.v self.gg
pushi.e 372
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.gg
add.v.v
call.i instance_create(argc=3)
pop.v.v self.c
pushi.e 1
push.v self.c
conv.v.i
pop.v.i [stacktop]self.side
push.v self.c
conv.v.i
push.v [stacktop]self.x
push.v self.b
conv.v.i
push.v [stacktop]self.x
cmp.v.v EQ
bf [5]

:[4]
push.v self.b
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 22
add.i.v
pop.i.v [stacktop]self.x

:[5]
push.v self.hnum
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 22
mul.i.v
pop.v.v self.gg
pushi.e 372
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.gg
add.v.v
call.i instance_create(argc=3)
pop.v.v self.d
push.v self.d
conv.v.i
push.v [stacktop]self.x
push.v self.b
conv.v.i
push.v [stacktop]self.x
cmp.v.v EQ
bt [7]

:[6]
push.v self.d
conv.v.i
push.v [stacktop]self.x
push.v self.c
conv.v.i
push.v [stacktop]self.x
cmp.v.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
push.v self.d
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 22
add.i.v
pop.i.v [stacktop]self.x

:[10]
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
push.v self.hnum
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 22
mul.i.v
pop.v.v self.gg
pushi.e 372
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.gg
add.v.v
call.i instance_create(argc=3)
pop.v.v self.e
push.v self.e
conv.v.i
push.v [stacktop]self.x
push.v self.b
conv.v.i
push.v [stacktop]self.x
cmp.v.v EQ
bt [13]

:[11]
push.v self.e
conv.v.i
push.v [stacktop]self.x
push.v self.c
conv.v.i
push.v [stacktop]self.x
cmp.v.v EQ
bt [13]

:[12]
push.v self.e
conv.v.i
push.v [stacktop]self.x
push.v self.d
conv.v.i
push.v [stacktop]self.x
cmp.v.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
push.v self.e
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 22
add.i.v
pop.i.v [stacktop]self.x

:[16]
pushi.e 1
push.v self.e
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 33
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]