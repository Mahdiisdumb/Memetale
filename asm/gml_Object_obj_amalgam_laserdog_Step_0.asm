.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
push.d 0.25
pop.v.d self.image_speed
push.v self.image_index
pushi.e 7
cmp.i.v GTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[3]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
pushi.e 4
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[5]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [7]

:[6]
push.v self.nowx
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.nowy
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[7]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [9]

:[8]
pushi.e 6
pop.v.i self.con
pushi.e -6
pop.v.i self.vspeed
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 5
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[9]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v LT
bf [12]

:[10]
push.v self.y
pushi.e 6
add.i.v
pop.v.v self.y
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [12]

:[11]
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[12]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pushi.e 5
add.i.v
cmp.v.v GT
bf [15]

:[13]
push.v self.y
pushi.e 6
sub.i.v
pop.v.v self.y
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[15]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[16]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
call.i instance_destroy(argc=0)
popz.v

:[end]