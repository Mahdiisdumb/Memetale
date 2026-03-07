.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.visible
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.arb2
pushi.e 1
add.i.v
push.v self.arb
push.v self.arb2
sub.v.v
pushi.e 2
sub.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
push.v self.vspeed
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.vspeed
pushi.e 340
conv.i.v
push.v self.y
pushi.e 170
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.rope
push.v self.rope
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.dmg
push.v self.rope
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 1
push.v self.rope
conv.v.i
pop.v.i [stacktop]self.type
push.v self.vspeed
push.v self.rope
conv.v.i
pop.v.v [stacktop]self.vspeed

:[3]
pushi.e 1
pop.v.i self.go
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[5]
pushi.e 339
conv.i.v
push.v self.y
pushi.e 120
add.i.v
push.v self.i
pushi.e 14
mul.i.v
add.v.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.fire
push.v self.fire
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[6]
push.v self.id
push.v self.fire
conv.v.i
pop.v.v [stacktop]self.parent
push.v self.dmg
push.v self.fire
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.fire
conv.v.i
pushenv [8]

:[7]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[8]
popenv [7]

:[9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[end]