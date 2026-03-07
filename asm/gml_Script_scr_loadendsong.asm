.localvar 0 arguments

:[0]
pushglb.v global.endsong_loaded
conv.v.b
not.b
bf [end]

:[1]
pushi.e 1
pop.v.i global.endsong_loaded
push.s "music/end/cast_1.ogg"@2804
conv.s.v
call.i caster_load(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.endsong
push.s "music/end/cast_2.ogg"@2805
conv.s.v
call.i caster_load(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.endsong
push.s "music/end/cast_3.ogg"@2806
conv.s.v
call.i caster_load(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.endsong
push.s "music/end/cast_4.ogg"@2807
conv.s.v
call.i caster_load(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.endsong
push.s "music/end/cast_5.ogg"@2808
conv.s.v
call.i caster_load(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.endsong
push.s "music/end/cast_5.ogg"@2808
conv.s.v
call.i caster_load(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.endsong
push.s "music/end/cast_6.ogg"@2809
conv.s.v
call.i caster_load(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.endsong
push.s "music/end/cast_7.ogg"@2810
conv.s.v
call.i caster_load(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.endsong

:[end]