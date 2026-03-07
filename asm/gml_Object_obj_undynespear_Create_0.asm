.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.image_alpha
pushi.e 4
pop.v.i self.active
push.d 0.1
pop.v.d self.friction
pushi.e 30
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 36
pushi.e 9
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v self.ramt
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.r
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.rot
push.v 1576.x
pushi.e 7
add.i.v
pop.v.v self.goalx
push.v 1576.y
pushi.e 15
add.i.v
pop.v.v self.goaly
pushbltn.v self.room
pushi.e 93
cmp.i.v EQ
bf [2]

:[1]
push.v 1576.x
pushi.e 300
add.i.v
pop.v.v self.goalx

:[2]
pushi.e -2
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.gax
push.d 0.2
conv.d.v
push.v self.goaly
push.v self.goalx
push.v self.gax
add.v.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.idealrot
pushi.e 0
pop.v.i self.speed
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
push.d 3.2
pop.v.d self.speed
pushi.e 0
pop.v.i self.move
pushi.e 0
pop.v.i self.stop
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 2
mul.i.v
push.v self.ramt
cmp.v.v LT
bf [5]

:[4]
push.v self.stop
push.v self.ramt
push.v self.i
pushi.e 2
mul.i.v
sub.v.v
add.v.v
pop.v.v self.stop
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
push.v self.idealrot
push.v self.stop
sub.v.v
pushi.e 12
sub.i.v
pop.v.v self.rot
pushi.e 0
pop.v.i self.col

:[end]