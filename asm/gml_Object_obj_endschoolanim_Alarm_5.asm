.localvar 0 arguments

:[0]
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1700
conv.i.v
push.v self.asg
conv.v.i
push.v [stacktop]self.y
pushi.e 11
add.i.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.asg
conv.v.i
push.v [stacktop]self.x
pushi.e 57
add.i.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 1700
conv.i.v
push.v self.asg
conv.v.i
push.v [stacktop]self.y
pushi.e 11
add.i.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.asg
conv.v.i
push.v [stacktop]self.x
pushi.e 57
add.i.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v

:[end]