/*
	if~Else: 둘중에 하나의 코드를 실행해야할때
*/
class TestIfElse{
	public static void main(String[] args) {
		//음수 양수
/*		int num= -12;
		if(num >-1){
			System.out.println("양수");	
		}
		if(num<0){
			System.out.println("음수");
		}
*/
		int num = 12;
		System.out.print(num+"은/는 ");
		if(num%2 == 0){
			System.out.println("짝수");
		}else{
			System.out.println("음수");
		}

		//입력받은 정수가 0~100사이면 유효 점수
		// 그렇지 않으면 무효점수
		int num2 = Integer.parseInt(args[0]);
		
		System.out.print(num2+"는 ");
		
		if (num2 >= 0 && num2<= 100){
			System.out.println("유효점수 입니다.");
		}else{
			System.out.println("무효점수 입니다.");			
		}


		/////////////////////////////////////////////////////
		
		// 입력되는 수를 정수로 변환하고 변환된 값이 
		// 대문자의 범위면 대문자로 출력
		// 그렇지 않다면 숫자 그대로 출력
		int num3 = Integer.parseInt(args[1]);
		
		System.out.print(num3+"은/는 ");
		
		if(num3>64 && num3<91){
			System.out.println("대문자 " + (char)num3);
		} else{
			System.out.println(num3);	
		}



	}
}
