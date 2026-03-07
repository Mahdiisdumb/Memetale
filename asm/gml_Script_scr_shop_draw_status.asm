.localvar 0 arguments
.localvar 1 gold_str 686
.localvar 2 item_str 687

:[0]
pushglb.v global.gold
call.i string(argc=1)
push.s "G"@5047
add.s.v
pop.v.v local.gold_str
call.i scr_itemroom(argc=0)
popz.v
push.v self.itemhold
call.i string(argc=1)
push.s "/8"@5050
add.s.v
pop.v.v local.item_str
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
pushloc.v local.gold_str
pushi.e 210
conv.i.v
pushi.e 235
conv.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.item_str
pushi.e 210
conv.i.v
pushi.e 286
conv.i.v
call.i draw_text(argc=3)
popz.v
b [end]

:[2]
pushloc.v local.gold_str
pushi.e 210
conv.i.v
pushi.e 230
conv.i.v
call.i draw_text(argc=3)
popz.v
pushloc.v local.item_str
pushi.e 210
conv.i.v
pushi.e 280
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]