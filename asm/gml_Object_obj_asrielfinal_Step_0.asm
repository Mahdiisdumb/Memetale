.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.attacked

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
bf [16]

:[14]
push.v self.blconwd
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[16]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[18]
push.v self.talked
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.talked

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
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.pause
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
bf [75]

:[33]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [69]

:[34]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
pushi.e 150
pop.v.i global.turntimer
pushi.e 10
pop.v.i global.firingrate
push.v self.pop
pushi.e 3
cmp.i.v EQ
bf [36]

:[35]
pushglb.v global.firingrate
push.d 2.5
mul.d.v
pop.v.v global.firingrate

:[36]
push.v self.pop
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
pushglb.v global.firingrate
push.d 1.8
mul.d.v
pop.v.v global.firingrate

:[38]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
bf [40]

:[39]
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.ucon
b [58]

:[40]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 2
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.u_gen
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.ucon

:[42]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 3
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.u_gen
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.ucon

:[44]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bt [48]

:[45]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bt [48]

:[46]
push.v self.turns
pushi.e 4
cmp.i.v EQ
bt [48]

:[47]
push.v self.turns
pushi.e 5
cmp.i.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
pushi.e 120
pop.v.i global.turntimer
pushi.e 2
pop.v.i global.firingrate
pushi.e 714
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.myself
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.myself
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 9
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.bullettype

:[51]
push.v self.turns
pushi.e 6
cmp.i.v EQ
bf [53]

:[52]
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.bcon

:[53]
push.v self.turns
pushi.e 7
cmp.i.v GTE
bf [55]

:[54]
pushi.e -12
pop.v.i self.mercymod

:[55]
push.v self.turns
pushi.e 11
cmp.i.v GTE
bf [57]

:[56]
push.i 999999
pop.v.i self.mercymod

:[57]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns

:[58]
push.s "obj_asrielfinal_423"@10268
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 505
push.v [array]global.flag
pushi.e -5
pushi.e 506
push.v [array]global.flag
add.v.v
pushi.e -5
pushi.e 507
push.v [array]global.flag
add.v.v
pushi.e -5
pushi.e 508
push.v [array]global.flag
add.v.v
pop.v.v self.total
push.v self.total
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_asrielfinal_425"@10269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
push.v self.total
pushi.e 2
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_asrielfinal_426"@10270
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
push.v self.total
pushi.e 3
cmp.i.v EQ
bf [64]

:[63]
push.s "obj_asrielfinal_427"@10271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
push.v self.total
pushi.e 4
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_asrielfinal_428"@10272
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.v self.turns
pushi.e 0
cmp.i.v GT
bf [68]

:[67]
push.s "obj_asrielfinal_429"@10273
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
pushi.e 1
pop.v.i self.attacked

:[69]
push.v self.mercymod
pushi.e -12
cmp.i.v EQ
bt [71]

:[70]
push.v self.mercymod
push.i 999999
cmp.i.v EQ
b [72]

:[71]
push.e 1

:[72]
bf [74]

:[73]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[74]
pushi.e -1
pop.v.i self.whatiheard

:[75]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [134]

:[76]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [134]

:[77]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [134]

:[78]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 2
cmp.i.v GT
bf [80]

:[79]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[80]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [85]

:[81]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [85]

:[82]
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i self.savecon_a
pushi.e 3
pop.v.i 784.halt
push.s "obj_asrielfinal_468"@10275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_469"@10277
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_470"@10279
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asrielfinal_471"@10281
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asrielfinal_472"@10282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_asrielfinal_473"@10284
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_asrielfinal_474"@10286
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
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
pushenv [84]

:[83]
pushi.e 0
pop.v.i self.halt

:[84]
popenv [83]
pushi.e 9
pop.v.i self.whatiheard

:[85]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [120]

:[86]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [93]

:[87]
pushi.e 0
pop.v.i global.msc
pushi.e -5
pushi.e 505
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 87
pop.v.i self.nextbattle
b [90]

