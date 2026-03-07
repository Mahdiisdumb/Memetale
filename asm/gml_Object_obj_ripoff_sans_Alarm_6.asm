.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 110
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 29
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
push.v self.talkt
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_ripoff_sans_212"@23403
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
push.s "obj_ripoff_sans_213"@23405
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
push.s "obj_ripoff_sans_214"@23407
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
push.s "obj_ripoff_sans_244"@23408
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