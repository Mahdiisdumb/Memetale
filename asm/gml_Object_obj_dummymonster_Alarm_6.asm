.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
add.v.v
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
pushi.e 100
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.s "obj_dummymonster_213"@11860
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.s "obj_dummymonster_222"@11861
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

:[end]