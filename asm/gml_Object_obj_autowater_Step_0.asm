.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [13]

:[4]
pushi.e 0
pop.v.i global.msc
pushbltn.v self.room
pushi.e 137
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_autowater_81"@10482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
pushbltn.v self.room
pushi.e 138
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_autowater_85"@10484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
pushbltn.v self.room
pushi.e 139
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_autowater_89"@10486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_autowater_90"@10488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[10]
pushi.e 1576
pushenv [12]

:[11]
pushi.e 1131
pop.v.i self.dsprite
pushi.e 1133
pop.v.i self.rsprite
pushi.e 1132
pop.v.i self.usprite
pushi.e 1134
pop.v.i self.lsprite

:[12]
popenv [11]
pushi.e 2
pop.v.i self.con
call.i scr_regulartext(argc=0)
popz.v
pushi.e 1
pop.v.i global.interact

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [end]

:[17]
pushi.e 0
pushi.e -5
pushi.e 366
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]