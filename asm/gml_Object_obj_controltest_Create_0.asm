.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.starton9
pushi.e 3
pop.v.i self.buffer
pushi.e 0
pop.v.i self.z_index
pushi.e 0
pop.v.i self.x_index
pushi.e 0
pop.v.i self.c_index
push.s "music/drum/snare.ogg"@2693
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.s_snare
push.s "music/drum/kick.ogg"@2692
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.s_kick
push.s "music/drum/cymbal.ogg"@2691
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.s_cymbal
push.s "music/drum/cuica.ogg"@2689
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.s_cuica
push.s "music/drum/cuica2.ogg"@2690
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.s_cuica2
pushi.e 0
pop.v.i self.fun
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [3]

:[1]
pushi.e 1
pop.v.i self.fun
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e -1
conv.i.v
push.s "EndF"@47578
conv.s.v
push.s "EndF"@47578
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.tr
push.v self.tr
pushi.e 2
cmp.i.v GTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.fun

:[3]
pushi.e 0
pop.v.i self.image_speed
pushi.e 60
pop.v.i self.borderl
pushi.e 260
pop.v.i self.borderr
pushi.e 140
pop.v.i self.borderu
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [end]

:[4]
push.i 1100000
conv.i.v
call.i tile_layer_hide(argc=1)
popz.v

:[end]