.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 12
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
push.s "music/date.ogg"@2841
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.shopmus
pushi.e 1
conv.i.v
push.v self.vol
push.v self.shopmus
call.i caster_loop(argc=3)
popz.v
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.d 0.25
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
pushi.e 59
pushi.e -1
pushi.e 0
pop.v.i [array]self.item
pushi.e 49
pushi.e -1
pushi.e 1
pop.v.i [array]self.item
pushi.e 48
pushi.e -1
pushi.e 2
pop.v.i [array]self.item
pushi.e 60
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
pushi.e 350
pushi.e -1
pushi.e 1
pop.v.i [array]self.itemcost
pushi.e 350
pushi.e -1
pushi.e 2
pop.v.i [array]self.itemcost
pushi.e 600
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
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

:[7]
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
pushi.e 0
pop.v.i self.soldo
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.cattywriter
pushi.e 2
pop.v.i self.brattywriter
pushi.e 0
pop.v.i self.cwe
pushi.e 0
pop.v.i self.bwe
pushi.e 1410
pop.v.i self.catty
pushi.e 1411
pop.v.i self.bratty
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i 1410.visible

:[9]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i 1411.visible

:[11]
pushi.e 0
pop.v.i self.con

:[end]