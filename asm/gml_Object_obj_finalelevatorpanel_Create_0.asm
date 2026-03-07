.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.heartx
pushi.e 0
pop.v.i self.hearty
pushi.e 0
pop.v.i self.trigger
pushi.e 0
pop.v.i self.dirdir
pushi.e 0
pop.v.i self.ourx
pushi.e 0
pop.v.i self.oury
pushi.e 0
pop.v.i self.rectaur
pushi.e 0
pop.v.i self.rect
pushi.e 1
pop.v.i 1576.cutscene
pushbltn.v self.room
pushi.e 243
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v self.room
pushi.e 261
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
push.v self.sprite_index
push.v self.y
push.v self.x
call.i scr_marker(argc=3)
pop.v.v self.fake
push.v self.depth
push.v self.fake
conv.v.i
pop.v.v [stacktop]self.depth
call.i instance_destroy(argc=0)
popz.v

:[end]