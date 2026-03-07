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
push.s "obj_lock_and_key_66"@15734
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lock_and_key_67"@15736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lock_and_key_68"@15738
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lock_and_key_69"@15740
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [2]

:[1]
push.s "obj_lock_and_key_73"@15742
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushi.e -5
pushi.e 454
push.v [array]global.flag
push.d 0.5
cmp.d.v EQ
bf [5]

:[3]
push.s "obj_lock_and_key_78"@15744
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [5]

:[4]
push.s "obj_lock_and_key_82"@15746
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
pushi.e -5
pushi.e 452
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 453
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
pushi.e 1
pushi.e -5
pushi.e 454
pop.v.i [array]global.flag
push.s "obj_lock_and_key_90"@15748
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [11]

:[10]
push.s "obj_lock_and_key_94"@15750
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
pushi.e 2
pop.v.i self.con

:[12]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e -5
pushi.e 454
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[13]
push.d 0.5
pushi.e -5
pushi.e 454
pop.v.d [array]global.flag

:[end]