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
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.s "obj_colorlever_77"@11052
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 481
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_colorlever_81"@11054
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushi.e -5
pushi.e 481
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 3
pushi.e -5
pushi.e 481
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.red
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_colorlever_89"@11056
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [10]

:[6]
push.s "obj_colorlever_98"@11058
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 482
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_colorlever_102"@11060
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
pushi.e -5
pushi.e 482
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 3
pushi.e -5
pushi.e 482
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.blu
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_colorlever_110"@11062
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [15]

:[11]
push.s "obj_colorlever_119"@11064
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 483
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_colorlever_123"@11066
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
pushi.e -5
pushi.e 483
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 3
pushi.e -5
pushi.e 483
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.gre
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_colorlever_131"@11068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [20]

:[16]
push.s "obj_colorlever_140"@11070
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 484
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_colorlever_144"@11072
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
pushi.e -5
pushi.e 484
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
pushi.e 3
pushi.e -5
pushi.e 484
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.yel
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_colorlever_152"@11074
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]