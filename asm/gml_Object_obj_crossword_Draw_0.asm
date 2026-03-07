.localvar 0 arguments

:[0]
call.i draw_me(argc=0)
popz.v
push.v self.cross
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.depth
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
push.v self.nightmare
pushi.e 866
conv.i.v
call.i scr_getsprite(argc=1)
call.i draw_sprite(argc=4)
popz.v
b [3]

:[2]
push.i 100000
pop.v.i self.depth

:[3]
push.v self.cross
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.cancel
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [9]

:[8]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [end]

:[11]
pushi.e 0
pop.v.i self.cancel
pushi.e 0
pop.v.i self.cross
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[end]