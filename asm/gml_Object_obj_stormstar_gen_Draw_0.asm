.localvar 0 arguments

:[0]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.a_y2
push.v self.a_x2
push.v self.a_y
push.v self.a_x
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 583
conv.i.v
push.v self.a_y2
push.v self.a_x2
push.v self.a_y
push.v self.a_x
call.i collision_rectangle(argc=7)
pop.v.v self.gh
push.v self.gh
pushi.e -4
cmp.i.v NEQ
bf [5]

:[1]
push.v self.gh
conv.v.i
push.v [stacktop]self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
call.i draw_circle(argc=4)
popz.v

:[3]
push.v self.gh
conv.v.i
push.v [stacktop]self.con
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 10
conv.i.v
pushi.e 30
conv.i.v
call.i draw_circle(argc=4)
popz.v

:[5]
push.v self.gh
conv.v.i
pushenv [12]

:[6]
push.v self.con
pushi.e 3
cmp.i.v NEQ
bf [9]

:[7]
push.v self.con
pushi.e 4
cmp.i.v NEQ
bf [9]

:[8]
push.v self.big
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.speed

:[12]
popenv [6]
push.v self.off
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
push.v self.vol
push.d 0.0125
sub.d.v
pop.v.v self.vol
push.v self.vol
push.v self.expl
call.i caster_set_volume(argc=2)
popz.v

:[end]