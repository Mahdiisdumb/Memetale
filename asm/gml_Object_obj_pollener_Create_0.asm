.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [end]

:[2]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.pollenalpha
pushbltn.v self.room_width
call.i random(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pollenx
pushbltn.v self.room_height
call.i random(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.polleny
pushi.e 3
conv.i.v
call.i random(argc=1)
pushi.e 1
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pollensize
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pollenhspeed
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pollenvspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]