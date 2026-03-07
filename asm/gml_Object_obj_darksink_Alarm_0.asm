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
pushi.e 0
pop.v.i self.dont
push.s "obj_darksink_91"@11566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.how_bad_me_key
pushi.e 0
cmp.i.v EQ
bf [18]

:[1]
push.v self.wcon
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 486
push.v [array]global.flag
pushi.e 2
cmp.i.v NEQ
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
push.s "obj_darksink_98"@11568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 486
push.v [array]global.flag
pushi.e 13
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_darksink_100"@11570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
push.v self.water
call.i caster_stop(argc=1)
popz.v
push.d 2.2
conv.d.v
push.d 0.6
conv.d.v
push.v self.water
call.i caster_loop(argc=3)
popz.v
pushi.e -5
pushi.e 486
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 1
pop.v.i self.wcon
b [17]

:[8]
push.v self.wcon
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_darksink_110"@11572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.water
call.i caster_stop(argc=1)
popz.v
pushi.e 0
pop.v.i self.wcon
b [17]

:[10]
pushi.e -5
pushi.e 486
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 481
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [17]

:[14]
pushi.e 1576
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.uncan

:[16]
popenv [15]
pushi.e 1
pop.v.i self.dont
push.v self.depth
pushi.e 3
sub.i.v
pop.v.v self.depth
push.s "obj_darksink_122"@11573
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
b [19]

:[18]
pushi.e 0
pop.v.i self.how_bad_me_key
push.s "obj_darksink_132"@11575
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darksink_133"@11577
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
pushi.e -5
pushi.e 487
pop.v.i [array]global.flag
pushi.e 2
pushi.e -5
pushi.e 481
pop.v.i [array]global.flag

:[19]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]