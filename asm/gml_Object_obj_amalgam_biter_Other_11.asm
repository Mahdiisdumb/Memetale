.localvar 0 arguments

:[0]
push.v self.miss
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 11
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.miss
b [6]

:[2]
pushi.e 1
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v self.missadd
push.v self.miss
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
push.v self.missadd
mul.v.v
add.v.v
pop.v.v self.miss
push.v self.miss
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
push.v self.missadd
add.v.i
pop.v.v self.miss

:[4]
push.v self.miss
pushi.e 10
cmp.i.v GT
bf [6]

:[5]
pushi.e 10
push.v self.missadd
sub.v.i
pop.v.v self.miss

:[6]
pushi.e 0
pop.v.i self.toothno
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 25
sub.i.v
pop.v.v self.tx
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [12]

:[7]
push.v self.toothno
push.v self.miss
cmp.v.v NEQ
bf [9]

:[8]
pushi.e 547
conv.i.v
pushi.e 0
conv.i.v
push.v self.tx
call.i instance_create(argc=3)
pop.v.v self.downtooth
pushi.e 0
push.v self.downtooth
conv.v.i
pop.v.i [stacktop]self.top

:[9]
push.v self.toothno
pushi.e 1
add.i.v
pop.v.v self.toothno
push.v self.tx
pushi.e 25
add.i.v
pop.v.v self.tx
push.v self.toothno
push.v self.miss
cmp.v.v NEQ
bf [11]

:[10]
pushi.e 547
conv.i.v
pushi.e 0
conv.i.v
push.v self.tx
call.i instance_create(argc=3)
pop.v.v self.uptooth
pushi.e 1
push.v self.uptooth
conv.v.i
pop.v.i [stacktop]self.top

:[11]
push.v self.toothno
pushi.e 1
add.i.v
pop.v.v self.toothno
push.v self.tx
pushi.e 25
add.i.v
pop.v.v self.tx
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [7]

:[12]
popz.i
push.v self.toothno
push.v self.miss
cmp.v.v NEQ
bf [end]

:[13]
pushi.e 547
conv.i.v
pushi.e 0
conv.i.v
push.v self.tx
call.i instance_create(argc=3)
pop.v.v self.downtooth
pushi.e 0
push.v self.downtooth
conv.v.i
pop.v.i [stacktop]self.top

:[end]