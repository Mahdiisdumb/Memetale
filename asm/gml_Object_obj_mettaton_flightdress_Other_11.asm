.localvar 0 arguments
.localvar 1 textid 7862

:[0]
push.v self.sing
pushi.e 1
add.i.v
pop.v.v self.sing
pushi.e 1207
conv.i.v
pushi.e 20
conv.i.v
push.v self.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gm
pushi.e 1
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.gggg
pushi.e 2
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.myfont
push.v self.offsing
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 21
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.y

:[2]
push.s "mett_opera2_"@50574
push.v self.sing
call.i string(argc=1)
add.v.s
pop.v.v local.textid
pushloc.v local.textid
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting
pushglb.v global.language
push.s "en"@3390
cmp.s.v NEQ
bf [4]

:[3]
pushi.e 0
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.can_off
pushi.e 4
pushi.e 2
pushloc.v local.textid
pushglb.v global.text_data_en
call.i ds_map_find_value(argc=2)
call.i strlen(argc=1)
mul.v.i
add.v.i
push.v self.gm
conv.v.i
pushi.e 3
pop.v.v [array]self.alarm

:[4]
push.v self.offsing
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.offsing
b [7]

:[6]
pushi.e 1
pop.v.i self.offsing

:[7]
push.v self.sing
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
pushi.e 75
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]