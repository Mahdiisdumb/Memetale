.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
push.v self.con
push.i 99999
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 66
pop.v.i 1576.x
pushi.e 1
pop.v.i self.con
push.s "obj_umbrellabox_135"@28437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con

:[end]