.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i 758.visible
pushi.e 1
pop.v.i self.writing
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [2]

:[1]
push.v self.wind
call.i caster_free(argc=1)
popz.v
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 70
pop.v.i global.typer
pushi.e 0
pop.v.i self.writing
push.s "obj_flowey_wilt_470"@12925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 16
pop.v.i self.con

:[2]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [4]

:[3]
push.d 0.25
conv.d.v
push.v self.wind
call.i caster_set_volume(argc=2)
popz.v
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 68
pop.v.i global.typer
push.s "obj_flowey_wilt_481"@12927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 12
pop.v.i self.con

:[4]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [6]

:[5]
push.d 0.5
conv.d.v
push.v self.wind
call.i caster_set_volume(argc=2)
popz.v
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 68
pop.v.i global.typer
push.s "obj_flowey_wilt_492"@12929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 11
pop.v.i self.con

:[6]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 68
pop.v.i global.typer
push.s "obj_flowey_wilt_503"@12931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_wilt_504"@12933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
push.v self.x
pushi.e 60
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 10
pop.v.i self.con

:[8]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 68
pop.v.i global.typer
push.s "obj_flowey_wilt_514"@12935
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 9
pop.v.i self.con

:[10]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 68
pop.v.i global.typer
push.s "obj_flowey_wilt_524"@12937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pop.v.i self.con

:[12]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 69
pop.v.i global.typer
push.s "obj_flowey_wilt_534"@12939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 7
pop.v.i self.con

:[14]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 69
pop.v.i global.typer
push.s "obj_flowey_wilt_545"@12941
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 6
pop.v.i self.con

:[16]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 69
pop.v.i global.typer
push.s "obj_flowey_wilt_556"@12943
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.con

:[18]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 69
pop.v.i global.typer
push.s "obj_flowey_wilt_568"@12945
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[20]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 69
pop.v.i global.typer
push.s "obj_flowey_wilt_579"@12947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_wilt_580"@12949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
push.v self.x
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.con

:[22]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 68
pop.v.i global.typer
push.s "obj_flowey_wilt_591"@12951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_wilt_592"@12953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
push.v self.x
pushi.e 60
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[24]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [end]

:[25]
pushi.e 0
pop.v.i global.msc
pushi.e 68
pop.v.i global.typer
push.s "obj_flowey_wilt_601"@12954
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_wilt_602"@12956
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_flowey_wilt_603"@12958
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_flowey_wilt_604"@12960
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
push.v self.x
pushi.e 60
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.con

:[end]