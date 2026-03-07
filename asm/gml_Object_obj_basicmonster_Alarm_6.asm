.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
push.v self.x
pushi.e 100
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
push.s "Default"@23283
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.v self.mycommand
pushi.e 75
cmp.i.v LT
bf [2]

:[1]
push.s "No 2"@49755
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[2]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [4]

:[3]
push.s "No 3"@49756
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[4]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
bf [6]

:[5]
push.s "No 4"@49757
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[6]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.s "Action1"@49758
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[8]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
push.s "Action2"@49759
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[10]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
push.s "Action3"@49760
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[12]
push.s "%%%"@16
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
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
pushi.e 17
pop.v.i global.border
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