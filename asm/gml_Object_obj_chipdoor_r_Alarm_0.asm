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
push.s "obj_chipdoor_r_84"@10998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.sprite_index
pushi.e 1765
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_chipdoor_r_85"@10999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushglb.v global.plot
pushi.e 132
cmp.i.v GT
bf [4]

:[3]
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.s "obj_chipdoor_r_89"@11000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
pushglb.v global.plot
pushi.e 163
cmp.i.v GT
bf [9]

:[8]
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.s "obj_chipdoor_r_94"@11001
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

:[end]