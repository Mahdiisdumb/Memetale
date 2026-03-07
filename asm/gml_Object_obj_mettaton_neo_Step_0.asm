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
pushi.e 2
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
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [22]

:[16]
pushi.e -1
pushi.e 5
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
bf [19]

:[17]
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [19]

:[18]
pushi.e -1
pushi.e 6
push.v [array]self.alarm
pushi.e 0
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[22]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
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

:[24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.hurtanim
pushi.e 2
cmp.i.v EQ
bf [28]

:[25]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterhp
push.v self.takedamage
sub.v.v
pop.i.v [array]global.monsterhp
push.v self.dmgwriter
conv.v.i
pushenv [27]

:[26]
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[27]
popenv [26]
pushi.e -1
pop.v.i global.myfight
pushi.e -1
pop.v.i global.mnfight
pushi.e 20
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim

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
bf [47]

:[33]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [44]

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
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [40]

:[39]
pushi.e 335
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
b [41]

:[40]
pushi.e 332
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 2
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 30
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[41]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [43]

:[42]
push.s "obj_mettaton_neo_449"@17143
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[43]
pushi.e 1
pop.v.i self.attacked

:[44]
push.v self.mercymod
push.i -999999
cmp.i.v EQ
bf [46]

:[45]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[46]
push.s "obj_mettaton_neo_461"@17144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -1
pop.v.i self.whatiheard

:[47]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bf [55]

:[48]
push.v self.whatiheard
pushi.e -1
cmp.i.v NEQ
bf [55]

:[49]
pushglb.v global.heard
pushi.e 0
cmp.i.v EQ
bf [55]

:[50]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [54]

:[51]
pushi.e 0
pop.v.i global.msc
push.s "obj_mettaton_neo_482"@17146
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
pushenv [53]

:[52]
pushi.e 0
pop.v.i self.halt

:[53]
popenv [52]
pushi.e 9
pop.v.i self.whatiheard

:[54]
pushi.e 1
pop.v.i global.heard

:[55]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [58]

:[56]
pushglb.v global.mercyuse
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v

:[58]
push.v self.mercymod
pushi.e 222
cmp.i.v EQ
bf [60]

:[59]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e 176
conv.i.v
call.i script_execute(argc=1)
popz.v

:[63]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [65]

:[64]
pushi.e -3
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 22
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [74]

:[66]
push.v self.mypart1
conv.v.i
pushenv [68]

:[67]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[68]
popenv [67]
pushi.e 0
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 190
pushenv [70]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[70]
popenv [69]
pushi.e 6
pop.v.i global.faceemotion
pushi.e 97
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
call.i scr_murderlv(argc=0)
pushi.e 15
cmp.i.v LT
bf [72]

:[71]
push.s "obj_mettaton_neo_535"@17148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_536"@17150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_537"@17152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_538"@17154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_539"@17156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_540"@17158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_541"@17160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_542"@17162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_543"@17164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_544"@17166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_545"@17168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_546"@17170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
b [73]

:[72]
push.s "obj_mettaton_neo_550"@17172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettaton_neo_551"@17174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[73]
pushi.e 24
pop.v.i self.con
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 180
add.i.v
call.i scr_blcon_x(argc=2)
pop.v.v self.blc

:[74]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [76]

:[75]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
push.s "music/explosion.ogg"@2722
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.explode
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.fadewhite
pushi.e 25
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[79]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [end]

:[80]
pushi.e 1
pushi.e -5
pushi.e 8
pop.v.i [array]global.flag
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.explode
call.i caster_play(argc=3)
popz.v
call.i scr_murderlv(argc=0)
pushi.e 15
cmp.i.v GTE
bf [84]

:[81]
pushglb.v global.xp
push.i 50000
cmp.i.v LTE
bf [83]

:[82]
push.i 50000
pop.v.i global.xp

:[83]
push.v global.kills
pushi.e 1
add.i.v
pop.v.v global.kills
b [85]

:[84]
push.v global.xp
pushi.e 10000
add.i.v
pop.v.v global.xp

:[85]
call.i scr_levelup(argc=0)
popz.v
pushi.e 1
pushi.e -5
pushi.e 425
pop.v.i [array]global.flag
pushi.e 27
pop.v.i self.con

:[end]