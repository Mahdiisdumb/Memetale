.localvar 0 arguments
.localvar 1 writer 1629
.localvar 2 pad 1631
.localvar 3 i 1632
.localvar 4 len 1633

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i SCR_BORDERSETUP(argc=5)
popz.v
pushglb.v global.bmenuno
pop.v.v self.currentplace
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [11]

:[1]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [11]

:[2]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [11]

:[3]
push.v self.won
pushi.e 0
cmp.i.v EQ
bf [11]

:[4]
pushi.e 1
pop.v.i self.won
push.v global.xp
pushi.e -5
pushi.e 3
push.v [array]global.xpreward
add.v.v
pop.v.v global.xp
push.v global.gold
pushi.e -5
pushi.e 3
push.v [array]global.goldreward
add.v.v
pop.v.v global.gold
pushglb.v global.lv
pop.v.v self.tlvl
pushi.e 59
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e -5
pushi.e 15
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v

:[6]
pushi.e -5
pushi.e 3
push.v [array]global.goldreward
call.i string(argc=1)
pushi.e -5
pushi.e 3
push.v [array]global.xpreward
call.i string(argc=1)
push.s "obj_battlecontroller_286"@10707
conv.s.v
call.i scr_gettext(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.tlvl
pushglb.v global.lv
cmp.v.v NEQ
bf [8]

:[7]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.msg
push.s "obj_battlecontroller_287"@10709
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.i.v [array]global.msg
pushi.e 49
conv.i.v
call.i snd_play(argc=1)
popz.v

:[8]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.msg
push.s "/%"@58
add.s.v
pop.i.v [array]global.msg
pushglb.v global.extraintro
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 5
pop.v.i global.typer
pushglb.v global.currentsong
call.i caster_free(argc=1)
popz.v
pushi.e 235
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v
push.s "music/toomuch.ogg"@2728
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pushi.e -5
pushi.e 221
pop.v.i [array]global.flag
pushi.e -5
pushi.e 2
push.v [array]global.msg
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i global.myfight
pushi.e 2
pop.v.i global.mnfight
pushi.e -200
pop.v.i 744.x

:[10]
pushi.e 0
pop.v.i global.msc
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v local.writer
pushloc.v local.writer
conv.v.i
dup.i 0
push.v [stacktop]self.writingxend
pushi.e 20
add.i.v
pop.i.v [stacktop]self.writingxend
exit.i

:[11]
pushi.e 30
pop.v.i global.inv
pushi.e 283
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 30
pushglb.v global.lv
sub.v.i
pop.v.v global.inv

:[13]
pushi.e 361
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[14]
pushglb.v global.armor
pushi.e 44
cmp.i.v NEQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v global.inv
pushi.e 20
add.i.v
pop.v.v global.inv

:[18]
pushglb.v global.armor
pushi.e 44
cmp.i.v EQ
bf [20]

:[19]
push.v global.inv
pushi.e 30
add.i.v
pop.v.v global.inv

:[20]
pushglb.v global.armor
pushi.e 64
cmp.i.v EQ
bf [22]

:[21]
push.v global.inv
pushi.e 15
add.i.v
pop.v.v global.inv

:[22]
pushglb.v global.weapon
pushi.e 45
cmp.i.v EQ
bf [24]

:[23]
push.v global.inv
pushi.e 15
add.i.v
pop.v.v global.inv

:[24]
pushglb.v global.inv
pushi.e 15
cmp.i.v LT
bf [26]

:[25]
pushi.e 15
pop.v.i global.inv

:[26]
pushglb.v global.armor
pushi.e 46
cmp.i.v EQ
bt [28]

:[27]
pushglb.v global.armor
pushi.e 64
cmp.i.v EQ
b [29]

:[28]
push.e 1

:[29]
bf [41]

:[30]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [40]

:[34]
pushglb.v global.turn
pushi.e 1
add.i.v
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [39]

:[35]
push.v self.healed
pushi.e 0
cmp.i.v EQ
bf [39]

:[36]
pushi.e 1
pop.v.i self.healed
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [38]

:[37]
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp

:[38]
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v

:[39]
b [41]

:[40]
pushi.e 0
pop.v.i self.healed

:[41]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [169]

:[45]
pushi.e 1
pop.v.i global.typer
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [125]

:[46]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
pushi.e 0
cmp.i.v EQ
bf [125]

:[47]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [125]

:[48]
pushglb.v global.bmenuno
pushi.e 0
cmp.i.v EQ
bf [100]

:[49]
pushi.e -5
pushi.e 0
push.v [array]global.msg
pop.v.v global.tmsg
pushi.e -1
pop.v.i global.talked
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.bmenucoord
pushi.e -5
pushi.e 0
push.v [array]global.bmenucoord
pushi.e 1
add.i.v
pop.v.v global.bmenuno
pushi.e 752
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [58]

:[50]
push.v 752.spec
pushi.e 1
cmp.i.v EQ
bf [58]

:[51]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bf [58]

:[52]
pushi.e -5
pushi.e 0
push.v [array]global.msg
pop.v.v global.rmsg
pushi.e 0
pop.v.i global.mytarget
pushi.e 784
pushenv [54]

:[53]
pushi.e 3
pop.v.i self.halt

:[54]
popenv [53]
pushi.e 787
pushenv [56]

:[55]
pushi.e 3
pop.v.i self.halt

:[56]
popenv [55]
pushi.e 10
pop.v.i global.bmenuno
pushi.e 1000
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monstertype
add.v.i
pop.v.v global.msc
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
pushglb.v global.msc
call.i SCR_TEXT(argc=1)
popz.v
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.bmenucoord

:[58]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [61]

:[59]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bt [61]

:[60]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
b [62]

:[61]
push.e 1

:[62]
bf [79]

:[63]
pushi.e 3
pop.v.i global.msc
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.bmenucoord

:[65]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [67]

:[66]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.bmenucoord

:[67]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[72]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v GT
bf [79]

:[73]
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[75]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [77]

:[76]
pushi.e 2
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[77]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[79]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bf [93]

:[80]
pushi.e -5
pushi.e 0
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [92]

:[81]
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
pushi.e 79
conv.i.v
call.i script_execute(argc=1)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [83]

:[82]
pushi.e 0
pop.v.i global.msc
push.s " "@18
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "%%%"@16
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
b [91]

:[83]
push.s " "@18
pop.v.s local.pad
pushi.e 0
pop.v.i local.i

:[84]
pushloc.v local.i
pushi.e 8
cmp.i.v LT
bf [90]

:[85]
pushi.e 9
pop.v.i local.len
pushloc.v local.i
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [87]

:[86]
pushi.e 10
pop.v.i local.len

:[87]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]global.itemnameb
call.i string_length(argc=1)
pushloc.v local.len
cmp.v.v LT
bf [89]

