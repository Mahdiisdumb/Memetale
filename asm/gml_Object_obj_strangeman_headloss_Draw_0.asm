.localvar 0 arguments

:[0]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.nowx
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.nowy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[2]
push.v self.walking
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.nowx
pushi.e 1
sub.i.v
pop.v.v self.nowx

:[4]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
push.v self.atimer
pushi.e 1
add.i.v
pop.v.v self.atimer
push.v self.atimer
pushi.e 5
cmp.i.v GT
bf [8]

:[6]
push.v self.trueindex
pushi.e 5
cmp.i.v LT
bf [8]

:[7]
push.v self.trueindex
pushi.e 1
add.i.v
pop.v.v self.trueindex

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.trueindex
pushi.e 717
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]