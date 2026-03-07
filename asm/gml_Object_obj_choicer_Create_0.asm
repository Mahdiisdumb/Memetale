.localvar 0 arguments

:[0]
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.canchoose
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pop.v.v self.add
pushi.e 89
push.v self.add
add.v.i
pop.v.v self.x0
pushi.e 185
push.v self.add
add.v.i
pop.v.v self.x1
push.v self.x0
pop.v.v self.x
pushi.e 210
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
add.v.i
pop.v.v self.y
pushi.e -1
pop.v.i self.d
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 780.side
pop.v.v self.d

:[2]
pushbltn.v self.room
pushi.e 179
cmp.i.v NEQ
bf [8]

:[3]
push.v 1576.y
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 130
add.i.v
cmp.v.v GT
bt [5]

:[4]
push.v self.d
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
push.v self.y
pushi.e 155
sub.i.v
pop.v.v self.y

:[8]
pushi.e 0
pop.v.i self.mychoice
pushi.e -1
pop.v.i global.choice
pushi.e 0
pop.v.i self.choiced

:[end]