.localvar 0 arguments

:[0]
push.v 744.xprevious
push.v 744.x
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
bt [2]

:[1]
push.v 744.yprevious
push.v 744.y
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
pushglb.v global.invc
pushi.e 1
cmp.i.v LT
bf [end]

:[5]
pushi.e 1
pop.v.i self.hurted
push.v self.dmg
pushglb.v global.df
pushglb.v global.adef
add.v.v
pushi.e 5
conv.i.d
div.d.v
sub.v.v
call.i round(argc=1)
pop.v.v self.dmgamt
push.v self.dmgamt
pushi.e 1
cmp.i.v LT
bf [7]

:[6]
pushi.e 1
pop.v.i self.dmgamt

:[7]
push.v global.hp
push.v self.dmgamt
sub.v.v
pop.v.v global.hp
pushi.e 53
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i global.hshake
pushi.e 2
pop.v.i global.shakespeed
pushi.e 2
pop.v.i global.vshake
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.inv
pop.v.v global.invc
pushi.e 220
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[8]
pushi.e 1
pop.v.i 220.excited
pushi.e -50
pop.v.i 220.mercymod
pushi.e 249
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[9]
pushi.e 1
pop.v.i 249.excited
pushi.e 90
pushi.e 249
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pushi.e 249
pushi.e 1
pop.v.i [array]self.alarm

:[end]