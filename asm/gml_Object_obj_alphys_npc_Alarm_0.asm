.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
pushi.e 6
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 8
pop.v.i global.faceemotion
push.s "obj_alphys_npc_76"@9589
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphys_npc_77"@9591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 126
cmp.i.v GT
bf [2]

:[1]
pushbltn.v self.room
pushi.e 141
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
push.s "obj_alphys_npc_82"@9593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
pushbltn.v self.room
pushi.e 211
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 6
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.faceemotion
push.s "obj_alphys_npc_91"@9595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
pushbltn.v self.room
pushi.e 212
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 6
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.faceemotion
push.s "obj_alphys_npc_99"@9596
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
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