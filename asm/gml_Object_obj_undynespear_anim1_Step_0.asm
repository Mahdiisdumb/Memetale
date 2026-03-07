.localvar 0 arguments

:[0]
push.v self.part
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1539
pop.v.i self.sprite_index
push.v 1576.y
pushi.e 5
sub.i.v
push.v 1576.x
pushi.e 13
sub.i.v
call.i scr_getideal(argc=2)
popz.v
pushi.e 2
pop.v.i self.part
pushi.e 16
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.image_angle
pushi.e 450
sub.i.v
pop.v.v self.image_angle
push.v self.image_angle
pop.v.v self.curangle
pushi.e 0
pop.v.i self.ss

:[2]
push.v self.part
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.v self.ss
pushi.e 1
add.i.v
pop.v.v self.ss
pushi.e 16
conv.i.v
call.i scr_moveideal(argc=1)
popz.v
push.v self.image_angle
pushi.e 10
add.i.v
pop.v.v self.image_angle

:[4]
push.v self.part
pushi.e 3
cmp.i.v EQ
bf [end]

:[5]
pushi.e 140
pop.v.i self.image_angle
pushi.e 1064
conv.i.v
pushi.e 155
conv.i.v
pushi.e 210
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]