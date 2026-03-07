.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [13]

:[1]
push.v 1418.level
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.myinteract
b [13]

:[3]
push.v self.x
pushi.e 400
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.myinteract
pushi.e 1576
pushenv [12]

:[4]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [12]

:[5]
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
bf [12]

:[6]
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
bf [12]

:[7]
push.v self.interactedobject
conv.v.i
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.facing

:[9]
popenv [8]
push.v self.interactedobject
conv.v.i
pushenv [11]

:[10]
pushi.e 115
conv.i.v
call.i script_execute(argc=1)
popz.v

:[11]
popenv [10]

:[12]
popenv [4]
push.v self.x
pushi.e 400
add.i.v
pop.v.v self.x

:[13]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [19]

:[17]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[19]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1027
pop.v.i self.pap
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.conversation

:[24]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 441
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.image_index
pushi.e 1365
conv.i.v
push.v 1576.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 4
add.i.v
call.i instance_create(argc=3)
pop.v.v self.thedog
pushi.e 1
push.v self.thedog
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 97
push.v self.thedog
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
add.i.v
push.v self.thedog
conv.v.i
pop.v.v [stacktop]self.depth
push.d 0.25
push.v self.thedog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 4
pop.v.i self.conversation
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[26]
push.v self.conversation
pushi.e 5
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i self.dogvolume
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.dogsong
call.i caster_loop(argc=3)
popz.v
push.d 5.1
pop.v.d self.conversation
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[28]
push.v self.conversation
push.d 6.1
cmp.d.v EQ
bf [30]

:[29]
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1339
conv.i.v
push.v 1027.y
pushi.e 12
sub.i.v
push.v 1027.x
pushi.e 5
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 6
pop.v.i self.conversation
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[30]
push.v self.conversation
pushi.e 7
cmp.i.v EQ
bf [34]

:[31]
push.v self.blcon
conv.v.i
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
pushi.e 1
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 8
pop.v.i self.conversation

:[34]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [36]

:[35]
pushi.e 99
push.v self.thedog
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.s "obj_papsink_234"@20194
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 10
pop.v.i self.conversation

:[36]
push.v self.conversation
pushi.e 10
cmp.i.v EQ
bf [38]

:[37]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 101
push.v self.thedog
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 10000
push.v self.thedog
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 5
push.v self.thedog
conv.v.i
pop.v.i [stacktop]self.vspeed
push.s "obj_papsink_244"@20196
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 9.5
pop.v.d self.conversation
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[41]
push.v self.conversation
push.d 10.5
cmp.d.v EQ
bf [43]

:[42]
pushi.e 0
push.v self.thedog
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.thedog
conv.v.i
pop.v.i [stacktop]self.image_speed
push.d 10.6
pop.v.d self.conversation
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[43]
push.v self.conversation
push.d 11.6
cmp.d.v EQ
bf [45]

:[44]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [51]

:[47]
pushi.e 4
push.v self.thedog
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1
push.v self.thedog
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.thedog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i 1576.facing
pushi.e 0
pop.v.i global.facing
pushi.e 3
pop.v.i 1576.vspeed
push.d 0.2
pop.v.d 1576.image_speed
push.v self.dogvolume
push.d 0.04
sub.d.v
pop.v.v self.dogvolume
push.v self.dogvolume
push.d 0.04
cmp.d.v LT
bf [49]

:[48]
pushi.e 0
pop.v.i self.dogvolume

:[49]
push.v self.dogvolume
push.v self.dogsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.dogvolume
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
pushi.e 12
pop.v.i self.conversation
push.v self.dogsong
call.i caster_free(argc=1)
popz.v

:[51]
push.v self.conversation
pushi.e 12
cmp.i.v EQ
bf [53]

:[52]
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 0
pop.v.i 1576.image_speed
push.d 12.1
pop.v.d self.conversation
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[53]
push.v self.conversation
push.d 13.1
cmp.d.v EQ
bf [55]

:[54]
push.s "obj_papsink_284"@20198
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tt
pushi.e 0
push.v self.tt
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 14
pop.v.i self.conversation

:[55]
push.v self.conversation
pushi.e 14
cmp.i.v EQ
bf [57]

:[56]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 1
pop.v.i 1425.image_index
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 441
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i 1425.sans
pushi.e 80
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 15
pop.v.i self.conversation

:[60]
push.v self.conversation
pushi.e 16
cmp.i.v EQ
bf [62]

:[61]
pushi.e 0
pop.v.i 1425.image_index
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 440
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 17
pop.v.i self.conversation
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[62]
push.v self.conversation
pushi.e 18
cmp.i.v EQ
bf [64]

:[63]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_papsink_313"@20200
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papsink_314"@20202
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tt
pushi.e 0
push.v self.tt
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 19
pop.v.i self.conversation

:[64]
push.v self.conversation
pushi.e 19
cmp.i.v EQ
bf [66]

:[65]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [end]

:[68]
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pushi.e -5
pushi.e 82
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact

:[end]