.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 17
pop.v.i global.typer
pushi.e 3
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushbltn.v self.room
pushi.e 50
cmp.i.v EQ
bf [3]

:[1]
push.s "obj_sans_room_114"@23669
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_115"@23671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sans_room_116"@23673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sans_room_117"@23675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sans_room_118"@23677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sans_room_119"@23679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sans_room_120"@23681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.s "obj_sans_room_123"@23683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushbltn.v self.room
pushi.e 52
cmp.i.v EQ
bf [9]

:[4]
push.s "obj_sans_room_135"@23687
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_136"@23689
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sans_room_137"@23691
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sans_room_138"@23693
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sans_room_139"@23695
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sans_room_140"@23697
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sans_room_141"@23699
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 3
cmp.i.v GTE
bf [6]

:[5]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.s "obj_sans_room_145"@23701
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bf [11]

:[10]
pushi.e 235
pop.v.i global.msc

:[11]
pushbltn.v self.room
pushi.e 55
cmp.i.v EQ
bf [19]

:[12]
pushi.e -5
pushi.e 58
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_sans_room_160"@23703
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_161"@23705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [15]

:[14]
push.s "obj_sans_room_166"@23707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_167"@23708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[15]
call.i scr_murderlv(argc=0)
pushi.e 3
cmp.i.v GTE
bf [19]

:[16]
pushi.e -5
pushi.e 254
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_sans_room_175"@23710
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_176"@23712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sans_room_177"@23713
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sans_room_178"@23714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
b [19]

:[18]
push.s "obj_sans_room_182"@23716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_183"@23718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[19]
pushbltn.v self.room
pushi.e 60
cmp.i.v EQ
bf [22]

:[20]
push.s "obj_sans_room_191"@23720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_192"@23722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sans_room_193"@23724
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sans_room_194"@23726
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 4
cmp.i.v GTE
bf [22]

:[21]
push.s "obj_sans_room_198"@23728
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bf [32]

:[23]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "M1"@48048
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.M1
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e -5
pushi.e 63
push.v [array]global.flag
pushi.e 0
cmp.i.v GTE
bf [25]

:[24]
push.s "obj_sans_room_211"@23730
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_212"@23732
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sans_room_213"@23734
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[25]
pushi.e -5
pushi.e 63
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.v self.M1
pushi.e 1
cmp.i.v GT
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.s "obj_sans_room_217"@23736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_218"@23738
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sans_room_219"@23740
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[30]
pushi.e -5
pushi.e 63
push.v [array]global.flag
pushi.e 5
cmp.i.v GT
bf [32]

:[31]
push.s "obj_sans_room_223"@23742
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_224"@23744
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[32]
pushbltn.v self.room
pushi.e 64
cmp.i.v EQ
bf [35]

:[33]
push.s "obj_sans_room_237"@23748
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v 1025.talkedto
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
push.s "obj_sans_room_238"@23750
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
pushbltn.v self.room
pushi.e 67
cmp.i.v EQ
bf [45]

:[36]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "PK"@48047
conv.s.v
push.s "Papyrus"@6857
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.PK
call.i ossafe_ini_close(argc=0)
popz.v
push.s "obj_sans_room_246"@23752
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_247"@23754
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.PK
pushi.e 0
cmp.i.v GT
bf [38]

:[37]
push.s "obj_sans_room_250"@23756
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_251"@23758
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[38]
call.i scr_murderlv(argc=0)
pushi.e 5
cmp.i.v GTE
bf [40]

:[39]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [45]

:[42]
push.s "obj_sans_room_256"@23760
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_257"@23762
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sans_room_258"@23763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sans_room_259"@23765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sans_room_260"@23767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sans_room_261"@23769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sans_room_262"@23771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sans_room_263"@23772
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sans_room_264"@23774
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.s_click
pushi.e 1576
pushenv [44]

:[43]
pushi.e 1
pop.v.i self.uncan

:[44]
popenv [43]

:[45]
pushbltn.v self.room
pushi.e 95
cmp.i.v EQ
bf [50]

:[46]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
pushi.e 551
pop.v.i global.msc

:[48]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e 0
pop.v.i global.msc
push.s "obj_sans_room_280"@23776
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_room_281"@23778
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[50]
pushbltn.v self.room
pushi.e 158
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1529
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 685
pop.v.i global.msc

:[52]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v 1024.talkedto
pushi.e 1
add.i.v
pop.v.v 1024.talkedto

:[end]