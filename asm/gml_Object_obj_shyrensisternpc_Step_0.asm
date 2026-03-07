.localvar 0 arguments

:[0]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.buffer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.myinteract

:[5]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [17]

:[9]
push.d 0.6
conv.d.v
push.d 0.6
conv.d.v
pushi.e 342
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 2
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
push.d 0.2
pop.v.d self.image_speed
pushi.e 1520
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sistext
push.v self.talkedto
pushi.e 1
cmp.i.v EQ
bf [13]

:[10]
push.v self.sistext
conv.v.i
pushenv [12]

:[11]
push.s "obj_shyrensisternpc_74"@31609
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.phrase

:[12]
popenv [11]

:[13]
push.v self.talkedto
pushi.e 2
cmp.i.v EQ
bf [17]

:[14]
push.v self.sistext
conv.v.i
pushenv [16]

:[15]
push.s "obj_shyrensisternpc_75"@31611
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.phrase

:[16]
popenv [15]

:[17]
push.v self.myinteract
pushi.e 2
cmp.i.v EQ
bf [end]

:[18]
push.v self.sistext
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[19]
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto
push.v self.talkedto
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i self.talkedto

:[21]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact
pushi.e 4
pop.v.i self.buffer

:[end]