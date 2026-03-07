.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
pushi.e 494
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 45
pop.v.i 494.con

:[3]
pushi.e 0
pop.v.i 494.hearts
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -999
pop.v.i 744.x
pushi.e 749
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 757
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]

:[8]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [16]

:[9]
pushi.e 494
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 15
pop.v.i 494.con

:[11]
pushi.e 1
pop.v.i 494.hearts
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -999
pop.v.i 744.x
pushi.e 749
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 757
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]

:[16]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [22]

:[17]
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 44
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 781
conv.i.v
push.v 523.y
pushi.e 20
sub.i.v
push.v 523.x
pushi.e 25
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.strike
pushi.e 1
push.v self.strike
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.strike
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.d 0.25
push.v self.strike
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 22
pushi.e 523
pushi.e 8
pop.v.i [array]self.alarm
pushi.e 60
pushi.e 523
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 757
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]
pushi.e 749
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]

:[22]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [end]

:[23]
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 523
pushenv [25]

:[24]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[25]
popenv [24]
pushi.e 757
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
pushi.e 749
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]

:[end]