:[88]
pushi.e -5
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]global.itemnameb
pushloc.v local.pad
add.v.v
pop.i.v [array]global.itemnameb
b [87]

:[89]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [84]

:[90]
pushi.e 9
pop.v.i global.msc

:[91]
b [93]

:[92]
pushi.e 0
pop.v.i global.bmenuno

:[93]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v EQ
bf [95]

:[94]
pushi.e 7
pop.v.i global.msc

:[95]
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 784
pushenv [97]

:[96]
pushi.e 3
pop.v.i self.halt

:[97]
popenv [96]
pushi.e 787
pushenv [99]

:[98]
pushi.e 3
pop.v.i self.halt

:[99]
popenv [98]
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
exit.i

:[100]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pop.v.v global.mytarget
pushi.e 3
pop.v.i 784.halt
pushi.e 3
pop.v.i 787.halt
pushi.e 1
pop.v.i global.myfight
pushi.e -200
pop.v.i 744.x
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 174
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[102]
pushglb.v global.bmenuno
pushi.e 10
cmp.i.v EQ
bf [106]

:[103]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pop.v.v global.talked
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monsterinstance
pop.v.v global.mntrg
pushglb.v global.mntrg
conv.v.i
pushenv [105]

:[104]
pushglb.v global.talked
pop.v.v self.whatiheard

