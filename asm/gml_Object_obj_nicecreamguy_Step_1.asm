.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.image_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 1377
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.conversation

:[5]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j

:[7]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.v self.j
pushi.e 30
cmp.i.v GT
b [10]

:[9]
push.e 0

:[10]
bf [16]

:[11]
pushi.e 1
pop.v.i global.interact
pushi.e 1378
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 3
pop.v.i self.myinteract
push.s "obj_nicecreamguy_288"@19061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 96
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_nicecreamguy_291"@19063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_nicecreamguy_292"@19065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_nicecreamguy_293"@19067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_nicecreamguy_294"@19069
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_nicecreamguy_295"@19071
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_nicecreamguy_296"@19073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[13]
pushbltn.v self.room
pushi.e 181
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1376
pop.v.i self.sprite_index
push.s "obj_nicecreamguy_302"@19075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 3
pop.v.i self.conversation

:[16]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [28]

:[20]
pushi.e 1529
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.myinteract
pushi.e 230
pop.v.i global.msc
pushbltn.v self.room
pushi.e 96
cmp.i.v EQ
bf [22]

:[21]
pushi.e 232
pop.v.i global.msc

:[22]
pushbltn.v self.room
pushi.e 181
cmp.i.v EQ
bf [24]

:[23]
pushi.e 273
pop.v.i global.msc

:[24]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_nicecreamguy_320"@19076
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
pop.v.v self.mydialoguer
pushi.e 4
pop.v.i self.conversation
pushi.e 1
pushi.e -5
pushi.e 60
pop.v.i [array]global.flag
pushbltn.v self.room
pushi.e 96
cmp.i.v EQ
bf [26]

:[25]
pushi.e 8
pushi.e -5
pushi.e 79
pop.v.i [array]global.flag

:[26]
pushbltn.v self.room
pushi.e 181
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pushi.e -5
pushi.e 250
pop.v.i [array]global.flag

:[28]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [30]

:[29]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [31]

:[30]
push.e 0

:[31]
bf [35]

:[32]
push.v 784.halt
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.d 0.2
pop.v.d self.image_speed
b [35]

:[34]
pushi.e 0
pop.v.i self.image_speed

:[35]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bt [37]

:[36]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [end]

:[39]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[end]