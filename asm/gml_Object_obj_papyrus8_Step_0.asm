.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1034
conv.i.v
pushi.e 110
conv.i.v
push.v 1576.x
pushi.e 200
add.i.v
call.i instance_create(argc=3)
pop.v.v self.papyrus
pushi.e 1423
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 120
pop.v.i 1576.y
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
push.d 0.01
push.v self.fade
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.camera
pushi.e 2
pop.v.i self.conversation
pushi.e 0
pop.v.i global.border
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [3]

:[2]
pushglb.v global.maxhp
pop.v.v global.hp

:[3]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [7]

:[4]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.camera
pushi.e 100
add.i.v
cmp.v.v LT
bf [6]

:[5]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 3
add.i.v
pop.i.v [array]self.view_xview
b [7]

:[6]
pushi.e 3
pop.v.i self.conversation

:[7]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1357
conv.i.v
pushi.e 120
conv.i.v
push.v 1576.x
call.i instance_create(argc=3)
pop.v.v self.chara
pushi.e 1116
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.d
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 1421
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.d
pushi.e 1
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 900
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 900
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 4
pop.v.i self.conversation

:[9]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [13]

:[10]
push.v self.chara
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.9
cmp.d.v LT
bf [12]

:[11]
push.v self.chara
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.01
add.d.v
pop.i.v [stacktop]self.image_alpha
b [13]

:[12]
pushi.e 5
pop.v.i self.conversation

:[13]
push.v self.conversation
pushi.e 5
cmp.i.v EQ
bf [17]

:[14]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.9
cmp.d.v LT
bf [16]

:[15]
push.v self.papyrus
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.01
add.d.v
pop.i.v [stacktop]self.image_alpha
b [17]

:[16]
pushi.e 6
pop.v.i self.conversation

:[17]
push.v self.conversation
pushi.e 6
cmp.i.v EQ
bf [19]

:[18]
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 7
pop.v.i self.conversation

:[19]
push.v self.conversation
pushi.e 8
cmp.i.v EQ
bf [34]

:[20]
push.v self.chara
conv.v.i
push.v [stacktop]self.y
pop.v.v 1576.y
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "PS"@50122
conv.s.v
push.s "Papyrus"@6857
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.PP
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.s "obj_papyrus8_184"@20673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus8_185"@20675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.PP
pushi.e 0
cmp.i.v GT
bf [22]

:[21]
push.s "obj_papyrus8_188"@20677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus8_189"@20679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus8_190"@20681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus8_191"@20683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus8_192"@20685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus8_193"@20687
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus8_194"@20689
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus8_195"@20691
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papyrus8_196"@20693
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_papyrus8_197"@20695
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_papyrus8_198"@20697
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_papyrus8_199"@20699
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
b [23]

:[22]
push.s "obj_papyrus8_202"@20701
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus8_203"@20703
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus8_204"@20705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus8_205"@20707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus8_206"@20709
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus8_207"@20711
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus8_208"@20713
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus8_209"@20715
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papyrus8_210"@20717
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_papyrus8_211"@20719
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_papyrus8_212"@20721
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_papyrus8_213"@20723
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_papyrus8_214"@20725
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_papyrus8_215"@20727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_papyrus8_216"@20729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_papyrus8_217"@20731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_papyrus8_218"@20733
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_papyrus8_219"@20735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_papyrus8_220"@20737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_papyrus8_221"@20739
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_papyrus8_222"@20741
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_papyrus8_223"@20743
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_papyrus8_224"@20745
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg

:[23]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e -1
cmp.i.v EQ
bf [26]

:[24]
push.s "obj_papyrus8_227"@20747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus8_228"@20749
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus8_229"@20751
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus8_230"@20753
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus8_231"@20755
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus8_232"@20757
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus8_233"@20759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.PP
pushi.e 0
cmp.i.v GT
bf [26]

:[25]
push.s "obj_papyrus8_237"@20761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus8_238"@20763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus8_239"@20765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus8_240"@20767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus8_241"@20769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus8_242"@20771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus8_243"@20773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus8_244"@20775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus8_245"@20777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus8_246"@20779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg

:[26]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e -2
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_papyrus8_252"@20781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus8_253"@20783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus8_254"@20785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus8_255"@20787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus8_256"@20789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus8_257"@20791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus8_258"@20793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus8_259"@20795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[28]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e -3
cmp.i.v EQ
bf [30]

:[29]
pushi.e 544
pop.v.i global.msc
push.d 13.5
pop.v.d self.conversation

:[30]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_papyrus8_271"@20797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 14
pop.v.i self.conversation
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 90
pop.v.i self.conversation

:[34]
push.v self.conversation
pushi.e 14
cmp.i.v EQ
bf [36]

:[35]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [37]

:[36]
push.e 0

