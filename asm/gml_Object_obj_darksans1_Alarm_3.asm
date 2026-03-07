.localvar 0 arguments

:[0]
push.v self.shakehand
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_index
pushi.e 4
pop.v.i self.conversation

:[2]
push.v self.shakehand
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.image_index
push.v self.shakehand
pushi.e 1
add.i.v
pop.v.v self.shakehand
pushi.e 60
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[4]
push.v self.shakehand
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
pushi.e 1454
pop.v.i self.sprite_index
pushi.e 0
pop.v.i 1576.visible
pushi.e 0
pop.v.i self.image_index
push.s "music/whoopee.ogg"@2636
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.fsound
push.s "music/rimshot.ogg"@2638
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.rshot
push.s "music/muscle.ogg"@2637
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.s "music/papyrus.ogg"@2632
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong2
pushi.e 2
pop.v.i self.shakehand
pushi.e 90
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]