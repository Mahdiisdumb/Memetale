.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.moving
pushi.e 0
pop.v.i self.mr
pushi.e 0
pop.v.i self.ml
pushi.e 0
pop.v.i self.md
pushi.e 0
pop.v.i self.mu
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 0
pop.v.i 1576.visible

:[3]
push.v self.canmove
pushi.e 1
cmp.i.v EQ
bf [12]

:[4]
push.v 1575.right
conv.v.b
bf [6]

:[5]
pushi.e 1
pop.v.i self.mr

:[6]
push.v 1575.left
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.i self.ml

:[8]
push.v 1575.down
conv.v.b
bf [10]

:[9]
pushi.e 1
pop.v.i self.md

:[10]
push.v 1575.up
conv.v.b
bf [12]

:[11]
pushi.e 1
pop.v.i self.mu

:[12]
push.v self.x
push.v self.x1
pushi.e 10
sub.i.v
cmp.v.v LT
bf [14]

:[13]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.beat
call.i caster_stop(argc=1)
popz.v
pushi.e -1
pop.v.i self.playing
pushi.e 0
pop.v.i self.canmove
pushi.e 1
pop.v.i self.con

:[17]
push.v self.x
push.v self.x2
pushi.e 10
add.i.v
cmp.v.v GT
bf [19]

:[18]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.v self.beat
call.i caster_stop(argc=1)
popz.v
pushi.e -1
pop.v.i self.playing
pushi.e 0
pop.v.i self.canmove
pushi.e 5
pop.v.i self.con

:[22]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [25]

:[23]
pushi.e 1
pop.v.i self.ml
push.v self.x
push.v self.x1
pushi.e 31
sub.i.v
cmp.v.v LT
bf [25]

:[24]
pushi.e 9
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [28]

:[26]
pushi.e 1
pop.v.i self.mr
push.v self.x
push.v self.x2
pushi.e 30
add.i.v
cmp.v.v GT
bf [28]

:[27]
pushi.e 9
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
pop.v.i self.mclock
pushi.e 11
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 4
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.vspeed

:[30]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [32]

:[31]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 13
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [39]

:[33]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [35]

:[34]
push.v self.x1
pushi.e 22
sub.i.v
pop.v.v 1576.x
push.v self.mc
conv.v.i
push.v [stacktop]self.y
pushi.e 8
sub.i.v
pop.v.v 1576.y
b [36]

:[35]
push.v self.x2
push.v self.sprite_width
add.v.v
pushi.e 2
add.i.v
pop.v.v 1576.x
push.v self.mc
conv.v.i
push.v [stacktop]self.y
pushi.e 8
sub.i.v
pop.v.v 1576.y

:[36]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i 1576.visible
pushi.e 15
pop.v.i self.con
push.v self.beat
call.i caster_free(argc=1)
popz.v
push.v self.mc
conv.v.i
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]
call.i instance_destroy(argc=0)
popz.v

:[39]
push.v self.mr
pushi.e 1
cmp.i.v EQ
bf [42]

:[40]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x
pushi.e 1
pop.v.i self.moving
push.v self.GR
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1
pop.v.i self.GR

:[42]
push.v self.ml
pushi.e 1
cmp.i.v EQ
bf [45]

:[43]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x
pushi.e 1
pop.v.i self.moving
push.v self.GR
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1
pop.v.i self.GR

:[45]
push.v self.md
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
push.v self.y
push.v self.y2
cmp.v.v LT
b [48]

:[47]
push.e 0

:[48]
bf [51]

:[49]
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.moving
push.v self.GR
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
pushi.e 1
pop.v.i self.GR

:[51]
push.v self.mu
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.v self.y
push.v self.y1
cmp.v.v GT
b [54]

:[53]
push.e 0

:[54]
bf [57]

:[55]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.moving
push.v self.GR
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1
pop.v.i self.GR

:[57]
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [63]

:[58]
push.v self.playing
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.beat
call.i caster_loop(argc=3)
popz.v

:[60]
push.v self.playing
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.v self.beat
call.i caster_resume(argc=1)
popz.v

:[62]
pushi.e 2
pop.v.i self.playing
push.v self.GR
push.d 0.2
add.d.v
pop.v.v self.GR

:[63]
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [67]

:[64]
push.v self.playing
pushi.e 2
cmp.i.v EQ
bf [66]

:[65]
push.v self.beat
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i self.playing

:[66]
pushi.e 0
pop.v.i self.GR

:[67]
push.v self.mclock
pushi.e 1
cmp.i.v EQ
bf [end]

:[68]
push.v self.x
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 5
add.i.v
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.y

:[end]