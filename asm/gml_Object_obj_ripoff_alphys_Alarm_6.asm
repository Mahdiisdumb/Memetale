.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
push.v self.x
pushi.e 110
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
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
push.s "obj_ripoff_alphys_256"@23284
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.talkt
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_ripoff_alphys_257"@23286
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
push.v self.talkt
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_ripoff_alphys_258"@23288
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
push.v self.talkt
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_ripoff_alphys_259"@23290
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.talkt
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.talkt

:[8]
push.v self.talkt
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 2
pop.v.i self.talkt

:[10]
push.v self.talkt
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.talkt

:[12]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.turns
b [15]

:[14]
pushi.e 0
pop.v.i self.turns

:[15]
push.s "obj_ripoff_alphys_267"@23291
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 74
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
pushi.e 22
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 24
pop.v.i global.border
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 26
pop.v.i global.border

:[17]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 24
pop.v.i global.border

:[19]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[end]