:[89]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[90]
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
pushenv [92]

:[91]
pushi.e 0
pop.v.i self.halt

:[92]
popenv [91]
pushi.e 9
pop.v.i self.whatiheard

:[93]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [100]

:[94]
pushi.e 0
pop.v.i global.msc
pushi.e -5
pushi.e 506
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 89
pop.v.i self.nextbattle
b [97]

:[96]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[97]
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
pushenv [99]

:[98]
pushi.e 0
pop.v.i self.halt

:[99]
popenv [98]

:[100]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bt [102]

:[101]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
b [103]

:[102]
push.e 1

:[103]
bf [110]

:[104]
pushi.e 0
pop.v.i global.msc
pushi.e -5
pushi.e 507
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 88
pop.v.i self.nextbattle
b [107]

:[106]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[107]
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
pushenv [109]

:[108]
pushi.e 0
pop.v.i self.halt

:[109]
popenv [108]

:[110]
push.v self.whatiheard
pushi.e 2
cmp.i.v EQ
bt [112]

:[111]
push.v self.whatiheard
pushi.e 5
cmp.i.v EQ
b [113]

:[112]
push.e 1

:[113]
bf [120]

:[114]
pushi.e 0
pop.v.i global.msc
pushi.e -5
pushi.e 508
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 90
pop.v.i self.nextbattle
b [117]

:[116]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[117]
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
pushenv [119]

:[118]
pushi.e 0
pop.v.i self.halt

:[119]
popenv [118]

:[120]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [133]

:[121]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [133]

:[122]
pushi.e -5
pushi.e 12
push.v [array]global.tempvalue
pushi.e 4
cmp.i.v GTE
bf [130]

:[123]
push.v self.mypart1
conv.v.i
pushenv [125]

:[124]
pushi.e 1
pop.v.i self.darker

:[125]
popenv [124]
pushi.e 1
pop.v.i self.songcon
pushi.e 0
pop.v.i global.msc
push.s "obj_asrielfinal_552"@10288
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_553"@10290
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielfinal_554"@10292
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asrielfinal_555"@10294
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asrielfinal_556"@10296
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "file0"@3189
conv.s.v
call.i ossafe_file_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [127]

:[126]
push.s "obj_asrielfinal_559"@10298
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asrielfinal_560"@10300
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asrielfinal_561"@10301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[127]
push.s "obj_asrielfinal_563"@10302
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_asrielfinal_564"@10303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_asrielfinal_565"@10305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_asrielfinal_566"@10307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
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
pushi.e -1020
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.iii
conv.v.i
pushenv [129]

:[128]
pushi.e 0
pop.v.i self.halt

:[129]
popenv [128]
pushi.e 9
pop.v.i self.whatiheard
b [133]

:[130]
pushi.e -5
pushi.e 12
dup.i 1
push.v [array]global.tempvalue
pushi.e 1
add.i.v
pop.i.v [array]global.tempvalue
pushi.e 0
pop.v.i global.msc
push.s "obj_asrielfinal_577"@10309
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
pushenv [132]

:[131]
pushi.e 0
pop.v.i self.halt

:[132]
popenv [131]

:[133]
pushi.e 1
pop.v.i global.heard

:[134]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [138]

:[135]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [138]

:[136]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [138]

:[137]
call.i instance_destroy(argc=0)
popz.v

:[138]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [140]

:[139]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [141]

:[140]
push.e 0

:[141]
bf [144]

:[142]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [144]

:[143]
call.i instance_destroy(argc=0)
popz.v

:[144]
push.v self.songcon
pushi.e 1
cmp.i.v EQ
bf [147]

:[145]
pushglb.v global.batmusic
call.i caster_get_volume(argc=1)
pop.v.v self.vol
push.v self.vol
push.d 0.04
sub.d.v
pop.v.v self.vol
push.v self.vol
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
push.v self.vol
push.d 0.04
cmp.d.v LTE
bf [147]

