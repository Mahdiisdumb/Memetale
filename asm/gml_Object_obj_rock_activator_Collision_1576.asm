.localvar 0 arguments

:[0]
push.v 916.conversation
pushi.e 7
cmp.i.v GT
bf [2]

:[1]
push.v 916.conversation
push.d 10.5
cmp.d.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.d 10.5
pop.v.d 916.conversation
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]