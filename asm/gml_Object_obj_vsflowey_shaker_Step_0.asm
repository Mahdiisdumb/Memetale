.localvar 0 arguments

:[0]
push.v self.shakex
call.i random(argc=1)
push.v self.shakex
call.i random(argc=1)
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v self.shakey
call.i random(argc=1)
push.v self.shakey
call.i random(argc=1)
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
push.v self.turn1
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.shakex
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v self.shakey
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
pushi.e 1
pop.v.i self.turn1

:[2]
push.v self.decay
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex
push.v self.shakey
pushi.e 1
sub.i.v
pop.v.v self.shakey

:[4]
push.v self.shakex
pushi.e 0
cmp.i.v LTE
bf [6]

:[5]
push.v self.shakey
pushi.e 0
cmp.i.v LTE
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
call.i instance_destroy(argc=0)
popz.v

:[end]