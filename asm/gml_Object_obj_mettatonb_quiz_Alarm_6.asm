.localvar 0 arguments

:[0]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.v 308.q
pop.v.v self.qno
pushi.e 0
pop.v.i global.msc
push.v self.qno
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_mettatonb_quiz_255"@17186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
push.v self.qno
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_mettatonb_quiz_258"@17188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
push.v self.qno
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_mettatonb_quiz_262"@17190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.qno
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_mettatonb_quiz_266"@17192
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.qno
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_mettatonb_quiz_270"@17194
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.qno
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_mettatonb_quiz_274"@17196
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
push.v self.qno
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_mettatonb_quiz_278"@17198
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
push.v self.qno
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_mettatonb_quiz_282"@17200
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
push.v self.qno
pushi.e 8
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_mettatonb_quiz_286"@17202
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.s "obj_mettatonb_quiz_294"@17203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 51
pop.v.i global.typer
push.v 302.x
pushi.e 320
sub.i.v
pop.v.v self.sxx
push.v self.sxx
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
pushi.e 0
pop.v.i self.sxx

:[20]
pushi.e 1
conv.i.v
push.v 302.y
pushi.e 120
sub.i.v
push.v self.sxx
call.i scr_blcon(argc=3)
popz.v
pushi.e 0
pop.v.i global.border
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[end]