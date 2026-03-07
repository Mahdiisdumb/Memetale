.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.murder

:[2]
pushi.e 148
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 0.8
pop.v.d self.vol
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.s "music/shop.ogg"@2833
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.shopmus
push.d 0.93
conv.d.v
push.v self.vol
push.v self.shopmus
call.i caster_loop(argc=3)
popz.v
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.d 0.2
conv.d.v
push.v self.shopmus
call.i caster_set_pitch(argc=2)
popz.v

:[5]
pushi.e 3
pop.v.i self.menumax
pushi.e 0
pop.v.i self.menu
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 4
pop.v.i [array]self.menuc
pushi.e 46
pop.v.i self.item0pic
pushi.e 46
pop.v.i self.item1pic
pushi.e 46
pop.v.i self.item2pic
pushi.e 46
pop.v.i self.item3pic
pushi.e 37
pushi.e -1
pushi.e 0
pop.v.i [array]self.item
pushi.e 41
pushi.e -1
pushi.e 1
pop.v.i [array]self.item
pushi.e 44
pushi.e -1
pushi.e 2
pop.v.i [array]self.item
pushi.e 45
pushi.e -1
pushi.e 3
pop.v.i [array]self.item
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.bought
pushi.e 0
pop.v.i self.mainmessage
pushi.e 25
pushi.e -1
pushi.e 0
pop.v.i [array]self.itemcost
pushi.e 18
pushi.e -1
pushi.e 1
pop.v.i [array]self.itemcost
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.itemcost
pushi.e 55
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost
pushi.e 120
pop.v.i self.minimenuy
pushi.e 23
pop.v.i global.typer
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.selling
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i self.glow
pushi.e 130
pop.v.i self.shx
pushi.e 1408
conv.i.v
pushi.e 44
conv.i.v
push.v self.shx
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.soldo
pushi.e 0
pop.v.i global.faceemotion

:[end]