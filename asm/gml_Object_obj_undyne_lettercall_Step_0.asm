.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 40
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
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
push.s "obj_undyne_lettercall_113"@28656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_undyne_lettercall_115"@28658
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyne_lettercall_116"@28660
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyne_lettercall_117"@28662
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyne_lettercall_118"@28664
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undyne_lettercall_119"@28666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undyne_lettercall_120"@28668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undyne_lettercall_121"@28669
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undyne_lettercall_122"@28670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 6
pop.v.i self.con

:[4]
push.v self.con
pushi.e 6
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
pushi.e 1
pushi.e -5
pushi.e 8
pop.v.i [array]global.flag
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 8
cmp.i.v LT
bf [10]

:[9]
pushi.e 8
pushi.e -5
pushi.e 493
pop.v.i [array]global.flag

:[10]
pushi.e 0
pop.v.i global.interact
pushi.e 7
pop.v.i self.con

:[end]