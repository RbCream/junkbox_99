SCISSOR = '가위'
ROCK = '바위'
PAPER = '보'

WIN = '이겼다'
LOSE = '졌다'
DRAW = '비겼다'

mine = '가위'
yours = '가위'

if mine == yours:
	result = DRAW

else:
	if mine == SCISSOR:
		if yours == ROCK:
			result = LOSE
		else :
			result = WIN
		 # 내가 가위이고 상대가 묵이면 짐, 또는 내가이김
			
	elif mine == PAPER:
		if your == SCISSOR :
			result = LOSE
		else : 
			result = WIN
				
			#내가 보자기일때 상대 가위면 짐, 아니면 이김
			
	elif mine == ROCK :
		if yours == PAPER:
			result = LOSE
		else : 
			result	= WIN
				
			#내가 주먹일때 상대 보자기면 짐, 또는 이김
			
	else :
		print ('이상해요')
				

print ('내가',mine,'를 내고 상대가',yours,'를 내서',result)


gender = "남자"
if gender == "남자":
	print("남자입니다.")
elif gender != "남자":
    print("여자입니다.")
else:
	print("논바이너리입니다")