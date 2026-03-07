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
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.con
push.s "music/musicbox.ogg"@2648
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.musicbox
push.d 0.9
conv.d.v
push.d 0.25
conv.d.v
push.v self.musicbox
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.boxactive
pushi.e 1
push.v self.mask
conv.v.i
pop.v.i [stacktop]self.image_index

:[2]
push.v self.boxactive
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pop.v.v self.disto
push.v self.disto
pushi.e 76
cmp.i.v LT
bf [end]

:[7]
pushi.e 100
push.v self.disto
sub.v.i
pushi.e 100
conv.i.d
div.d.v
push.v self.musicbox
call.i caster_set_volume(argc=2)
popz.v

:[end]