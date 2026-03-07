.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
push.v self.x
pushi.e 125
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
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
push.s "obj_wizard_281"@29876
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
push.s "obj_wizard_283"@29878
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
push.s "obj_wizard_285"@29880
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
push.s "obj_wizard_287"@29882
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
push.s "obj_wizard_289"@29884
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.mercymod
pushi.e 300
cmp.i.v EQ
bf [12]

:[11]
pushi.e 299
pop.v.i self.mercymod
push.s "obj_wizard_294"@29886
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
push.s "obj_wizard_297"@29887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 17
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