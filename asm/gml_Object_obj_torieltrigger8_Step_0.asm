.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 2
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
bf [9]

:[4]
pushi.e 3
pop.v.i global.interact
pushi.e 128
pop.v.i 1576.y
pushi.e 0
pop.v.i 1576.visible
pushi.e 1203
pop.v.i 863.sprite_index
pushi.e 1203
pop.v.i 863.lsprite
pushi.e 1576
pushenv [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 27
conv.i.v
call.i path_start(argc=4)
popz.v

:[6]
popenv [5]
pushi.e 863
pushenv [8]

:[7]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 27
conv.i.v
call.i path_start(argc=4)
popz.v

:[8]
popenv [7]
pushi.e 3
pop.v.i self.conversation

:[9]
pushi.e 863
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[10]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v 863.path_position
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.myinteract
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
pushi.e 2
pop.v.i global.faceemotion
pushi.e -5
pushi.e 44
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 45
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e -5
pushi.e 44
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_torieltrigger8_77"@27649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
pushi.e -5
pushi.e 44
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_torieltrigger8_78"@27651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
pushi.e -5
pushi.e 44
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_torieltrigger8_79"@27653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
pushi.e -5
pushi.e 44
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_torieltrigger8_80"@27655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
pushi.e -5
pushi.e 44
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_torieltrigger8_81"@27657
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
pushi.e -5
pushi.e 44
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [26]

:[25]
push.s "obj_torieltrigger8_82"@27659
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
pushi.e -5
pushi.e 44
push.v [array]global.flag
pushi.e 7
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_torieltrigger8_83"@27661
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
pushi.e -5
pushi.e 44
push.v [array]global.flag
pushi.e 8
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_torieltrigger8_84"@27663
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
pushi.e -5
pushi.e 44
push.v [array]global.flag
pushi.e 9
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_torieltrigger8_85"@27665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
pushi.e -5
pushi.e 44
push.v [array]global.flag
pushi.e 9
cmp.i.v GT
bf [34]

:[33]
push.s "obj_torieltrigger8_86"@27667
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
pushglb.v global.plot
pushi.e 19
cmp.i.v LT
bf [36]

:[35]
pushi.e 0
pushi.e -5
pushi.e 44
pop.v.i [array]global.flag
push.s "obj_torieltrigger8_90"@27669
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torieltrigger8_91"@27671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[36]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 2
pop.v.i self.conversation

:[end]