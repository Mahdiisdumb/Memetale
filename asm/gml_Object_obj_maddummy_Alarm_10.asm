.localvar 0 arguments

:[0]
push.v self.con2
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.next
pushi.e 1
pop.v.i self.con2
pushi.e 3
pop.v.i self.talko
pushi.e 33
pop.v.i global.typer
push.s "obj_maddummy_259"@15799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_maddummy_260"@15801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_maddummy_261"@15802
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_maddummy_262"@15804
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
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

:[end]