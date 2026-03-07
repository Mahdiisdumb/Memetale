.localvar 0 arguments

:[0]
pushi.e 10
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.thisi
pushi.e 9
pop.v.i self.i

:[1]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.rp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.rp
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [1]

:[3]
pushglb.v global.ratings
pushglb.v global.ratings
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.rp
push.v self.accu
pushi.e 6
cmp.i.v EQ
bf [5]

:[4]
pushglb.v global.ratings
pushi.e -1
pushi.e 0
pop.v.v [array]self.rp

:[5]
push.v self.accu
pushi.e 1
add.i.v
pop.v.v self.accu
push.v self.accu
pushi.e 10
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.accu

:[7]
pushi.e 6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]