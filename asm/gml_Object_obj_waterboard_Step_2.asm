.localvar 0 arguments

:[0]
pushi.e 1112
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[1]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [4]

:[2]
push.v self.using
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v 1112.waterboard
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
pushi.e 113
conv.i.v
call.i snd_isplaying(argc=1)
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 113
conv.i.v
call.i snd_play(argc=1)
popz.v

:[8]
pushi.e 1
pop.v.i self.using
pushi.e 1
pop.v.i 1112.waterboard
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.solid
b [14]

:[9]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.using
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i self.myinteract

:[14]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.using
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [28]

:[18]
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.x
pushi.e 1576
pushenv [27]

:[19]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [27]

:[20]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1370
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
sub.i.v
push.v self.x
pushi.e 4
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [27]

:[21]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1370
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
sub.i.v
push.v self.x
pushi.e 4
add.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [27]

:[22]
push.v self.interactedobject
conv.v.i
pushenv [24]

:[23]
pushi.e 0
pop.v.i self.facing

:[24]
popenv [23]
push.v self.interactedobject
conv.v.i
pushenv [26]

:[25]
pushi.e 115
conv.i.v
call.i script_execute(argc=1)
popz.v

:[26]
popenv [25]

:[27]
popenv [19]
pushi.e 0
pop.v.i self.myinteract
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.x

:[28]
push.v self.using
pushi.e 1
cmp.i.v EQ
bf [54]

:[29]
pushi.e 0
pop.v.i global.encounter
push.v 1576.x
pop.v.v self.x
push.v 1576.y
pushi.e 10
sub.i.v
pop.v.v self.y
push.v 1576.depth
pushi.e 2
sub.i.v
pop.v.v self.depth
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [54]

:[30]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [54]

:[31]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [38]

:[32]
pushi.e 1365
conv.i.v
push.v 1576.y
pushi.e 40
add.i.v
push.v 1576.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pop.v.v self.j
pushi.e 1116
conv.i.v
push.v 1576.y
pushi.e 40
add.i.v
push.v 1576.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pop.v.v self.h
pushi.e 1114
conv.i.v
push.v 1576.y
pushi.e 40
add.i.v
push.v 1576.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pop.v.v self.g
push.v self.h
pushi.e -4
cmp.i.v EQ
bf [34]

:[33]
push.v self.j
pushi.e -4
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [38]

:[36]
push.v self.g
pushi.e -4
cmp.i.v NEQ
bf [38]

:[37]
push.v 1576.y
pushi.e 30
add.i.v
pop.v.v self.y
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
call.i move_snap(argc=2)
popz.v
pushi.e 2
pop.v.i self.using
pushi.e 0
pop.v.i self.dir

:[38]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [42]

:[39]
pushi.e 1114
conv.i.v
push.v 1576.y
push.v 1576.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pop.v.v self.g
push.v self.g
pushi.e -4
cmp.i.v NEQ
bf [42]

:[40]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1116
conv.i.v
push.v 1576.y
push.v 1576.x
pushi.e 10
add.i.v
call.i collision_point(argc=5)
conv.v.b
not.b
bf [42]

:[41]
push.v 1576.y
pop.v.v self.y
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
call.i move_snap(argc=2)
popz.v
pushi.e 2
pop.v.i self.using
pushi.e 2
pop.v.i self.dir

:[42]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [47]

:[43]
pushi.e 1365
conv.i.v
push.v 1576.y
pushi.e 20
add.i.v
push.v 1576.x
pushi.e 30
add.i.v
call.i instance_position(argc=3)
pop.v.v self.j
pushi.e 1116
conv.i.v
push.v 1576.y
pushi.e 20
add.i.v
push.v 1576.x
pushi.e 30
add.i.v
call.i instance_position(argc=3)
pop.v.v self.h
pushi.e 1114
conv.i.v
push.v 1576.y
pushi.e 20
add.i.v
push.v 1576.x
pushi.e 30
add.i.v
call.i instance_position(argc=3)
pop.v.v self.g
push.v self.j
pushi.e -4
cmp.i.v EQ
bf [47]

