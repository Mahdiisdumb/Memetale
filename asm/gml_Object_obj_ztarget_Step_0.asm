.localvar 0 arguments

:[0]
push.v self.priority
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.priority

:[2]
push.v self.x
push.v self.fatalx
cmp.v.v LT
bf [9]

:[3]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [9]

:[4]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 720
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 720
pushenv [7]

:[6]
push.v self.priority
pushi.e 1
sub.i.v
pop.v.v self.priority

:[7]
popenv [6]

:[8]
call.i instance_destroy(argc=0)
popz.v
push.i 999999
pop.v.i self.priority
exit.i

:[9]
push.v self.priority
pushi.e 0
cmp.i.v EQ
bf [end]

:[10]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [end]

:[11]
pushi.e 1
pop.v.i self.image_alpha
push.d 0.5
pop.v.d self.image_speed
push.v self.id
pop.v.v 719.check
pushi.e 719
pushenv [13]

:[12]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[13]
popenv [12]
pushi.e 0
conv.i.v
call.i control_clear(argc=1)
popz.v
pushi.e 720
pushenv [15]

:[14]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[15]
popenv [14]

:[end]