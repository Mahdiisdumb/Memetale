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
push.s "obj_undynetrash_69"@29448
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 119
cmp.i.v EQ
bf [5]

:[1]
push.s "obj_undynetrash_72"@29450
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 92
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
bf [5]

:[2]
pushi.e 3
pushi.e -5
pushi.e 92
pop.v.i [array]global.flag
push.s "obj_undynetrash_76"@29452
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynetrash_77"@29454
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynetrash_78"@29456
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1145
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[3]
push.v 1145.open
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i 1145.open

:[5]
pushbltn.v self.room
pushi.e 141
cmp.i.v EQ
bf [13]

:[6]
push.s "obj_undynetrash_87"@29458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 126
cmp.i.v LT
bf [8]

:[7]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.s "obj_undynetrash_88"@29459
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 10
cmp.i.v GTE
bf [13]

:[12]
push.s "obj_undynetrash_91"@29461
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynetrash_92"@29463
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynetrash_93"@29465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynetrash_94"@29467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[13]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.object_index
conv.v.i
dup.i 0
push.v [stacktop]self.talkedto
pushi.e 1
add.i.v
pop.i.v [stacktop]self.talkedto

:[end]