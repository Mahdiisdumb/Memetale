.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.alpha
pushi.e 0
pop.v.i self.amalgam
pushi.e 0
pop.v.i self.anim
pushi.e 0
pop.v.i self.myinteract
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.talkedto
pushi.e -5
pushi.e 482
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 170
pop.v.i self.x
pushi.e 138
pop.v.i self.y
pushi.e 2213
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
push.i 16711680
pop.v.i self.image_blend

:[2]
pushi.e -5
pushi.e 482
push.v [array]global.flag
pushi.e 1
cmp.i.v GT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]