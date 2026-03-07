.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 30
cmp.i.v LT
bf [3]

:[2]
push.v self.x
push.v self.w
call.i random(argc=1)
add.v.v
push.v self.w
call.i random(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x1
push.v self.x
push.v self.w
call.i random(argc=1)
add.v.v
push.v self.w
call.i random(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x2
push.v self.y
push.v self.h
call.i random(argc=1)
add.v.v
push.v self.h
call.i random(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.y1
push.v self.y
push.v self.h
call.i random(argc=1)
add.v.v
push.v self.h
call.i random(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.y2
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 4
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]