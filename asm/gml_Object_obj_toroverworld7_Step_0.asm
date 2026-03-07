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
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i global.interact
pushi.e 2
pop.v.i self.conversation
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
pushi.e 41
conv.i.v
call.i path_start(argc=4)
popz.v
pushi.e 900
conv.i.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 0.3
pop.v.d self.image_speed
push.d 8.5
pop.v.d global.plot
push.s "music/tension.ogg"@2616
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[5]
pushi.e 0
conv.i.v
call.i scr_npcdir(argc=1)
popz.v

:[end]