.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [3]

:[1]
pushi.e 1
pop.v.i self.murder
pushi.e -5
pushi.e 435
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [3]

:[2]
pushi.e 2
pushi.e -5
pushi.e 435
pop.v.i [array]global.flag

:[3]
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
bf [6]

:[4]
push.s "music/shop.ogg"@2833
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.shopmus
push.d 0.7
conv.d.v
push.v self.vol
push.v self.shopmus
call.i caster_loop(argc=3)
popz.v
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.d 0.4
conv.d.v
push.v self.shopmus
call.i caster_set_pitch(argc=2)
popz.v

:[6]
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
pushi.e 42
pushi.e -1
pushi.e 0
pop.v.i [array]self.item
pushi.e 40
pushi.e -1
pushi.e 1
pop.v.i [array]self.item
pushi.e 43
pushi.e -1
pushi.e 2
pop.v.i [array]self.item
pushi.e 61
pushi.e -1
pushi.e 3
pop.v.i [array]self.item
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.bought
pushi.e 0
pop.v.i self.mainmessage
pushi.e 60
pushi.e -1
pushi.e 0
pop.v.i [array]self.itemcost
pushi.e 120
pushi.e -1
pushi.e 1
pop.v.i [array]self.itemcost
pushi.e 300
pushi.e -1
pushi.e 2
pop.v.i [array]self.itemcost
pushi.e 500
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
pushi.e 100
pop.v.i self.shx
pushi.e 1405
conv.i.v
pushi.e 13
conv.i.v
push.v self.shx
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.soldo
pushi.e 0
pop.v.i global.faceemotion

:[end]