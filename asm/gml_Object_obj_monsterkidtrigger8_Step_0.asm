.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.con

:[2]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_monsterkidtrigger8_85"@18505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger8_86"@18507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger8_87"@18509
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger8_88"@18511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger8_89"@18513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger8_90"@18515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 4
pop.v.i self.con

:[4]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [6]

:[5]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
pushi.e 5
pop.v.i self.con
pushi.e 120
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]