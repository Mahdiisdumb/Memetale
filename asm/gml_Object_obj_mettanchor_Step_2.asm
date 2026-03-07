.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 9
cmp.i.v LTE
bf [2]

:[1]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pop.v.v self.j

:[5]
pushi.e -1
push.v self.j
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.mysprite
pop.v.v self.sprite_index
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [9]

:[6]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
push.v 1576.x
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v 1576.y
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v LTE
bf [9]

:[8]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[9]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.stayx
add.v.v
pop.v.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.stayy
add.v.v
pop.v.v self.y

:[11]
push.v self.on
pushi.e 2
cmp.i.v EQ
bf [18]

:[12]
pushi.e 0
pop.v.i self.adjust
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
add.v.v
pushi.e 50
sub.i.v
cmp.v.v GT
bf [14]

:[13]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x
pushi.e 1
pop.v.i self.adjust

:[14]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
add.v.v
pushi.e 80
sub.i.v
cmp.v.v GT
bf [16]

:[15]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.adjust

:[16]
push.v self.adjust
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.5
mul.d.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.y

:[18]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v LTE
bf [end]

:[19]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[end]