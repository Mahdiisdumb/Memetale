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
pushi.e 3
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
bt [7]

:[6]
push.v self.shake
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
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

:[10]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 729
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.con

:[12]
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i distance_to_point(argc=2)
pop.v.v self.betty
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[13]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
call.i instance_destroy(argc=0)
popz.v

:[end]