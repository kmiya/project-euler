# coding: UTF-8

fa = 1
for i in range(2,101):
    fa *= i
fa = str(fa)
sum = 0
for i in range(len(fa)):
    sum += int(fa[i])
print(sum)
