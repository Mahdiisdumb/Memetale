.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.con

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [5]

:[3]
push.d 0.25
pop.v.d self.image_speed
push.d 1.5
pop.v.d self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [5]

:[4]
pushi.e 3
pop.v.i self.con

:[5]
push.v self.con
push.d 2.5
cmp.d.v EQ
bf [7]

:[6]
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
pushi.e 138
conv.i.v
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.con

:[7]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [10]

:[8]
pushi.e 1656
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 138
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 6
pop.v.i self.con

:[10]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [end]

:[11]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
call.i instance_destroy(argc=0)
popz.v

:[end]