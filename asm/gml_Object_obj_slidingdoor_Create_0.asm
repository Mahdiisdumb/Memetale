.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.slidedoorx
pushi.e 0
pop.v.i self.on
pushi.e 0
pop.v.i self.active
pushi.e 2
conv.i.v
pushi.e 80
conv.i.v
pushi.e 888
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.salad
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 10
cmp.i.v GTE
bf [2]

:[1]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 1
pop.v.i self.active
pushi.e 791
conv.i.v
push.v self.salad
conv.v.i
push.v [stacktop]self.y
pushi.e 4
sub.i.v
push.v self.salad
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.door
push.v self.salad
conv.v.i
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 1350
conv.i.v
pushi.e 130
conv.i.v
pushi.e 890
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1375
conv.i.v
pushi.e 130
conv.i.v
pushi.e 890
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.pape
push.i 900000
push.v self.pape
conv.v.i
pop.v.i [stacktop]self.depth

:[7]
pushi.e 0
pop.v.i self.o_noise
pushi.e 0
pop.v.i self.c_noise
pushi.e 0
pop.v.i self.s_noise

:[end]