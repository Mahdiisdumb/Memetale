.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
pushi.e 2235
conv.i.v
pushi.e 0
conv.i.v
pushi.e 175
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.dt
pushi.e 1000
push.v self.dt
conv.v.i
pop.v.i [stacktop]self.depth
push.d 0.2
pop.v.d self.image_speed
call.i scr_depth(argc=0)
popz.v
pushi.e -5
pushi.e 489
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]