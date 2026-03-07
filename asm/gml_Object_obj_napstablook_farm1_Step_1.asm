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
pushi.e 2
conv.i.v
pushi.e 110
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pop.v.v self.dist
push.v self.dist
pushi.e 60
cmp.i.v LT
bf [end]

:[2]
pushi.e 5
conv.i.d
push.v self.dist
pushi.e 2
add.i.v
div.v.d
pop.v.v self.disto
push.v self.disto
pushi.e 1
cmp.i.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.disto

:[4]
push.v self.disto
pop.v.v self.image_alpha

:[end]