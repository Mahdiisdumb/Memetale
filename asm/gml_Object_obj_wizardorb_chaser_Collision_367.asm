.localvar 0 arguments

:[0]
push.v self.col
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
push.v self.x
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v other.x
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v other.x
push.v self.y
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y
push.v other.y
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v other.y
push.v self.hspeed
neg.v
pop.v.v self.hspeed
push.v other.hspeed
neg.v
pop.v.v other.hspeed
push.v self.vspeed
neg.v
pop.v.v self.vspeed
push.v other.vspeed
neg.v
pop.v.v other.vspeed
pushi.e 3
pop.v.i self.col
pushi.e 3
pop.v.i other.col

:[end]