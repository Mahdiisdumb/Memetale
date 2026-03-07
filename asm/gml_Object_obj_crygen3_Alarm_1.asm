.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v 211.y
pushi.e 24
add.i.v
push.v 211.x
pushi.e 150
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.s "obj_crygen3_108"@11358
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_crygen3_109"@11359
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
pushi.e 100
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]