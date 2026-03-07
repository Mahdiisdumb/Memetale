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
push.v self.mycommand
pushi.e 20
cmp.i.v LT
bf [2]

:[1]
push.s "obj_finalknight_275"@12784
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
push.v self.mycommand
pushi.e 20
cmp.i.v GTE
bf [4]

:[3]
push.s "obj_finalknight_279"@12786
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [6]

:[5]
push.s "obj_finalknight_283"@12788
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [8]

:[7]
push.s "obj_finalknight_287"@12790
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [10]

:[9]
push.s "obj_finalknight_291"@12792
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.asleep
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.s "obj_finalknight_295"@12794
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
push.s "obj_finalknight_298"@12795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talk
pushi.e 3
cmp.i.v NEQ
bf [14]

:[13]
pushi.e 1
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 787
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 210
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[14]
push.v self.talk
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_finalknight_308"@12797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_finalknight_309"@12798
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 787
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 210
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 0
pop.v.i self.talk

:[16]
pushi.e 0
pop.v.i self.attacked
push.v self.asleep
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 17
pop.v.i global.border

:[18]
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