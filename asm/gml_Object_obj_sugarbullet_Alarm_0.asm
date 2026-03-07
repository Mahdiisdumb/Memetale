.localvar 0 arguments

:[0]
pushi.e 10
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.g
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.idealspot
pushi.e 20
mul.i.v
add.v.v
pushi.e 10
add.i.v
push.v self.x
sub.v.v
push.v self.g
div.v.v
pop.v.v self.hspeed
push.v self.g
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[end]