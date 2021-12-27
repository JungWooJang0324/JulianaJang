/*
	기본형 데이터 형으로 변수선언.
	형 명시 사용
*/
class UseDataType
{
	public static void main(String[] args) 
	{
		// 정수를 저장할 수 있는 데이터형 : byte, short, int, long
		byte a = 127; //양수 :127까지 가능, 음수 : -128까지 가능
		short b = 32767;
		int c = 2147483647;	
		//정수 상수를 저장하는 리터럴의 크기가 4byte이므로, 4byte를 초과하는 상수값을 작성할 수 있다.
		long d = 2147483648l;
		
		char m= 65; //'A'
		char g= 48; // '0'
		char h= 44032; //'가'

		System.out.println("byte: " + a + " short: " + b + " int: " + c+" long: " + d);
		System.out.println("f:"+m + " g:"+g + " h:"+h);
		
		//실수 : float, double
		float i = 12.271140f;
		double j = 12.27 // 형명시 생략가능
		System.out.println(i);

		boolean t = true;
		boolean f = false;
		
		System.out.println(t +", "+ f);


	}
}
