.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.d 0.25
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 1.5
conv.d.v
push.d 1.5
conv.d.v
push.v self.y
push.d 0.5
sub.d.v
push.v self.x
push.d 0.5
sub.d.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.talkcounter
pushi.e 1
sub.i.v
pop.v.v self.talkcounter
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.talkcounter
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 19
conv.i.v
pushi.e 18
conv.i.v
call.i choose(argc=2)
pop.v.v self.snd
push.v self.snd
call.i snd_play(argc=1)
popz.v
pushi.e 30
pop.v.i self.talkcounter
pushi.e 0
pop.v.i self.myinteract

:[end]