.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.interact
push.v self.fadein
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.vol
push.d 0.9
cmp.d.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.vol
push.d 0.01
add.d.v
pop.v.v self.vol
push.v self.vol
push.v self.specialsong
call.i caster_set_volume(argc=2)
popz.v

:[5]
push.v self.fadein
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.vol
pushi.e 0
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [11]

:[9]
push.v self.vol
push.d 0.02
sub.d.v
pop.v.v self.vol
push.v self.vol
push.v self.specialsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.vol
push.d 0.02
cmp.d.v LT
bf [11]

:[10]
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.vol

:[11]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [13]

:[12]
push.v self.vol
push.d 0.6
cmp.d.v GT
b [14]

:[13]
push.e 0

:[14]
bf [end]

:[15]
pushi.e 2
pop.v.i self.fadein

:[end]