:[146]
pushi.e 0
pop.v.i self.vol
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v
pushi.e 2
pop.v.i self.songcon

:[147]
push.v self.songcon
pushi.e 3
cmp.i.v EQ
bf [151]

:[148]
push.v self.mypart1
conv.v.i
pushenv [150]

:[149]
pushi.e 0
pop.v.i self.darker

:[150]
popenv [149]
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -1
pop.v.i self.songcon

:[151]
push.v self.songcon
pushi.e 2
cmp.i.v EQ
bf [153]

:[152]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [154]

:[153]
push.e 0

:[154]
bf [156]

:[155]
pushi.e 0
pop.v.i global.heard
pushi.e 1
pop.v.i global.mercy
pushi.e 1
pushi.e -5
pushi.e 501
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.bmenuno
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e 1
pop.v.i 752.spec
pushi.e 3
conv.i.v
call.i scr_getsprite(argc=1)
pop.v.v 752.sprite_index
pushi.e 3
pop.v.i self.songcon
push.s "music/xpart_2.ogg"@2780
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.batmusic
push.d 0.95
conv.d.v
push.d 0.8
conv.d.v
pushglb.v global.batmusic
call.i caster_loop(argc=3)
popz.v
push.s "obj_asrielfinal_648"@10311
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[156]
push.v self.gocon
pushi.e 1
cmp.i.v EQ
bf [158]

:[157]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [159]

:[158]
push.e 0

:[159]
bf [164]

:[160]
push.v self.gotimer
pushi.e 0
cmp.i.v EQ
bf [162]

:[161]
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[162]
push.v self.gotimer
pushi.e 1
add.i.v
pop.v.v self.gotimer
push.v self.gotimer
pushi.e 34
cmp.i.v EQ
bf [164]

:[163]
push.v self.nextbattle
pop.v.v global.battlegroup
pushi.e 0
pop.v.i self.gocon
call.i room_restart(argc=0)
popz.v

:[164]
push.v self.savecon_a
pushi.e 0
cmp.i.v GT
bf [178]

:[165]
pushglb.v global.batmusic
call.i caster_get_volume(argc=1)
pop.v.v self.vol
push.v self.vol
push.d 0.04
sub.d.v
pop.v.v self.vol
push.v self.vol
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
push.v self.vol
push.d 0.04
cmp.d.v LTE
bf [167]

:[166]
pushi.e 0
pop.v.i self.vol
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v

:[167]
push.v self.savecon_a
pushi.e 1
cmp.i.v EQ
bf [169]

:[168]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [170]

:[169]
push.e 0

:[170]
bf [172]

:[171]
pushi.e 2
pop.v.i self.savecon_a
pushi.e 188
conv.i.v
pushi.e 50
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 0
pop.v.i global.msc
push.s "obj_asrielfinal_674"@10313
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.faceemotion
pushi.e 86
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e -2000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -2200
push.v self.blconwd
conv.v.i
pop.v.i [stacktop]self.depth

:[172]
push.v self.savecon_a
pushi.e 2
cmp.i.v EQ
bf [174]

:[173]
push.v self.savecon_a_x
pushi.e 1
add.i.v
pop.v.v self.savecon_a_x

:[174]
push.v self.savecon_a_x
pushi.e 70
cmp.i.v EQ
bf [176]

:[175]
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sw
pushi.e 1
push.v self.sw
conv.v.i
pop.v.i [stacktop]self.ex

:[176]
push.v self.savecon_a_x
pushi.e 138
cmp.i.v EQ
bf [178]

:[177]
pushi.e 332
conv.i.v
call.i room_goto(argc=1)
popz.v

:[178]
push.v self.endcon
pushi.e 1
cmp.i.v EQ
bf [end]

:[179]
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sw
pushi.e 2
push.v self.sw
conv.v.i
pop.v.i [stacktop]self.ex
pushi.e 3
pop.v.i self.endcon
pushi.e 136
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[end]