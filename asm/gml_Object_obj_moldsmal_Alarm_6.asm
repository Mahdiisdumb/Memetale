.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.ystart
pushi.e 20
sub.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 8
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
push.v self.mycommand
pushi.e 30
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.s "obj_moldsmal_193"@18286
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [7]

:[6]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.s "obj_moldsmal_194"@18288
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [12]

:[11]
push.v self.mycommand
pushi.e 80
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "obj_moldsmal_195"@18290
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [17]

:[16]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.s "obj_moldsmal_196"@18292
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.s "obj_moldsmal_198"@18293
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