.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.talked

:[2]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [12]

:[3]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
push.v [array]self.alarm
cmp.v.v GT
bf [6]

:[5]
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[6]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
push.v [array]self.alarm
cmp.v.v GT
bf [9]

:[8]
pushi.e -5
pushi.e 1
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[9]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
push.v [array]self.alarm
cmp.v.v GT
bf [12]

:[11]
pushi.e -5
pushi.e 2
push.v [array]global.monsterinstance
conv.v.i
pushi.e 5
push.v [array]self.alarm
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[12]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [20]

:[13]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.talked

:[18]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.attacked
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[20]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 8
pop.v.i self.shudder
pushglb.v global.damagetimer
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[22]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [28]

:[23]
push.v self.dmgwriter
conv.v.i
pushenv [25]

:[24]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[25]
popenv [24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 1
cmp.i.v GTE
bf [27]

:[26]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i self.hurta
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
b [28]

:[27]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.killed
call.i instance_destroy(argc=0)
popz.v

:[28]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [32]

:[29]
pushi.e 0
pop.v.i global.damage
pushi.e 190
conv.i.v
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 48
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 190
pushenv [31]

:[30]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[31]
popenv [30]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[32]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [41]

:[33]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [37]

:[34]
push.v self.mypart1
conv.v.i
pushenv [36]

:[35]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[36]
popenv [35]
push.s "obj_mettatonb_quiz_490"@17205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.attacked
pushi.e 20
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[37]
push.v self.attacked
pushi.e 2
cmp.i.v EQ
bf [41]

:[38]
pushi.e 308
pushenv [40]

:[39]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[40]
popenv [39]
pushi.e 3
pop.v.i self.attacked

:[41]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [53]

:[42]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [53]

:[43]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [53]

:[44]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [48]

:[45]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_quiz_514"@17207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pop.v.i 784.halt
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.halt

:[47]
popenv [46]
pushi.e 9
pop.v.i self.whatiheard

:[48]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [52]

:[49]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_quiz_524"@17209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pop.v.i 784.halt
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [51]

:[50]
pushi.e 0
pop.v.i self.halt

:[51]
popenv [50]

:[52]
pushi.e 1
pop.v.i global.heard

:[53]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [56]

:[54]
push.v self.flex
pushi.e 3
cmp.i.v EQ
bf [56]

:[55]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [57]

:[56]
push.e 0

:[57]
bf [60]

:[58]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
pushi.e -4
pop.v.i self.vspeed
pushi.e -4
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.vspeed

:[60]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [63]

:[61]
push.v self.flex
pushi.e 3
cmp.i.v EQ
bf [63]

:[62]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [67]

:[65]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [67]

:[66]
call.i instance_destroy(argc=0)
popz.v

:[67]
push.v self.alphaup
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[72]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [76]

:[73]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [76]

:[74]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [76]

:[75]
call.i instance_destroy(argc=0)
popz.v

:[76]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [78]

:[77]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [end]

:[80]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [end]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[end]