.localvar 0 arguments

:[0]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.side
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushbltn.v self.room_width
pushi.e 160
add.i.v
call.i random(argc=1)
pushi.e 80
sub.i.v
pop.v.v self.x
pushbltn.v self.room_height
pushi.e 80
add.i.v
pop.v.v self.y

:[2]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushbltn.v self.room_width
pushi.e 160
add.i.v
call.i random(argc=1)
pushi.e 80
sub.i.v
pop.v.v self.x
pushi.e -80
pop.v.i self.y

:[4]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushbltn.v self.room_height
pushi.e 160
add.i.v
call.i random(argc=1)
pushi.e 80
sub.i.v
pop.v.v self.y
pushi.e -80
pop.v.i self.x

:[6]
push.v self.side
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushbltn.v self.room_height
pushi.e 160
add.i.v
call.i random(argc=1)
pushi.e 80
sub.i.v
pop.v.v self.y
pushbltn.v self.room_width
pushi.e 80
add.i.v
pop.v.v self.x

:[8]
pushi.e 2
pop.v.i self.size
push.d -0.3
pop.v.d self.friction
pushi.e 2
conv.i.v
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
call.i move_towards_point(argc=3)
popz.v

:[end]