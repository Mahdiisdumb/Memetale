.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 60
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e 0
pop.v.i self.cn
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.ld
pushglb.v global.plot
pushi.e 110
cmp.i.v LT
bf [2]

:[1]
pushi.e 1119
conv.i.v
pushi.e 14
conv.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.undyne
pushi.e 1526
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.dsprite
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1526
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1095
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.stk
push.v self.undyne
push.v self.stk
conv.v.i
pop.v.v [stacktop]self.subject
pushi.e 1533
push.v self.stk
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.stk
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1
pop.v.i self.active
push.s "music/undynefast.ogg"@2646
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.usong
push.s "music/fearsting.ogg"@2647
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.ushock
pushi.e 1
pop.v.i self.ld

:[2]
pushi.e 0
pop.v.i self.stopper

:[end]