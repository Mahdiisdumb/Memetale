.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.murder
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Gameover"@5090
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.gm
call.i ossafe_ini_close(argc=0)
popz.v
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
push.d 0.5
pop.v.d self.vol
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.s "music/temshop.ogg"@2880
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
push.d 0.5
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
pushi.e 0
pushi.e -1
pushi.e 5
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 6
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 7
pop.v.i [array]self.menuc
pushi.e 46
pop.v.i self.item0pic
pushi.e 46
pop.v.i self.item1pic
pushi.e 46
pop.v.i self.item2pic
pushi.e 46
pop.v.i self.item3pic
pushi.e 22
pushi.e -1
pushi.e 0
pop.v.i [array]self.item
pushi.e 22
pushi.e -1
pushi.e 1
pop.v.i [array]self.item
pushi.e 22
pushi.e -1
pushi.e 2
pop.v.i [array]self.item
pushi.e 64
pushi.e -1
pushi.e 3
pop.v.i [array]self.item
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 22
pushi.e -1
pushi.e 3
pop.v.i [array]self.item

:[7]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.bought
pushi.e 0
pop.v.i self.mainmessage
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.itemcost
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.itemcost
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.itemcost
pushi.e 1000
pushi.e -1
pushi.e 3
pop.v.i [array]self.itemcost
pushi.e 120
pop.v.i self.minimenuy
pushi.e 24
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
pushi.e 1406
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.soldo
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.sellpos
pushi.e 0
pop.v.i self.sellpos2
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [10]

:[9]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.value
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.sold
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
pushi.e 0
pushi.e -1
pushi.e 8
pop.v.i [array]self.value
pushi.e 0
pushi.e -1
pushi.e 9
pop.v.i [array]self.value
pushi.e 0
pushi.e -1
pushi.e 10
pop.v.i [array]self.value
pushi.e 0
pop.v.i self.thanks
pushi.e 0
pop.v.i self.joytimer
pushi.e 0
pop.v.i self.s_quit
pushi.e 0
pop.v.i self.specialsell
pushi.e 0
pop.v.i self.c_con
pushi.e 0
pop.v.i self.colleg

:[end]