:[105]
popenv [104]
pushi.e 3
pop.v.i 784.halt
pushi.e 3
pop.v.i 787.halt
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i global.myfight
pushi.e -200
pop.v.i 744.x
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[106]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bf [109]

:[107]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pop.v.v global.mytarget
pushi.e 3
pop.v.i 784.halt
pushi.e 3
pop.v.i 787.halt
pushi.e 10
pop.v.i global.bmenuno
pushi.e 1000
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monstertype
add.v.i
pop.v.v global.msc
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
pushglb.v global.msc
call.i SCR_TEXT(argc=1)
popz.v
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.bmenucoord

:[109]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v GTE
bf [111]

:[110]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v LT
b [112]

:[111]
push.e 0

:[112]
bf [119]

:[113]
push.v 1575.right
pushi.e 0
cmp.i.v EQ
bf [115]

:[114]
push.v 1575.left
pushi.e 0
cmp.i.v EQ
b [116]

:[115]
push.e 0

:[116]
bf [118]

:[117]
pushi.e 3
pop.v.i 784.halt
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushglb.v global.bmenuno
pushi.e 3
sub.i.v
pushi.e 8
mul.i.v
add.v.v
pop.v.v self.itempos
pushi.e -5
push.v self.itempos
conv.v.i
push.v [array]global.item
pop.v.v self.thisitemid
push.v self.thisitemid
push.v self.itempos
pushi.e 77
conv.i.v
call.i script_execute(argc=3)
popz.v
pushi.e 91
pop.v.i global.talked
pushi.e 4
pop.v.i global.myfight
pushi.e -200
pop.v.i 744.x
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v

:[118]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[119]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v EQ
bf [125]

:[120]
pushi.e 3
pop.v.i 784.halt
pushi.e -5
pushi.e 4
push.v [array]global.bmenucoord
pop.v.v global.mercyuse
pushglb.v global.mercyuse
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
pushi.e 179
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 90
pop.v.i global.talked

:[122]
push.v self.runaway
pushi.e 0
cmp.i.v EQ
bf [124]

:[123]
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v

:[124]
pushi.e 4
pop.v.i global.myfight
pushi.e -200
pop.v.i 744.x
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[125]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [139]

:[126]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [139]

:[127]
pushglb.v global.bmenuno
pushi.e 0
cmp.i.v NEQ
bf [129]

:[128]
pushglb.v global.bmenuno
pushi.e 6
cmp.i.v LT
b [130]

:[129]
push.e 0

:[130]
bf [132]

:[131]
pushi.e 3
pop.v.i 784.halt
pushi.e 3
pop.v.i 787.halt
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i global.typer
pushglb.v global.tmsg
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i global.msc
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[132]
pushglb.v global.bmenuno
pushi.e 10
cmp.i.v EQ
bf [137]

:[133]
pushi.e 3
pop.v.i 784.halt
pushi.e 3
pop.v.i 787.halt
pushi.e 2
pop.v.i global.bmenuno
pushi.e 1
pop.v.i global.typer
pushi.e 3
pop.v.i global.msc
pushi.e 752
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [136]

:[134]
push.v 752.spec
pushi.e 1
cmp.i.v EQ
bf [136]

:[135]
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i global.typer
pushglb.v global.rmsg
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i global.msc

:[136]
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[137]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bf [139]

:[138]
pushi.e 3
pop.v.i 784.halt
pushi.e 3
pop.v.i 787.halt
pushi.e 3
pop.v.i global.bmenuno
pushi.e 1
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[139]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [142]

:[140]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bt [142]

:[141]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
b [143]

:[142]
push.e 1

:[143]
bf [145]

:[144]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 32
add.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
call.i scr_battlemenu_cursor_y(argc=1)
pop.v.v 744.y

:[145]
pushglb.v global.bmenuno
pushi.e 10
cmp.i.v EQ
bf [152]

:[146]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v LTE
bf [148]

:[147]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 32
add.i.v
pop.v.v 744.x
b [149]

:[148]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 292
add.i.v
pop.v.v 744.x

:[149]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v LTE
bf [151]

:[150]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
call.i scr_battlemenu_cursor_y(argc=1)
pop.v.v 744.y
b [152]