:[44]
push.v self.h
pushi.e -4
cmp.i.v EQ
bf [47]

:[45]
push.v self.g
pushi.e -4
cmp.i.v NEQ
bf [47]

:[46]
push.v 1576.y
pushi.e 10
add.i.v
pop.v.v self.y
push.v 1576.x
pushi.e 20
add.i.v
pop.v.v self.x
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
call.i move_snap(argc=2)
popz.v
pushi.e 2
pop.v.i self.using
pushi.e 1
pop.v.i self.dir

:[47]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [52]

:[48]
pushi.e 1365
conv.i.v
push.v 1576.y
pushi.e 20
add.i.v
push.v 1576.x
pushi.e 10
sub.i.v
call.i instance_position(argc=3)
pop.v.v self.j
pushi.e 1116
conv.i.v
push.v 1576.y
pushi.e 20
add.i.v
push.v 1576.x
pushi.e 10
sub.i.v
call.i instance_position(argc=3)
pop.v.v self.h
pushi.e 1114
conv.i.v
push.v 1576.y
pushi.e 20
add.i.v
push.v 1576.x
pushi.e 10
sub.i.v
call.i instance_position(argc=3)
pop.v.v self.g
push.v self.j
pushi.e -4
cmp.i.v EQ
bf [52]

:[49]
push.v self.h
pushi.e -4
cmp.i.v EQ
bf [52]

:[50]
push.v self.g
pushi.e -4
cmp.i.v NEQ
bf [52]

:[51]
push.v 1576.y
pushi.e 10
add.i.v
pop.v.v self.y
push.v 1576.x
pushi.e 20
sub.i.v
pop.v.v self.x
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
call.i move_snap(argc=2)
popz.v
pushi.e 2
pop.v.i self.using
pushi.e 3
pop.v.i self.dir

:[52]
push.v self.using
pushi.e 2
cmp.i.v EQ
bf [54]

:[53]
pushi.e 0
pop.v.i 1112.waterboard

:[54]
push.v self.using
pushi.e 2
cmp.i.v EQ
bf [85]

:[55]
push.i 900000
pop.v.i self.depth
push.v self.dir
pushi.e 2
cmp.i.v EQ
bf [62]

:[56]
push.v self.y
pushi.e 2
sub.i.v
pop.v.v self.y
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [58]

:[57]
pushi.e 3
pop.v.i self.using

:[58]
pushi.e 1115
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [60]

:[59]
pushi.e 3
pop.v.i self.using

:[60]
pushi.e 1116
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [62]

:[61]
pushi.e 3
pop.v.i self.using

:[62]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [69]

:[63]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.x
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [65]

:[64]
pushi.e 3
pop.v.i self.using

:[65]
pushi.e 1115
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [67]

:[66]
pushi.e 3
pop.v.i self.using

:[67]
pushi.e 1116
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [69]

:[68]
pushi.e 3
pop.v.i self.using

:[69]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [76]

:[70]
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [72]

:[71]
pushi.e 3
pop.v.i self.using

:[72]
pushi.e 1115
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [74]

:[73]
pushi.e 3
pop.v.i self.using

:[74]
pushi.e 1116
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [76]

:[75]
pushi.e 3
pop.v.i self.using

:[76]
push.v self.dir
pushi.e 3
cmp.i.v EQ
bf [83]

:[77]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 2
sub.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [79]

:[78]
pushi.e 3
pop.v.i self.using

:[79]
pushi.e 1115
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 2
sub.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [81]

:[80]
pushi.e 3
pop.v.i self.using

:[81]
pushi.e 1116
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 2
sub.i.v
call.i instance_position(argc=3)
pushi.e -4
cmp.i.v NEQ
bf [83]

:[82]
pushi.e 3
pop.v.i self.using

:[83]
push.v self.using
pushi.e 3
cmp.i.v EQ
bf [85]

:[84]
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
call.i move_snap(argc=2)
popz.v

:[85]
push.v self.using
pushi.e 5
cmp.i.v EQ
bf [end]

:[86]
push.d 0.17
pop.v.d self.image_speed
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 6
pop.v.i self.using

:[end]