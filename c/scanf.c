#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main(void) {

	float f1, f2, f3;

	printf("1.실수를 입력받아 출력하시오 : \n");
	scanf("%f%f%f", &f1, &f2, &f3);

	printf("입력받은 실수는 : %.4f,%.4f,%.4f\n\n", f1, f2, f3);

	char name[4];
	printf("2.자신의 이니셜을 입력받아 출력하시오\n");
	//문자와 단일문자사용시 
	//문자 다음에(name)다읍에 &a,&b,&c오면 출력시 한칸 공백 넣어줘야함
	scanf("%s", name);

	printf("이니셜은 %s입니다\n\n",name);

	
	printf("4. 성적을 입력받아 합계와 평균을 구하시오\n");
	int kor, eng, math;
	double avg; 
	printf("나의 국어점수 : ");
	scanf("%d", &kor);
	printf("나의 영어점수 : ");
	scanf("%d", &eng);
	printf("나의 수학점수 : ");
	scanf("%d", &math);
	
	int sum = kor + eng + math;
	printf("합: %d", sum);
	avg = (double)sum/3;
	printf("평균: %f\n", avg);
	


	char name1[30];
	int age;
	printf("당신의 이름은 무엇입니까?\n");
	scanf("%s", name1);
	printf("%s님의 나이는 무엇입니까?\n",name1);
	scanf("%d", &age);
	printf("%s님의 나이는 %d살입니다.", name1, age);



}
