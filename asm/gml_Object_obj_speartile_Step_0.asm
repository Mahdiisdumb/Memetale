.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [34]

:[1]
push.v self.facer
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1575
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [30]

:[5]
push.v 1575.left
conv.v.b
bf [11]

:[6]
push.v self.x
pushi.e 60
sub.i.v
pop.v.v self.x
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [10]

:[7]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1043
conv.i.v
push.v self.y
pushi.e 35
add.i.v
push.v self.x
pushi.e 9
add.i.v
call.i collision_point(argc=5)
conv.v.b
bf [9]

:[8]
push.v self.x
pushi.e 20
add.i.v
pop.v.v self.x

:[9]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [7]

:[10]
popz.i

:[11]
push.v 1575.right
conv.v.b
bf [17]

:[12]
push.v self.x
pushi.e 60
add.i.v
pop.v.v self.x
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [16]

:[13]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1043
conv.i.v
push.v self.y
pushi.e 35
add.i.v
push.v self.x
pushi.e 9
add.i.v
call.i collision_point(argc=5)
conv.v.b
bf [15]

:[14]
push.v self.x
pushi.e 20
sub.i.v
pop.v.v self.x

:[15]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [13]

:[16]
popz.i

:[17]
push.v 1575.down
conv.v.b
bf [23]

:[18]
push.v self.y
pushi.e 60
add.i.v
pop.v.v self.y
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [22]

:[19]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1043
conv.i.v
push.v self.y
pushi.e 35
add.i.v
push.v self.x
pushi.e 9
add.i.v
call.i collision_point(argc=5)
conv.v.b
bf [21]

:[20]
push.v self.y
pushi.e 20
sub.i.v
pop.v.v self.y

:[21]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [19]

:[22]
popz.i

:[23]
push.v 1575.up
conv.v.b
bf [29]

:[24]
push.v self.y
pushi.e 60
sub.i.v
pop.v.v self.y
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [28]

:[25]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1043
conv.i.v
push.v self.y
pushi.e 35
add.i.v
push.v self.x
pushi.e 9
add.i.v
call.i collision_point(argc=5)
conv.v.b
bf [27]

:[26]
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.y

:[27]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [25]

:[28]
popz.i

:[29]
pushi.e 0
pop.v.i self.facer

:[30]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1043
conv.i.v
push.v self.y
pushi.e 35
add.i.v
push.v self.x
pushi.e 9
add.i.v
call.i collision_point(argc=5)
conv.v.b
bf [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
push.v self.image_alpha
push.d 0.07
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.9
cmp.d.v GT
bf [34]

:[33]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [38]

:[35]
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.spearbud
push.v self.spearbud
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 9
add.i.v
pop.i.v [stacktop]self.y
push.v self.spearbud
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 9
sub.i.v
pop.i.v [stacktop]self.y
push.v self.sprite_index
push.v self.spearbud
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.5
push.v self.spearbud
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.spearbud
conv.v.i
pop.v.i [stacktop]self.visible
push.v self.spearbud
conv.v.i
pushenv [37]

:[36]
call.i scr_depth(argc=0)
popz.v

:[37]
popenv [36]
push.d 2.5
pop.v.d self.con

:[38]
push.v self.con
push.d 2.5
cmp.d.v EQ
bf [52]

:[39]
push.v self.spearbud
conv.v.i
push.v [stacktop]self.image_index
push.d 1.5
cmp.d.v GTE
bf [41]

:[40]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [50]

:[43]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
bf [45]

:[44]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[45]
push.v self.sounded
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
pushi.e 1048
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 1
pop.v.i 1048.sound2
pushi.e 1
pop.v.i self.sounded

:[50]
push.v self.spearbud
conv.v.i
push.v [stacktop]self.image_index
pushi.e 3
cmp.i.v GTE
bf [52]

:[51]
pushi.e 0
push.v self.spearbud
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 3
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[52]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [57]

:[53]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.v self.spearbud
conv.v.i
pop.v.v [stacktop]self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [57]

:[54]
push.v self.spearbud
conv.v.i
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
call.i instance_destroy(argc=0)
popz.v

:[57]
push.v self.duty
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.v 1576.x
pop.v.v self.x
push.v 1576.y
pop.v.v self.y
pushi.e 0
pop.v.i self.duty
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
call.i move_snap(argc=2)
popz.v

:[59]
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [end]

:[60]
push.v self.con
push.d 2.5
cmp.d.v GTE
bf [65]

:[61]
push.v self.spearbud
call.i instance_exists(argc=1)
conv.v.b
bf [65]

:[62]
push.v self.spearbud
conv.v.i
pushenv [64]

:[63]
call.i instance_destroy(argc=0)
popz.v

:[64]
popenv [63]

:[65]
call.i instance_destroy(argc=0)
popz.v

:[end]