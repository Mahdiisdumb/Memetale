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
push.s "obj_torn_note_63"@27843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 246
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_torn_note_67"@27845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torn_note_68"@27847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torn_note_69"@27849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[2]
pushbltn.v self.room
pushi.e 249
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_torn_note_74"@27850
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torn_note_75"@27852
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torn_note_76"@27853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[4]
pushbltn.v self.room
pushi.e 253
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_torn_note_81"@27854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torn_note_82"@27856
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torn_note_83"@27857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[6]
pushbltn.v self.room
pushi.e 259
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_torn_note_88"@27858
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torn_note_89"@27860
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torn_note_90"@27861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[8]
pushbltn.v self.room
pushi.e 257
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_torn_note_95"@27862
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torn_note_96"@27864
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torn_note_97"@27865
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[10]
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