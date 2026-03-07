.localvar 0 arguments

:[0]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.choseang
push.v self.diff
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i self.choseangspeed
pushi.e 0
pop.v.i self.i
pushi.e 36
dup.i 0
push.i 0
cmp.i.i LTE
bt [3]

:[2]
pushi.e 474
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cc
push.v self.choseang
push.v self.i
pushi.e 8
mul.i.v
add.v.v
push.v self.cc
conv.v.i
pop.v.v [stacktop]self.ang
pushi.e 4
push.v self.cc
conv.v.i
pop.v.i [stacktop]self.rspeed
pushi.e 300
push.v self.cc
conv.v.i
pop.v.i [stacktop]self.r
push.v self.choseangspeed
push.v self.cc
conv.v.i
pop.v.v [stacktop]self.angspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [2]

:[3]
popz.i
pushi.e 35
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[4]
push.v self.diff
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e -2
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.choseangspeed
pushi.e 0
pop.v.i self.i
pushi.e 36
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[6]
pushi.e 474
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cc
push.v self.choseang
push.v self.i
pushi.e 8
mul.i.v
add.v.v
push.v self.cc
conv.v.i
pop.v.v [stacktop]self.ang
pushi.e 6
push.v self.cc
conv.v.i
pop.v.i [stacktop]self.rspeed
pushi.e 300
push.v self.cc
conv.v.i
pop.v.i [stacktop]self.r
push.v self.choseangspeed
push.v self.cc
conv.v.i
pop.v.v [stacktop]self.angspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [6]

:[7]
popz.i
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[8]
push.v self.diff
pushi.e 2
cmp.i.v EQ
bf [12]

:[9]
pushi.e -4
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.choseangspeed
pushi.e 0
pop.v.i self.i
pushi.e 36
dup.i 0
push.i 0
cmp.i.i LTE
bt [11]

:[10]
pushi.e 474
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cc
push.v self.choseang
push.v self.i
pushi.e 8
mul.i.v
add.v.v
push.v self.cc
conv.v.i
pop.v.v [stacktop]self.ang
pushi.e 4
push.v self.cc
conv.v.i
pop.v.i [stacktop]self.rspeed
pushi.e 300
push.v self.cc
conv.v.i
pop.v.i [stacktop]self.r
push.v self.choseangspeed
push.v self.cc
conv.v.i
pop.v.v [stacktop]self.angspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [10]

:[11]
popz.i
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[12]
push.v self.diff
pushi.e 3
cmp.i.v EQ
bf [end]

:[13]
pushi.e -6
pushi.e 12
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.choseangspeed
pushi.e 0
pop.v.i self.i
pushi.e 33
dup.i 0
push.i 0
cmp.i.i LTE
bt [15]

:[14]
pushi.e 474
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cc
push.v self.choseang
push.v self.i
pushi.e 8
mul.i.v
add.v.v
push.v self.cc
conv.v.i
pop.v.v [stacktop]self.ang
pushi.e 6
push.v self.cc
conv.v.i
pop.v.i [stacktop]self.rspeed
pushi.e 300
push.v self.cc
conv.v.i
pop.v.i [stacktop]self.r
push.v self.choseangspeed
push.v self.cc
conv.v.i
pop.v.v [stacktop]self.angspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [14]

:[15]
popz.i
pushi.e 25
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]