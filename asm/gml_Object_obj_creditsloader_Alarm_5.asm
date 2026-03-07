.localvar 0 arguments

:[0]
push.v self.memory
pushi.e 0
cmp.i.v EQ
bf [11]

:[1]
push.v self.rounded
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1706
conv.i.v
pushi.e 40
conv.i.v
call.i choose(argc=1)
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e 1
conv.i.v
call.i choose(argc=1)
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.type

:[3]
push.v self.rounded
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1706
conv.i.v
pushi.e 260
conv.i.v
call.i choose(argc=1)
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e 1
conv.i.v
call.i choose(argc=1)
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.type

:[5]
push.v self.rounded
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1706
conv.i.v
pushi.e 40
conv.i.v
call.i choose(argc=1)
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e 0
conv.i.v
call.i choose(argc=1)
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.type

:[7]
push.v self.rounded
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1706
conv.i.v
pushi.e 260
conv.i.v
call.i choose(argc=1)
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e 0
conv.i.v
call.i choose(argc=1)
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.type

:[9]
pushi.e 35
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.rounded
pushi.e 1
add.i.v
pop.v.v self.rounded
push.v self.rounded
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.rounded

:[11]
push.v self.memory
pushi.e 1
cmp.i.v EQ
bf [15]

:[12]
pushi.e 0
pop.v.i self.i
pushi.e 10
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 20
mul.i.v
add.v.i
pop.v.v self.xx
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [14]

:[13]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.xx
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.x
push.v self.xx
pushi.e 90
add.i.v
pop.v.v self.xx
pushi.e -40
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.y
push.d 0.5
push.v self.cb
conv.v.i
pop.v.d [stacktop]self.vspeed
push.d 0.1
push.v self.cb
conv.v.i
pop.v.d [stacktop]self.gravity
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [13]

:[14]
popz.i
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[15]
push.v self.memory
pushi.e 2
cmp.i.v EQ
bf [23]

:[16]
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [19]

:[18]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -200
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 10
push.v self.i
pushi.e 40
mul.i.v
add.v.i
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 9
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[19]
pushi.e 0
pop.v.i self.i

:[20]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [22]

:[21]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushbltn.v self.room_width
pushi.e 200
add.i.v
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 30
push.v self.i
pushi.e 40
mul.i.v
add.v.i
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -9
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [20]

:[22]
pushi.e 50
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[23]
push.v self.memory
pushi.e 4
cmp.i.v EQ
bf [50]

:[24]
push.v self.memswitch
pushi.e 0
cmp.i.v EQ
bf [35]

:[25]
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [30]

:[27]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 10
push.v self.i
pushi.e 60
mul.i.v
add.v.i
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.x
push.v self.cb
conv.v.i
pushenv [29]

:[28]
push.v self.text
call.i string_width(argc=1)
pop.v.v self.width

:[29]
popenv [28]
pushi.e -300
push.v self.cb
conv.v.i
push.v [stacktop]self.width
add.v.i
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 90
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 2
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 3
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.action
pushi.e 6
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [26]

:[30]
pushi.e 0
pop.v.i self.i

:[31]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [35]

:[32]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.cb
conv.v.i
pushenv [34]

:[33]
push.v self.text
call.i string_width(argc=1)
pop.v.v self.width

:[34]
popenv [33]
pushi.e 90
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 40
push.v self.i
pushi.e 60
mul.i.v
add.v.i
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -300
push.v self.cb
conv.v.i
push.v [stacktop]self.width
sub.v.i
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -2
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 3
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.action
pushi.e 6
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [31]

:[35]
push.v self.memswitch
pushi.e 1
cmp.i.v EQ
bf [46]

:[36]
pushi.e 0
pop.v.i self.i

:[37]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [41]

:[38]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 10
push.v self.i
pushi.e 60
mul.i.v
add.v.i
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.x
push.v self.cb
conv.v.i
pushenv [40]

:[39]
push.v self.text
call.i string_width(argc=1)
pop.v.v self.width

:[40]
popenv [39]
pushi.e -300
push.v self.cb
conv.v.i
push.v [stacktop]self.width
add.v.i
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -90
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e -2
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 3
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.action
pushi.e 6
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [37]

:[41]
pushi.e 0
pop.v.i self.i

:[42]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [46]

:[43]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.cb
conv.v.i
pushenv [45]

:[44]
push.v self.text
call.i string_width(argc=1)
pop.v.v self.width

:[45]
popenv [44]
pushi.e -90
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 40
push.v self.i
pushi.e 60
mul.i.v
add.v.i
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -300
push.v self.cb
conv.v.i
push.v [stacktop]self.width
sub.v.i
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 2
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 3
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.action
pushi.e 6
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [42]

:[46]
pushi.e 4
pop.v.i self.memory
push.v self.memswitch
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 0
pop.v.i self.memswitch
b [49]

:[48]
pushi.e 1
pop.v.i self.memswitch

:[49]
pushi.e 78
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[50]
push.v self.memory
pushi.e 6
cmp.i.v EQ
bf [61]

:[51]
push.v self.rounded
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
pushi.e 1706
conv.i.v
pushi.e 40
conv.i.v
call.i choose(argc=1)
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e 1
conv.i.v
call.i choose(argc=1)
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.type

:[53]
push.v self.rounded
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1706
conv.i.v
pushi.e 260
conv.i.v
call.i choose(argc=1)
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e 1
conv.i.v
call.i choose(argc=1)
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.type

:[55]
push.v self.rounded
pushi.e 2
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1706
conv.i.v
pushi.e 40
conv.i.v
call.i choose(argc=1)
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e 0
conv.i.v
call.i choose(argc=1)
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.type

:[57]
push.v self.rounded
pushi.e 3
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1706
conv.i.v
pushi.e 260
conv.i.v
call.i choose(argc=1)
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e 0
conv.i.v
call.i choose(argc=1)
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.type

:[59]
pushi.e 25
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.rounded
pushi.e 1
add.i.v
pop.v.v self.rounded
push.v self.rounded
pushi.e 4
cmp.i.v EQ
bf [61]

:[60]
pushi.e 0
pop.v.i self.rounded

:[61]
push.v self.memory
pushi.e 7
cmp.i.v EQ
bf [end]

:[62]
pushi.e 1706
conv.i.v
pushi.e 360
conv.i.v
pushi.e -300
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e 4
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 3
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1706
conv.i.v
pushi.e 120
conv.i.v
pushi.e 950
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e -4
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 3
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 75
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]