import random

rps = [ '가위','바위','보']

res = {
     ('가위','보'): True,
     ('보','가위'): False,
     ('바위','가위'): True,
     ('가위','바위'): False,
     ('보','바위'):True,
     ('바위','보'):False
     }


while True:
    player = input('가위/바위/보/끝 아무거나:')
    cpu= random.choice(rps)
    if player =='끝':
        break

    print(player, cpu)

    if player !=('가위')and("바위")and('보'):
        print ('잘못 입력하셨습니다.')
        continue
    if player == cpu:
        print('비김')
    elif res[(player,cpu)]:
        print('이김')
    else:
        print('짐')
