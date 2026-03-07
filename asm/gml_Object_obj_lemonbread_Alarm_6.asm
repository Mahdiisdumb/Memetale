.localvar 0 arguments
.localvar 1 bxcount 4521
.localvar 2 bycount 4522
.localvar 3 bxstart 4523
.localvar 4 bystart 4524
.localvar 5 bxspace 4525
.localvar 6 byspace 4526
.localvar 7 by 4527
.localvar 8 bx 4528

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
push.s "obj_lemonbread_175"@15523
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
push.s "obj_lemonbread_176"@15525
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
push.s "obj_lemonbread_177"@15527
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
push.s "obj_lemonbread_178"@15529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_lemonbread_196"@15531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.turns
pushi.e 20
pop.v.i self.mycommand

:[8]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_lemonbread_200"@15532
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.mercymod
push.i 50000
cmp.i.v GT
bf [12]

:[11]
push.v self.turns
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "obj_lemonbread_202"@15534
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lemonbread_203"@15536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.turns

:[15]
push.s "obj_lemonbread_207"@15537
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
pushi.e 6
pop.v.i local.bxcount
pushi.e 2
pop.v.i local.bycount
pushi.e 0
pop.v.i local.bxstart
pushi.e 0
pop.v.i local.bystart
pushi.e 101
pop.v.i local.bxspace
pushi.e 119
pop.v.i local.byspace
pushloc.v local.bystart
pop.v.v local.by
pushloc.v local.bycount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [19]

:[16]
pushloc.v local.bxstart
pop.v.v local.bx
pushloc.v local.bxcount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [18]

:[17]
pushi.e 187
conv.i.v
pushi.e 10
pushloc.v local.by
add.v.i
pushi.e 10
pushloc.v local.bx
add.v.i
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 20
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
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
pushi.e 10
push.v self.blconwd
conv.v.i
pop.v.i [stacktop]self.depth
push.v local.bx
pushloc.v local.bxspace
add.v.v
pop.v.v local.bx
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [17]

:[18]
popz.i
push.v local.by
pushloc.v local.byspace
add.v.v
pop.v.v local.by
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [16]

:[19]
popz.i
pushi.e 5
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