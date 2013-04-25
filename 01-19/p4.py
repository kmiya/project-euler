# coding: UTF-8
flag = 0
for x in range(9,0,-1):
    if flag: break
    for y in range(9,-1,-1):
        if flag: break
        for z in range(9,-1,-1):
            if flag: break
            sum = 100001*x+10010*y+1100*z
            for i in range(999,100,-1):
                if sum/i >= 1000 or sum/i < 100:
                    break
                if sum % i == 0:
                    print(sum, "," ,i, "," ,sum/i)
                    flag = 1
                    break
