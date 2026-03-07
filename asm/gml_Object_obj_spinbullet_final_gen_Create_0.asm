.localvar 0 arguments

:[0]
push.v self.x
pop.v.v self.centerx
push.v self.y
pop.v.v self.centery
push.v self.centerx
pop.v.v self.x
push.v self.centery
pop.v.v self.y
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.side
pushi.e 0
pop.v.i self.num
pushi.e 0
pop.v.i self.direction
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.add_dir
pushi.e 20
pop.v.i self.maxnum
pushi.e 1
pop.v.i self.trip
pushi.e 50
pop.v.i self.radius
pushi.e 0
pop.v.i self.counter
push.i 999999
pushi.e -1
pushi.e 0
pop.v.i [array]self.spinbullet
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.maxnum
cmp.v.v LTE
bf [3]

:[2]
push.l 847873482423472384
pushi.e -1
push.v self.i
conv.v.i
pop.v.l [array]self.spinbullet
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.centery
push.v self.radius
add.v.v
pushbltn.v self.room_height
cmp.v.v GT
bf [5]

:[4]
push.v self.centery
push.v self.centery
push.v self.radius
add.v.v
pushbltn.v self.room_height
sub.v.v
sub.v.v
pop.v.v self.centery
push.v self.centery
pop.v.v self.y
pushi.e 20
pushi.e 140
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.add_dir

:[5]
pushi.e 0
pop.v.i self.memx
pushi.e 0
pop.v.i self.memy
pushi.e 1587
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[6]
push.v 1587.x
pop.v.v self.memx
push.v 1587.y
pop.v.v self.memy

:[end]