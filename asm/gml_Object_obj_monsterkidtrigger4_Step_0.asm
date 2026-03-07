.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 1117
pushenv [3]

:[2]
push.d 0.25
pop.v.d self.image_speed

:[3]
popenv [2]
pushi.e 1117
pushenv [5]

:[4]
push.v self.rtsprite
pop.v.v self.sprite_index

:[5]
popenv [4]
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
push.s "obj_monsterkidtrigger4_66"@18389
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger4_67"@18391
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger4_68"@18393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger4_69"@18395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 2
pop.v.i self.con

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
pushi.e 3
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 91
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]