:[37]
bf [44]

:[38]
push.v 784.stringno
pushi.e 14
cmp.i.v GT
bf [40]

:[39]
push.v 784.stringno
pushi.e 18
cmp.i.v LT
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 1422
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
b [44]

:[43]
pushi.e 1421
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[44]
push.v self.conversation
pushi.e 14
cmp.i.v EQ
bf [46]

:[45]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 15
pop.v.i self.conversation
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v

:[49]
push.v self.conversation
pushi.e 15
cmp.i.v EQ
bf [51]

:[50]
pushi.e 1
pop.v.i global.interact

:[51]
push.v self.conversation
pushi.e 16
cmp.i.v EQ
bf [53]

:[52]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
push.v self.chara
conv.v.i
push.v [stacktop]self.x
pop.v.v 1576.x
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.seriousbattle
pushi.e 27
pop.v.i global.battlegroup
pushi.e 0
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.mercy
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 17
pop.v.i self.conversation
pushi.e 1
pop.v.i 974.s

:[56]
pushi.e -5
pushi.e 68
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [59]

:[57]
push.v self.conversation
pushi.e 17
cmp.i.v EQ
bf [59]

:[58]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [66]

:[61]
pushi.e 0
pop.v.i self.room_persistent
pushi.e 0
pop.v.i global.mercy
pushi.e 1
pop.v.i global.interact
push.v self.chara
conv.v.i
push.v [stacktop]self.xstart
push.v self.chara
conv.v.i
pop.v.v [stacktop]self.x
push.v self.chara
conv.v.i
push.v [stacktop]self.x
pop.v.v 1576.x
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
bf [63]

:[62]
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 75
conv.i.v
call.i room_goto(argc=1)
popz.v
exit.i

:[63]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_alpha

:[65]
push.d 17.5
pop.v.d self.conversation
push.s "music/papyrus.ogg"@2632
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong

:[66]
push.v self.conversation
push.d 17.5
cmp.d.v EQ
bf [68]

:[67]
pushi.e 1
pop.v.i global.interact

:[68]
push.v self.conversation
push.d 18.5
cmp.d.v EQ
bf [76]

:[69]
pushi.e 1
pop.v.i global.interact
push.v self.chara
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.03
cmp.d.v GT
bf [71]

:[70]
push.v self.chara
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.03
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.papyrus
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.03
sub.d.v
pop.i.v [stacktop]self.image_alpha
b [76]

:[71]
pushi.e 19
pop.v.i self.conversation
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [73]

:[72]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1100
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_alpha