:[151]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushi.e 3
sub.i.v
call.i scr_battlemenu_cursor_y(argc=1)
pop.v.v 744.y

:[152]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v GTE
bf [154]

:[153]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v LT
b [155]

:[154]
push.e 0

:[155]
bf [167]

:[156]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [158]

:[157]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
call.i scr_battlemenu_cursor_y(argc=1)
pop.v.v 744.y
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 32
add.i.v
pop.v.v 744.x
b [167]

:[158]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 1
cmp.i.v LTE
bf [160]

:[159]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 28
add.i.v
pop.v.v 744.y
b [161]

:[160]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
add.i.v
pop.v.v 744.y

:[161]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bt [163]

:[162]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v EQ
b [164]

:[163]
push.e 1

:[164]
bf [166]

:[165]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 32
add.i.v
pop.v.v 744.x
b [167]

:[166]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 280
add.i.v
pop.v.v 744.x

:[167]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v EQ
bf [169]

:[168]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 32
add.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 4
push.v [array]global.bmenucoord
call.i scr_battlemenu_cursor_y(argc=1)
pop.v.v 744.y

:[169]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [178]

:[170]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [178]

:[171]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
bf [173]

:[172]
pushi.e -5
pushi.e 21
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [174]

:[173]
push.e 0

:[174]
bf [178]

:[175]
pushi.e 784
conv.i.v
call.i instance_number(argc=1)
pushi.e 0
cmp.i.v GT
bf [177]

:[176]
push.v 784.originalstring
call.i string_length(argc=1)
pop.v.v 784.stringpos

:[177]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[178]
pushglb.v global.myfight
pushi.e 1
cmp.i.v EQ
bt [181]

:[179]
pushglb.v global.myfight
pushi.e 2
cmp.i.v EQ
bt [181]

:[180]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
b [182]

:[181]
push.e 1

:[182]
bf [184]

:[183]
pushi.e -400
pop.v.i 744.x

:[184]
pushglb.v global.mnfight
pushi.e 3
cmp.i.v EQ
bf [187]

:[185]
pushi.e 0
pop.v.i global.border
pushi.e 181
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v 759.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v EQ
bf [187]

:[186]
pushi.e 1
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.mnfight
push.v global.turn
pushi.e 1
add.i.v
pop.v.v global.turn
pushi.e -1
pop.v.i global.mercyuse

:[187]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [196]

:[188]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [196]

:[189]
push.v 784.halt
pushi.e 0
cmp.i.v GT
bf [196]

:[190]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 32
add.i.v
pushi.e -5
pushi.e 6
push.v [array]global.bmenucoord
pushi.e 252
mul.i.v
add.v.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 92
add.i.v
pop.v.v 744.y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [192]

:[191]
push.v 744.y
pushi.e 8
add.i.v
pop.v.v 744.y

:[192]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [196]

:[193]
pushi.e 0
pop.v.i global.heard
pushi.e 6
pushi.e -5
pushi.e 6
push.v [array]global.bmenucoord
add.v.i
pop.v.v global.talked
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [195]

:[194]
pushglb.v global.talked
pop.v.v self.whatiheard

:[195]
popenv [194]
pushi.e -200
pop.v.i 744.x
pushi.e 3
pop.v.i 784.halt
pushi.e 2
pop.v.i global.myfight

:[196]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [200]

:[197]
push.v self.runaway
pushi.e 0
cmp.i.v EQ
bf [200]

:[198]
pushi.e -200
pop.v.i 744.x
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [200]

:[199]
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v

:[200]
pushglb.v global.hp
pushi.e 0
cmp.i.v LTE
bf [202]

:[201]
pushi.e 171
conv.i.v
call.i script_execute(argc=1)
popz.v

:[202]
push.v self.currentplace
pushglb.v global.bmenuno
cmp.v.v LT
bf [205]

:[203]
pushi.e 112
conv.i.v
call.i snd_isplaying(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [205]

:[204]
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v

:[205]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [207]

:[206]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [208]

:[207]
push.e 0

:[208]
bf [end]

:[209]
pushi.e 2
pop.v.i global.turntimer

:[end]