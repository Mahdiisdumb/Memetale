.localvar 0 arguments

:[0]
pushi.e 188
conv.i.v
pushi.e 100
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 31
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.s "obj_battlebomb_217"@10672
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mycommand
pushi.e 75
cmp.i.v LT
bf [2]

:[1]
push.s "obj_battlebomb_218"@10674
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [4]

:[3]
push.s "obj_battlebomb_219"@10675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
bf [6]

:[5]
push.s "obj_battlebomb_220"@10676
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.bombtype
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_battlebomb_222"@10678
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.bombtype
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_battlebomb_223"@10680
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.s "obj_battlebomb_245"@10681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[end]