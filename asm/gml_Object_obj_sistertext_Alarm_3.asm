.localvar 0 arguments

:[0]
push.v self.amt
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.j
pushi.e 220
conv.i.v
call.i random(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
add.v.v
pushi.e 50
sub.i.v
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.wherex
pushbltn.v self.room_height
pushi.e 20
sub.i.v
call.i random(argc=1)
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.wherey
pushi.e -1
pushi.e -1
push.v self.j
conv.v.i
pop.v.i [array]self.fade
pushi.e 3
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]