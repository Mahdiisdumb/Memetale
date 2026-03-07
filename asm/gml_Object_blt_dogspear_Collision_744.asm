.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.bb
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
push.v 744.xprevious
push.v 744.x
cmp.v.v NEQ
bt [3]

:[2]
push.v 744.yprevious
push.v 744.y
cmp.v.v NEQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.bb
b [7]

:[6]
pushi.e 0
pop.v.i self.bb
pushi.e 2
pop.v.i self.blut

:[7]
pushglb.v global.invc
pushi.e 1
cmp.i.v LT
bf [9]

:[8]
push.v self.bb
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
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
bf [13]

:[12]
pushi.e 1
pop.v.i self.dmgamt

:[13]
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

:[end]