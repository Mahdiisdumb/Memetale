.localvar 0 arguments

:[0]
push.v self.ended
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 420
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [13]

:[4]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1800
cmp.i.v GT
bf [6]

:[5]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [13]

:[8]
push.v self.ff
conv.v.i
pushenv [12]

:[9]
push.v self.solid1
conv.v.i
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]

:[12]
popenv [9]
pushi.e 5
pop.v.i self.ended
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pushi.e -5
pushi.e 420
pop.v.i [array]global.flag

:[13]
push.v self.ended
pushi.e 5
cmp.i.v EQ
bf [end]

:[14]
push.v self.ff
conv.v.i
pushenv [16]

:[15]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[16]
popenv [15]
push.v self.ff
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[17]
push.v self.ff
conv.v.i
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]
pushi.e 6
pop.v.i self.ended

:[end]