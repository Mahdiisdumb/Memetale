.localvar 0 arguments

:[0]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 4
pop.v.i self.con

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 33
pop.v.i global.typer
push.s "obj_maddummy_319"@15806
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_maddummy_320"@15808
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_maddummy_321"@15810
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
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
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwdS
pushi.e 0
pop.v.i self.hurtsies
pushi.e 2
pop.v.i self.con

:[end]