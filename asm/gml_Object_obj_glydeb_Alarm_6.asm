.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
push.v self.x
pushi.e 220
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
push.s "obj_glydeb_148"@13753
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mycommand
pushi.e 75
cmp.i.v LT
bf [2]

:[1]
push.s "obj_glydeb_149"@13755
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [4]

:[3]
push.s "obj_glydeb_150"@13757
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
bf [6]

:[5]
push.s "obj_glydeb_151"@13759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
push.v self.boo
pushi.e 2
cmp.i.v GTE
bf [9]

:[8]
push.s "obj_glydeb_160"@13763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [10]

:[9]
push.s "obj_glydeb_159"@13761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [13]

:[11]
push.s "obj_glydeb_165"@13765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.applaud
pushi.e 2
cmp.i.v GTE
bf [13]

:[12]
push.s "obj_glydeb_168"@13767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [18]

:[14]
push.s "obj_glydeb_174"@13768
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.nothing
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_glydeb_175"@13770
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
push.v self.nothing
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_glydeb_176"@13772
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.s "obj_glydeb_181"@13773
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
pushi.e 3
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