.localvar 0 arguments
.localvar 1 i 10306

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
pop.v.i self.strike
push.v self.strike
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.num
pushi.e 0
pop.v.i self.direction
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.add_dir
pushi.e 10
pop.v.i self.maxnum
pushi.e 1
pop.v.i self.trip
pushi.e 60
pop.v.i self.radius
pushi.e 0
pop.v.i self.counter
push.i 999999
pushi.e -1
pushi.e 0
pop.v.i [array]self.spinbullet

:[2]
push.v self.strike
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.num
pushi.e 0
pop.v.i self.direction
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.add_dir
pushi.e 46
pop.v.i self.maxnum
pushi.e 1
pop.v.i self.trip
pushi.e 62
pop.v.i self.radius
pushi.e 0
pop.v.i self.counter

:[4]
pushi.e 0
pop.v.i local.i

:[5]
pushloc.v local.i
push.v self.maxnum
cmp.v.v LTE
bf [7]

:[6]
push.l 847873482423472384
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.spinbullet
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [5]

:[7]
push.v self.centery
push.v self.radius
add.v.v
pushbltn.v self.room_height
cmp.v.v GT
bf [end]

:[8]
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

:[end]