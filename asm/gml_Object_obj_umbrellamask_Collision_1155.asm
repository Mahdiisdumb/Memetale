.localvar 0 arguments

:[0]
push.v other.id
conv.v.i
pushenv [6]

:[1]
push.v self.goal
push.v self.y
sub.v.v
pop.v.v self.g
push.v self.g
pushi.e 40
cmp.i.v LT
bf [3]

:[2]
push.v self.g
pushi.e 6
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [1]

:[end]