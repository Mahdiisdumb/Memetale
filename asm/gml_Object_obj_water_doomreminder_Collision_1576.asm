.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 18
pushi.e -5
pushi.e 204
push.v [array]global.flag
sub.v.i
pop.v.v self.pop
push.v self.pop
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self.pop

:[3]
push.v self.pop
call.i string(argc=1)
push.s "obj_water_doomreminder_95"@29808
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]