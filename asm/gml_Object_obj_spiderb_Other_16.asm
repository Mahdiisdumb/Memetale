.localvar 0 arguments

:[0]
push.v self.itemuse
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.con
pushi.e 50
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i self.itemuse

:[end]