.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
push.d 0.02
push.v self.fade
conv.v.i
pop.v.d [stacktop]self.fadespeed
push.s "music/undynetheme.ogg"@2846
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.s "music/snowwalk.ogg"@2635
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.walknoise
pushi.e 1
conv.i.v
push.v self.walknoise
call.i caster_set_panning(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.walknoise
call.i caster_loop(argc=3)
popz.v
pushi.e -1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i 1150.w
pushi.e 1
pop.v.i 1161.w

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [5]

:[3]
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 340
cmp.i.v LT
bf [5]

:[4]
push.d 0.6
conv.d.v
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
push.v self.walknoise
call.i caster_pause(argc=1)
popz.v
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 2.5
pop.v.d self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[5]
push.v self.con
push.d 3.5
cmp.d.v EQ
bf [11]

:[6]
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pop.v.v self.remembery
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v 1576.y
pushi.e 20
sub.i.v
cmp.v.v GTE
bf [8]

:[7]
pushi.e -1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.undyne
conv.v.i
push.v [stacktop]self.usprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[8]
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v 1576.y
pushi.e 20
sub.i.v
cmp.v.v LT
bf [10]

:[9]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.undyne
conv.v.i
push.v [stacktop]self.dsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[10]
pushi.e 4
pop.v.i self.con

:[11]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [14]

:[12]
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v 1576.y
pushi.e 20
sub.i.v
sub.v.v
call.i abs(argc=1)
pushi.e 5
cmp.i.v LT
bf [14]

:[13]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.undyne
conv.v.i
push.v [stacktop]self.lsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 180
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 4.1
pop.v.d self.con

:[14]
push.v self.con
push.d 5.1
cmp.d.v EQ
bf [16]

:[15]
push.d -0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 4.2
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
push.d 5.2
cmp.d.v EQ
bf [18]

:[17]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 4.3
pop.v.d self.con
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i floor(argc=1)
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.con
push.d 5.3
cmp.d.v EQ
bf [20]

:[19]
push.d -0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 4.4
pop.v.d self.con

:[20]
push.v self.con
push.d 5.4
cmp.d.v EQ
bf [22]

:[21]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 5
pop.v.i self.con

:[22]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [28]

:[23]
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.remembery
cmp.v.v GT
bf [25]

:[24]
pushi.e -2
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.undyne
conv.v.i
push.v [stacktop]self.usprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[25]
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.remembery
cmp.v.v LT
bf [27]

:[26]
pushi.e 2
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.undyne
conv.v.i
push.v [stacktop]self.dsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[27]
pushi.e 7
pop.v.i self.con

:[28]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [31]

:[29]
push.v self.remembery
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
sub.v.v
call.i abs(argc=1)
pushi.e 5
cmp.i.v LT
bf [31]

:[30]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 6.1
pop.v.d self.con
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[31]
push.v self.con
push.d 7.1
cmp.d.v EQ
bf [33]

:[32]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 6.2
pop.v.d self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index

:[33]
push.v self.con
push.d 7.2
cmp.d.v EQ
bf [35]

:[34]
push.v self.undyne
conv.v.i
push.v [stacktop]self.lsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 6.3
pop.v.d self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[35]
push.v self.con
push.d 7.3
cmp.d.v EQ
bf [37]

:[36]
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 6.4
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[37]
push.v self.con
push.d 7.4
cmp.d.v EQ
bf [39]

:[38]
push.v self.walknoise
call.i caster_resume(argc=1)
popz.v
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mus
push.d 0.01
push.v self.mus
conv.v.i
pop.v.d [stacktop]self.fadespeed
push.v self.walknoise
pop.v.v global.currentsong
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tt
push.d 0.01
push.v self.tt
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 8
pop.v.i self.con

:[39]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [42]

:[40]
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 500
cmp.i.v GT
bf [42]

:[41]
pushi.e 9
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[42]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [48]

:[43]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
pushi.e 200
conv.i.v
pushi.e 200
conv.i.v
pushi.e 100
conv.i.v
pushi.e 180
conv.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bt [45]

:[44]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
pushi.e 200
conv.i.v
pushi.e 360
conv.i.v
pushi.e 100
conv.i.v
pushi.e 340
conv.i.v
call.i collision_rectangle(argc=7)
conv.v.b
b [46]

:[45]
push.e 1

:[46]
bf [48]

:[47]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/waterfall.ogg"@2643
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
pop.v.i global.interact
pushi.e 10
pop.v.i self.con

:[48]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [56]

:[49]
push.v 1576.y
pushi.e 120
cmp.i.v GT
bf [51]

:[50]
pushi.e 90
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 0
pop.v.i self.up
b [52]

:[51]
pushi.e 130
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 1
pop.v.i self.up

:[52]
push.v 1576.x
pushi.e 240
cmp.i.v LT
bf [54]

:[53]
pushi.e 1
pop.v.i self.left
pushi.e -4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
b [55]

:[54]
pushi.e 0
pop.v.i self.left
pushi.e 4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed

:[55]
pushi.e 11
pop.v.i self.con

:[56]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [63]

:[57]
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 10
add.i.v
sub.v.v
call.i abs(argc=1)
pushi.e 15
cmp.i.v LT
bf [63]

:[58]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 12
pop.v.i self.con
push.v self.up
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.v self.mkid
conv.v.i
push.v [stacktop]self.usprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[60]
push.v self.up
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
push.v self.mkid
conv.v.i
push.v [stacktop]self.dsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[62]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [65]

:[64]
pushi.e 14
pop.v.i self.con
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [71]

:[66]
push.v self.up
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
push.v self.mkid
conv.v.i
push.v [stacktop]self.usprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[68]
push.v self.up
pushi.e 0
cmp.i.v EQ
bf [70]

:[69]
push.v self.mkid
conv.v.i
push.v [stacktop]self.dsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[70]
pushi.e 16
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[71]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [77]

:[72]
push.v self.up
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.v self.mkid
conv.v.i
push.v [stacktop]self.utsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[74]
push.v self.up
pushi.e 0
cmp.i.v EQ
bf [76]

:[75]
push.v self.mkid
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[76]
pushi.e 3
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.myinteract
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "* Yo..^1. did you see the&  way she was staring at&  you...?/"@28483
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "* That.../"@28485
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.s "* ... was AWESOME!/"@28487
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
push.s "* I'm SOOOO jealous!/"@28489
pushi.e -5
pushi.e 3
pop.v.s [array]global.msg
push.s "* What'd you do to get her&  attention...^1?&* Ha ha./"@28491
pushi.e -5
pushi.e 4
pop.v.s [array]global.msg
push.s "* C'mon^1!&* Let's go watch her beat&  up some bad guys!/%%"@28493
pushi.e -5
pushi.e 5
pop.v.s [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 18
pop.v.i self.con

:[77]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [79]

:[78]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e 4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.myinteract
push.d 0.3
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 19
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[82]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [end]

:[83]
pushi.e 0
pop.v.i global.interact
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 21
pop.v.i self.con
pushi.e 106
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[end]