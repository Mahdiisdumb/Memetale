.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushbltn.v self.room
pushi.e 20
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v self.room
pushi.e 170
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
push.s "obj_sign_room_66"@25547
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
pushbltn.v self.room
pushi.e 46
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_sign_room_90"@25549
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sign_room_91"@25551
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sign_room_92"@25553
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sign_room_93"@25555
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[7]
pushbltn.v self.room
pushi.e 49
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_sign_room_97"@25557
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
pushbltn.v self.room
pushi.e 50
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_sign_room_101"@25559
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sign_room_102"@25561
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sign_room_103"@25563
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[11]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_sign_room_107"@25564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sign_room_108"@25565
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sign_room_109"@25566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[13]
pushbltn.v self.room
pushi.e 54
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_sign_room_113"@25568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sign_room_114"@25570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sign_room_116"@25572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sign_room_117"@25574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[15]
pushbltn.v self.room
pushi.e 57
cmp.i.v EQ
bf [18]

:[16]
push.s "obj_sign_room_119"@25576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_sign_room_120"@25578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bt [20]

:[19]
pushbltn.v self.room
pushi.e 58
cmp.i.v EQ
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
push.s "obj_sign_room_121"@25580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
pushbltn.v self.room
pushi.e 61
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_sign_room_123"@25582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
pushbltn.v self.room
pushi.e 66
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_sign_room_124"@25584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[27]
pushbltn.v self.room
pushi.e 63
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_sign_room_126"@25586
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[29]
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_sign_room_130"@25587
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sign_room_131"@25589
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sign_room_132"@25591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sign_room_133"@25593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[31]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_sign_room_145"@25595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sign_room_146"@25597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[33]
pushbltn.v self.room
pushi.e 304
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_sign_room_151"@25599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
pushbltn.v self.room
pushi.e 105
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_sign_room_156"@25601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_sign_room_163"@25603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
pushbltn.v self.room
pushi.e 118
cmp.i.v EQ
bf [41]

:[40]
pushi.e 706
pop.v.i global.msc

:[41]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_sign_room_207"@25605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sign_room_208"@25607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[43]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
bf [48]

:[44]
push.s "obj_sign_room_220"@25609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.x
pushi.e 270
cmp.i.v GT
bf [46]

:[45]
push.s "obj_sign_room_221"@25611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.x
pushi.e 330
cmp.i.v GT
bf [48]

:[47]
push.s "obj_sign_room_222"@25613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
pushbltn.v self.room
pushi.e 185
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_sign_room_227"@25615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sign_room_228"@25617
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[50]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto

:[end]