.localvar 0 arguments

:[0]
push.v self.exist
pushi.e 10
cmp.i.v LT
bf [2]

:[1]
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 368
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.som
pushi.e 4
mul.i.v
add.v.v
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 46
add.i.v
pushi.e 18
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 368
conv.i.v
push.v self.y
push.v self.som
pushi.e 4
mul.i.v
add.v.v
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 66
sub.i.v
pushi.e 18
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v

:[2]
push.v self.exist
pushi.e 10
cmp.i.v GTE
bf [end]

:[3]
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.parent
conv.v.i
push.v [stacktop]self.stare2
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 368
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.som
pushi.e 4
mul.i.v
add.v.v
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 46
add.i.v
pushi.e 18
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v

:[5]
push.v self.parent
conv.v.i
push.v [stacktop]self.stare1
pushi.e 0
cmp.i.v EQ
bf [end]

:[6]
pushi.e 368
conv.i.v
push.v self.y
push.v self.som
pushi.e 4
mul.i.v
add.v.v
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.offx
push.v self.x
add.v.v
pushi.e 66
sub.i.v
pushi.e 18
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v

:[end]