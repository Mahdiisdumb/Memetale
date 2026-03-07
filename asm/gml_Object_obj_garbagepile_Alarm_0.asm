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
push.s "obj_garbagepile_70"@13663
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_garbagepile_71"@13665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
push.v self.talkedto
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 22
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.s "obj_garbagepile_72"@13667
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
push.v self.talkedto
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_garbagepile_73"@13669
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.talkedto
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_garbagepile_74"@13671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.talkedto
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_garbagepile_75"@13673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.v self.talkedto
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_garbagepile_76"@13675
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
push.v self.object_index
conv.v.i
dup.i 0
push.v [stacktop]self.talkedto
pushi.e 1
add.i.v
pop.i.v [stacktop]self.talkedto

:[end]