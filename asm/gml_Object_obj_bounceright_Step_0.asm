.localvar 0 arguments

:[0]
push.v self.btime
pushi.e 1
sub.i.v
pop.v.v self.btime
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1576
pushenv [3]

:[2]
pushi.e 3
conv.i.v
call.i scr_moveideal(argc=1)
popz.v

:[3]
popenv [2]

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[5]
push.v self.myfacing
pop.v.v global.facing
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 3
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bt [7]

:[6]
pushbltn.v self.room
pushi.e 163
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [16]

:[11]
push.d 0.95
pop.v.d self.fakegrav
pushi.e 10
pop.v.i self.fakevspeed
push.v self.myfacing
pop.v.v global.facing
push.v self.mydirection
pop.v.v 1576.direction
pushi.e 6
pop.v.i 1576.speed
pushbltn.v self.room
pushi.e 163
cmp.i.v EQ
bf [13]

:[12]
pushi.e 4
pop.v.i 1576.speed

:[13]
pushi.e 5
pop.v.i self.con
pushi.e -2
pop.v.i self.faceoff
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bf [15]

:[14]
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 10
pop.v.i self.fakevspeed
push.d 1.8
pop.v.d self.fakegrav

:[15]
pushi.e 92
conv.i.v
call.i snd_play(argc=1)
popz.v

:[16]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [29]

:[17]
pushi.e 1534
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e 7
push.v self.b
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 90
push.v self.mydirection
add.v.i
pushi.e 2
conv.i.d
div.d.v
push.v self.b
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.mydirection
pushi.e 300
cmp.i.v LT
bf [19]

:[18]
push.v self.mydirection
pushi.e 200
cmp.i.v GT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 180
push.v self.b
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 2
push.v self.b
conv.v.i
pop.v.i [stacktop]self.speed

:[22]
push.v self.faceoff
pushi.e 1
add.i.v
pop.v.v self.faceoff
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bf [24]

:[23]
push.v self.faceoff
pushi.e 1
add.i.v
pop.v.v self.faceoff

:[24]
push.v self.faceoff
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 1
cmp.i.v GTE
bf [26]

:[25]
push.v global.facing
pushi.e 1
add.i.v
pop.v.v global.facing
pushi.e 0
pop.v.i self.faceoff

:[26]
pushglb.v global.facing
pushi.e 3
cmp.i.v GT
bf [28]

:[27]
pushi.e 0
pop.v.i global.facing

:[28]
push.v self.fakevspeed
push.v self.fakegrav
sub.v.v
pop.v.v self.fakevspeed
push.v 1576.y
push.v self.fakevspeed
sub.v.v
pop.v.v 1576.y

:[29]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [33]

:[30]
pushi.e 1547
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [32]

:[31]
pushi.e 4
pop.v.i 1547.faketime

:[32]
pushi.e 0
pop.v.i 1576.speed
push.v 1576.y
call.i floor(argc=1)
pop.v.v 1576.y
pushi.e 7
pop.v.i self.con
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[33]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [40]

:[34]
push.v self.mydirection
pushi.e 180
cmp.i.v EQ
bt [36]

:[35]
push.v self.mydirection
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 1

:[37]
bf [39]

:[38]
push.v self.y
pushi.e 15
sub.i.v
pop.v.v 1576.y

:[39]
pushi.e 2
pop.v.i 1535.bounce
pushi.e 20
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con

:[40]
push.v self.goldshift
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.v self.gold
pushi.e 1
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [end]

:[44]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]