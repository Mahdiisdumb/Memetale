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
push.s "obj_knock_room_62"@14724
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 117
cmp.i.v EQ
bf [12]

:[1]
push.s "obj_knock_room_65"@14726
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1028
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.s "obj_knock_room_67"@14728
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_knock_room_69"@14730
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_knock_room_71"@14732
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [12]

:[11]
push.s "obj_knock_room_75"@14734
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
pushbltn.v self.room
pushi.e 69
cmp.i.v EQ
bf [14]

:[13]
push.v self.x
pushi.e 200
cmp.i.v GT
b [15]

:[14]
push.e 0

:[15]
bf [18]

:[16]
push.s "obj_knock_room_81"@14736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_knock_room_82"@14738
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_knock_room_83"@14740
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.read
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.s "obj_knock_room_86"@14742
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
pushbltn.v self.room
pushi.e 69
cmp.i.v EQ
bf [20]

:[19]
push.v self.x
pushi.e 200
cmp.i.v LT
b [21]

:[20]
push.e 0

:[21]
bf [28]

:[22]
push.s "obj_knock_room_91"@14744
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_knock_room_93"@14746
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
push.v self.read
pushi.e 1
cmp.i.v GT
bf [26]

:[25]
push.s "obj_knock_room_95"@14748
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [28]

:[27]
push.s "obj_knock_room_99"@14750
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
pushbltn.v self.room
pushi.e 185
cmp.i.v EQ
bf [37]

:[29]
push.v self.x
pushi.e 166
cmp.i.v LT
bf [31]

:[30]
pushi.e 860
pop.v.i global.msc

:[31]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [33]

:[32]
pushi.e 862
pop.v.i global.msc

:[33]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [35]

:[34]
pushi.e 864
pop.v.i global.msc

:[35]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [37]

:[36]
pushi.e 0
pop.v.i global.msc
push.s "obj_knock_room_113"@14751
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]