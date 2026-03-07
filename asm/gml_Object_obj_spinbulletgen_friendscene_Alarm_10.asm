.localvar 0 arguments

:[0]
push.v self.spec
pushi.e 3
cmp.i.v EQ
bt [2]

:[1]
push.v self.spec
pushi.e 5
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
push.v self.spec
pushi.e 4
cmp.i.v EQ
bt [7]

:[6]
push.v self.spec
pushi.e 6
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [end]

:[9]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]