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
bf [15]

:[13]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 70
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i global.heard

:[15]
pushglb.v global.myfight
pushi.e 1
cmp.i.v EQ
bf [23]

:[16]
push.v self.gotimer
pushi.e 1
sub.i.v
pop.v.v self.gotimer
push.v self.mypart1
conv.v.i
push.v [stacktop]self.got
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v self.gotimer
pushi.e 0
cmp.i.v GT
b [19]

:[18]
push.e 0

:[19]
bf [23]

:[20]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.type
pushi.e 99
cmp.i.v NEQ
bf [22]

:[21]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.type
pop.v.v self.remtype

:[22]
pushi.e 99
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.vspeed

:[23]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [29]

:[24]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.got
pushi.e 1
cmp.i.v EQ
bf [28]

:[25]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.type
pushi.e 99
cmp.i.v NEQ
bf [27]

:[26]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.type
pop.v.v self.remtype

:[27]
pushi.e 99
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.vspeed
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
b [29]

:[28]
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[29]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [34]

:[30]
push.v self.defuse
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
push.v self.bombtype
push.v self.mypart1
conv.v.i
pop.v.v [stacktop]self.type
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[32]
push.v self.defuse
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 999
pop.v.i self.con
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

:[34]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 5
cmp.i.v EQ
bf [36]

:[35]
push.v self.bombtype
push.v self.mypart1
conv.v.i
pop.v.v [stacktop]self.type
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[36]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [44]

:[37]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [43]

:[38]
pushi.e 3
pop.v.i self.gotimer
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [40]

:[39]
push.s "obj_battlebomb_485"@10683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.bombtype
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_battlebomb_486"@10685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[43]
pushi.e -1
pop.v.i self.whatiheard

:[44]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [71]

:[45]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [71]

:[46]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [71]

:[47]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [63]

:[48]
pushi.e 0
pop.v.i global.msc
push.s "obj_battlebomb_513"@10687
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.bombtype
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_battlebomb_514"@10689
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.bombtype
pushi.e 2
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_battlebomb_515"@10691
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.bombtype
pushi.e 3
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_battlebomb_516"@10693
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.bombtype
pushi.e 4
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_battlebomb_517"@10695
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.bombtype
pushi.e 5
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_battlebomb_518"@10697
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
push.v self.bombtype
pushi.e 6
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_battlebomb_519"@10699
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
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
pushenv [62]

:[61]
pushi.e 0
pop.v.i self.halt

:[62]
popenv [61]
pushi.e 9
pop.v.i self.whatiheard

:[63]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [71]

:[64]
pushi.e 0
pop.v.i global.msc
push.s "obj_battlebomb_536"@10701
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.flash
push.v self.mypart1
conv.v.i
push.v [stacktop]self.got
pushi.e 1
cmp.i.v EQ
bf [68]

:[65]
push.s "obj_battlebomb_541"@10703
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.bombtype
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_battlebomb_542"@10705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
pushi.e 99
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.defuse
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1000
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[68]
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
pushenv [70]

:[69]
pushi.e 0
pop.v.i self.halt

:[70]
popenv [69]
pushi.e 1
pop.v.i global.heard

:[71]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [75]

:[72]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [75]

:[73]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [77]

:[76]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [81]

:[79]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.mercy
pushi.e 0
cmp.i.v LT
bf [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
push.v self.con
pushi.e 999
cmp.i.v EQ
bf [83]

:[82]
pushi.e 1000
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[83]
push.v self.con
pushi.e 1001
cmp.i.v EQ
bf [85]

:[84]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1002
pop.v.i self.con
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[85]
push.v self.con
pushi.e 1003
cmp.i.v EQ
bf [end]

:[86]
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]