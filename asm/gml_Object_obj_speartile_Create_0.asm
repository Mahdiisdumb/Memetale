.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.duty
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.image_speed
push.v 1576.x
pop.v.v self.x
push.v 1576.y
pop.v.v self.y
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
call.i move_snap(argc=2)
popz.v
push.v self.x
pushi.e -40
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 20
mul.i.v
add.v.i
add.v.v
pop.v.v self.x
push.v self.y
pushi.e -40
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 20
mul.i.v
add.v.i
add.v.v
pop.v.v self.y
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
call.i move_snap(argc=2)
popz.v
pushi.e 1
pop.v.i self.facer
pushi.e 0
pop.v.i self.sounded
pushi.e 1
pop.v.i self.active

:[end]