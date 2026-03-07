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
push.s "obj_darkfridge_116"@11360
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.x
pushi.e 242
cmp.i.v GT
bf [3]

:[1]
push.s "obj_darkfridge_122"@11362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 490
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_darkfridge_126"@11364
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
push.v self.x
pushi.e 340
cmp.i.v GT
bf [6]

:[4]
push.s "obj_darkfridge_133"@11365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 490
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_darkfridge_136"@11367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.x
pushi.e 440
cmp.i.v GT
bf [9]

:[7]
push.s "obj_darkfridge_142"@11368
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 490
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_darkfridge_145"@11370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.x
pushi.e 530
cmp.i.v GT
bf [12]

:[10]
push.s "obj_darkfridge_151"@11371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 490
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_darkfridge_154"@11373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
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