:[73]
push.v self.chara
conv.v.i
pushenv [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
popenv [74]

:[76]
push.v self.conversation
pushi.e 19
cmp.i.v EQ
bf [80]

:[77]
pushi.e 1
pop.v.i global.interact
push.v 974.fog_alpha
push.d 0.02
cmp.d.v GT
bf [79]

:[78]
push.v 974.fog_alpha
push.d 0.02
sub.d.v
pop.v.v 974.fog_alpha
b [80]

:[79]
pushi.e 0
pop.v.i 974.fog_alpha
pushi.e 20
pop.v.i self.conversation

:[80]
push.v self.conversation
pushi.e 20
cmp.i.v EQ
bf [86]

:[81]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag

:[83]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
pushi.e 25
pop.v.i self.conversation
b [86]

:[85]
pushi.e 21
pop.v.i self.conversation
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[86]
push.v self.conversation
pushi.e 22
cmp.i.v EQ
bf [89]

:[87]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "PS"@50122
conv.s.v
push.s "Papyrus"@6857
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.PS
push.v self.PS
pushi.e 1
add.i.v
push.s "PS"@50122
conv.s.v
push.s "Papyrus"@6857
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 540
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.s "obj_papyrus8_386"@20799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.npcdir
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.d 22.5
pop.v.d self.conversation
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
push.d 22.4
pop.v.d self.conversation

:[89]
push.v self.conversation
push.d 22.4
cmp.d.v EQ
bf [91]

:[90]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
push.d 21.6
pop.v.d self.conversation
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[91]
push.v self.conversation
push.d 22.5
cmp.d.v EQ
bf [93]

:[92]
pushglb.v global.msc
pushi.e 541
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
push.d 21.6
pop.v.d self.conversation
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[96]
push.v self.conversation
push.d 22.6
cmp.d.v EQ
bf [98]

:[97]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [103]

:[100]
pushi.e 0
pop.v.i global.msc
push.s "obj_papyrus8_414"@20801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus8_415"@20803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus8_416"@20805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
push.s "obj_papyrus8_419"@20807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus8_420"@20809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[102]
push.s "obj_papyrus8_422"@20811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus8_423"@20813
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus8_424"@20815
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.volly
push.d 22.7
pop.v.d self.conversation

:[103]
push.v self.conversation
push.d 22.7
cmp.d.v EQ
bf [108]

:[104]
push.v self.volly
push.d 0.06
cmp.d.v GT
bf [106]

:[105]
push.v self.volly
push.d 0.02
sub.d.v
pop.v.v self.volly
b [107]

:[106]
pushi.e 0
pop.v.i self.volly
push.d 22.8
pop.v.d self.conversation
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v

:[107]
push.v self.volly
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[108]
push.v self.conversation
push.d 22.8
cmp.d.v EQ
bf [110]

:[109]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [111]

:[110]
push.e 0

:[111]
bf [115]

:[112]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
push.s "obj_papyrus8_441"@20817
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus8_442"@20819
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus8_443"@20821
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus8_444"@20823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus8_445"@20825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus8_446"@20827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus8_447"@20829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus8_448"@20831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
push.s "obj_papyrus8_449"@20833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[114]
push.s "obj_papyrus8_450"@20835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 1
pushi.e -5
pushi.e 88
pop.v.i [array]global.flag
pushi.e 23
pop.v.i self.conversation

:[115]
push.v self.conversation
pushi.e 23
cmp.i.v EQ
bf [117]

:[116]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [118]

:[117]
push.e 0

:[118]
bf [122]

:[119]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.5
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.npcdir
push.d -3.5
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.hspeed
push.v self.papyrus
conv.v.i
pushenv [121]

:[120]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[121]
popenv [120]
pushi.e 24
pop.v.i self.conversation
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[122]
push.v self.conversation
pushi.e 25
cmp.i.v EQ
bf [128]

:[123]
pushi.e 92
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [125]

:[124]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mmm
push.d 0.02
push.v self.mmm
conv.v.i
pop.v.d [stacktop]self.fadespeed

:[125]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.camera
cmp.v.v GT
bf [127]

:[126]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 3
sub.i.v
pop.i.v [array]self.view_xview
b [128]

:[127]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 27
pop.v.i self.conversation

:[128]
push.v self.conversation
pushi.e 27
cmp.i.v EQ
bf [130]

:[129]
pushi.e 101
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[130]
push.v self.conversation
pushi.e 90
cmp.i.v EQ
bf [132]

:[131]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [133]

:[132]
push.e 0

:[133]
bf [135]

:[134]
push.s "music/papyrusboss.ogg"@2832
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.2
conv.d.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
push.v 1576.x
pop.v.v self.rem_dx
pushi.e 91
pop.v.i self.conversation
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.chara
conv.v.i
pop.v.d [stacktop]self.image_speed

:[135]
push.v self.conversation
pushi.e 92
cmp.i.v EQ
bf [137]

:[136]
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 93
pop.v.i self.conversation
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[137]
push.v self.conversation
pushi.e 94
cmp.i.v EQ
bf [139]

:[138]
push.s "obj_papyrus8_515"@20837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus8_516"@20839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus8_517"@20841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus8_518"@20843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus8_519"@20845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus8_520"@20847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus8_521"@20849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus8_522"@20851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus8_523"@20853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus8_524"@20855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papyrus8_525"@20857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_papyrus8_526"@20859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_papyrus8_527"@20861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 95
pop.v.i self.conversation

:[139]
push.v self.conversation
pushi.e 95
cmp.i.v EQ
bf [141]

:[140]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [142]

:[141]
push.e 0

:[142]
bf [144]

:[143]
pushi.e 96
pop.v.i self.conversation
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.chara
conv.v.i
pop.v.d [stacktop]self.image_speed

:[144]
push.v self.conversation
pushi.e 97
cmp.i.v EQ
bf [146]

:[145]
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 98
pop.v.i self.conversation
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[146]
push.v self.conversation
pushi.e 99
cmp.i.v EQ
bf [148]

:[147]
push.s "obj_papyrus8_555"@20863
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus8_556"@20865
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus8_557"@20867
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus8_558"@20869
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus8_559"@20871
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus8_560"@20873
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus8_561"@20875
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 100
pop.v.i self.conversation

:[148]
push.v self.conversation
pushi.e 100
cmp.i.v EQ
bf [150]

:[149]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [151]

:[150]
push.e 0

:[151]
bf [153]

:[152]
pushi.e 101
pop.v.i self.conversation
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.chara
conv.v.i
pop.v.d [stacktop]self.image_speed

:[153]
push.v self.conversation
pushi.e 102
cmp.i.v EQ
bf [155]

:[154]
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.chara
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 103
pop.v.i self.conversation
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[155]
push.v self.conversation
pushi.e 104
cmp.i.v EQ
bf [end]

:[156]
push.s "obj_papyrus8_590"@20877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus8_591"@20879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus8_592"@20881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus8_593"@20883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 14
pop.v.i self.conversation

:[end]