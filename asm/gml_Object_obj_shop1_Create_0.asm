.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 7
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
pushi.e 14
pushi.e -1
pushi.e 0
pop.v.i [array]self.item
pushi.e 15
pushi.e -1
pushi.e 1
pop.v.i [array]self.item
pushi.e 19
pushi.e -1
pushi.e 2
pop.v.i [array]self.item
pushi.e 21
pushi.e -1
pushi.e 3
pop.v.i [array]self.item
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.bought
pushi.e 0
pop.v.i self.mainmessage
pushi.e 50
pushi.e -1
pushi.e 0
pop.v.i [array]self.itemcost
pushi.e 50
pushi.e -1
pushi.e 1
pop.v.i [array]self.itemcost
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.itemcost
pushglb.v global.plot
pushi.e 100
cmp.i.v GT
bf [7]

:[6]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.itemcost

:[7]
pushglb.v global.plot
pushi.e 121
cmp.i.v GT
bf [9]

:[8]
pushi.e 45
pushi.e -1
pushi.e 2
pop.v.i [array]self.itemcost

:[9]
pushglb.v global.plot
pushi.e 199
cmp.i.v GT
bf [11]

:[10]
pushi.e 70
pushi.e -1
pushi.e 2
pop.v.i [array]self.itemcost

:[11]
pushi.e 25
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.itemcost
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.itemcost
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.itemcost
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost

:[13]
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
pushi.e 1409
conv.i.v
pushi.e 40
conv.i.v
pushi.e 18
push.v self.shx
add.v.i
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.soldo
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.an
pushi.e 953
pushi.e -1
pushi.e 1
pop.v.i [array]self.facespr
pushi.e 952
pushi.e -1
pushi.e 2
pop.v.i [array]self.facespr
pushi.e 954
pushi.e -1
pushi.e 3
pop.v.i [array]self.facespr
pushi.e 951
pushi.e -1
pushi.e 4
pop.v.i [array]self.facespr
pushi.e 950
pushi.e -1
pushi.e 5
pop.v.i [array]self.facespr
pushi.e 949
pushi.e -1
pushi.e 6
pop.v.i [array]self.facespr
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
pushi.e 1409
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]

:[end]