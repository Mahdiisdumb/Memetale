.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.size
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.4
add.d.v
push.v self.size
pushi.e 1
add.i.v
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.v self.y
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.anim
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.anim
push.v self.animspeed
add.v.v
pop.v.v self.anim
push.v self.anim
push.v self.animchoice
pushi.e 1
add.i.v
cmp.v.v GT
bf [2]

:[1]
push.v self.animspeed
neg.v
pop.v.v self.animspeed

:[2]
push.v self.anim
push.v self.animchoice
pushi.e 1
sub.i.v
cmp.v.v LT
bf [4]

:[3]
push.v self.animspeed
neg.v
pop.v.v self.animspeed

:[4]
pushi.e 32
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [end]

:[5]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.size
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.4
add.d.v
push.v self.size
push.d 0.8
add.d.v
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.v self.y
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
pushi.e 2309
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.animchoice
push.v self.animchoice
pop.v.v self.anim

:[end]