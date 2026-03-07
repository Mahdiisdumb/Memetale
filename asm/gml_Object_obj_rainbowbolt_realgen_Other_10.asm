.localvar 0 arguments

:[0]
push.v self.l_buffer
pushi.e 0
cmp.i.v LTE
bf [end]

:[1]
push.v self.o_o
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
pushi.e 1588
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shk
pushi.e 3
push.v self.shk
conv.v.i
pop.v.i [stacktop]self.shakex
pushi.e 3
push.v self.shk
conv.v.i
pop.v.i [stacktop]self.shakey

:[5]
push.v self.o_o
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.o_o
b [8]

:[7]
pushi.e 0
pop.v.i self.o_o

:[8]
push.v self.o_o
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.lithit
pop.v.v self.this_hit

:[10]
push.v self.o_o
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.lithit2
pop.v.v self.this_hit

:[12]
push.v self.lh
pushi.e 0
cmp.i.v GT
bf [13]

:[13]
pushi.e 0
conv.i.v
pushi.e 70
conv.i.v
push.v self.this_hit
call.i audio_play_sound(argc=3)
pushi.e -1
push.v self.lh
conv.v.i
pop.v.v [array]self.jr
push.d 0.6
conv.d.v
pushi.e -1
push.v self.lh
conv.v.i
push.v [array]self.jr
call.i audio_sound_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
push.d 0.44
conv.d.v
pushi.e -1
push.v self.lh
conv.v.i
push.v [array]self.jr
call.i audio_sound_gain(argc=3)
popz.v
pushi.e 588
pushenv [15]

:[14]
pushi.e 1
pop.v.i self.l_buffer

:[15]
popenv [14]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v NEQ
bf [19]

:[16]
pushi.e 588
pushenv [18]

:[17]
pushi.e 2
pop.v.i self.l_buffer

:[18]
popenv [17]

:[19]
push.v self.lh
pushi.e 1
add.i.v
pop.v.v self.lh

:[end]