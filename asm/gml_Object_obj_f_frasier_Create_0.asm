.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i self.con
push.s "obj_f_frasier_32"@12679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_f_frasier_33"@12680
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_f_frasier_34"@12681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_f_frasier_35"@12682
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_f_frasier_36"@12683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 117
pop.v.i global.typer
pushglb.v global.floss
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_f_frasier_40"@12685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushglb.v global.floss
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_f_frasier_43"@12687
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_f_frasier_44"@12689
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_f_frasier_45"@12691
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[4]
pushglb.v global.floss
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_f_frasier_49"@12693
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
pushglb.v global.floss
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_f_frasier_53"@12694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_f_frasier_54"@12696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[8]
pushglb.v global.floss
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_f_frasier_58"@12698
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_f_frasier_59"@12700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_f_frasier_60"@12702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[10]
pushglb.v global.floss
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_f_frasier_64"@12704
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
pushglb.v global.floss
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_f_frasier_68"@12706
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
pushglb.v global.floss
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_f_frasier_72"@12708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_f_frasier_73"@12710
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[16]
pushglb.v global.floss
pushi.e 8
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_f_frasier_77"@12712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_f_frasier_78"@12714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[18]
pushglb.v global.floss
pushi.e 9
cmp.i.v GTE
bf [20]

:[19]
push.s "obj_f_frasier_82"@12716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
pushi.e 1604
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[end]