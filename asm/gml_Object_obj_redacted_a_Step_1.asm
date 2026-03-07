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
call.i scr_npc_anim(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pop.v.v self.dist
push.v self.dist
pushi.e 20
cmp.i.v LT
bf [end]

:[1]
push.v self.played
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 94
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.d 0.5
conv.d.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i self.played

:[6]
pushi.e 10
conv.i.d
push.v self.dist
pushi.e 1
add.i.v
div.v.d
pop.v.v self.disto
push.v self.disto
pushi.e 1
cmp.i.v GT
bf [8]

:[7]
pushi.e 1
pop.v.i self.disto

:[8]
push.v self.disto
pop.v.v self.image_alpha

:[end]