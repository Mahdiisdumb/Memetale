.localvar 0 arguments

:[0]
push.v self.sha
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
pop.v.v self.sha

:[2]
push.v self.sha
push.v self.shudder
add.v.v
pop.v.v self.x
push.v self.shudder
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
push.v self.shudder
pushi.e 1
add.i.v
neg.v
pop.v.v self.shudder
b [5]

:[4]
push.v self.shudder
neg.v
pop.v.v self.shudder

:[5]
push.v self.shudder
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.sha
push.v self.cn
pushi.e 1
add.i.v
pop.v.v self.cn
exit.i

:[7]
pushi.e 3
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
push.v self.cn
pushi.e 60
cmp.i.v GT
bf [9]

:[8]
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[9]
push.v self.cn
pushi.e 71
cmp.i.v GT
bf [end]

:[10]
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]