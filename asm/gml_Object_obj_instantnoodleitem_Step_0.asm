.localvar 0 arguments

:[0]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[1]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushglb.v global.batmusic
call.i caster_pause(argc=1)
popz.v
pushi.e 2
pop.v.i self.con

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v 784.stringno
pushi.e 15
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [13]

:[10]
pushglb.v global.batmusic
call.i caster_resume(argc=1)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 0
pushi.e -5
pushi.e 21
pop.v.i [array]global.flag
pushi.e 784
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
push.s "obj_instantnoodleitem_85"@14527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 68
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 91
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[13]
b [end]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[end]