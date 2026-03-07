.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.dingusvol
pushi.e 0
pop.v.i self.dongusvol
push.s "music/menu1.ogg"@2618
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.dingus
push.s "music/menu2.ogg"@2619
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.dangus
push.s "music/menu3.ogg"@2620
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.dongus
push.s "music/menu4.ogg"@2621
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.dungus
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.dingus
call.i caster_loop(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.dangus
call.i caster_loop(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.dongus
call.i caster_loop(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.dungus
call.i caster_loop(argc=3)
popz.v

:[end]