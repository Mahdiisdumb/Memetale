.localvar 0 arguments

:[0]
push.v 744.x
push.v 744.xprevious
cmp.v.v NEQ
bt [2]

:[1]
push.v 744.y
push.v 744.yprevious
cmp.v.v NEQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
push.v self.hmove
pushi.e 1
add.i.v
pop.v.v self.hmove

:[5]
push.v self.hmove
pushi.e 7
cmp.i.v GT
bf [7]

:[6]
push.i -99999
pop.v.i self.hmove
pushi.e 103
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[7]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[8]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
call.i instance_destroy(argc=0)
popz.v

:[end]