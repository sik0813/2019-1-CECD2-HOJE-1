# 2019-1-CECD2-HOJE-1
컴퓨터공학종합설계1_02_HOJE
프로젝트 주제 : OCR를 이용한 개인정보 검출

서버 플랫폼 
--------------
	플랫폼 : 리눅스, 우분투
	개발환경 : Intellj
	프래임워크 : Spring 4.2
	사용언어: C++, Java
	역할 : Tesseract OCR의 문자 학습을 진행, 문자 학습 결과물 및 추가 정규표현식을 애플리케이션에 배포

Application 플랫폼
----------------------
	플랫폼 : Window 10
	개발환경 : VS, Node.js 10.16.0
	프래임워크 : 일렉트론
	사용언어 : JavaScript 
	역할 : 사용자에게 서비스를 제공하는 애플리케이션 형태

역할 분담
---------
	은종혁 : Tesseract OCR 학습 서버
	장민석 : 프론트 및 정규 표현식 담당
	오택완 : Tesseract OCR 인식 및 문서 분류
	황영식 : Tesseract OCR 인식 및 이미지 전처리 과정


애플리케이션 (프로토타입) 구상도.
  이미지 | 문서시 노출 위험도 부분 | 개인정보항목 | .... | 분류 |


애플리케이션(프로토 타입) 조건
------------------------
	1. 이미지형식의 파일을 입력값으로 받는다.
	2. 애플리케이션내에서는 OCR과 클러스터링이 수행 된다.
	3 .애플리케이션은 실시간이 아닌 버튼형식으로 사용자가 버튼을 클릭 했을 시, 
	   전체 이미지를 대상으로 수행하는 것이 아닌,범위 내에 존재하는 이미지를 대상으로 수행한다.
	
시나리오(프로토 타입)
-----------
	1. 사용자는 애플리케이션을 다운 받아서 실행을 시킨다. 이때, 사용자는 기업을 대상으로 한다.
	2. 애플리케이션이 수행 되면 사용자의 로컬 데스크톱에 존재하는 모든 이미지를 불러 오게 된다. 
		2-1. 범위내에 있는 이미지에 대해서 OCR을 이용하여 텍스트를 추출하고 추출된 텍스트는 동시에 정규표현식을 진행하여 개인정보항목부분에 개인정보종류의 이름들을 출력해준다.
		2-2. 문서시 노출 위험도 항목은 개인정보항목 개수를 확인해서 애플리케이션 개발자가 정해 놓은 범위내에 맞춰서 위험도를 상, 중, 하로 나타낸다.

	3. 분류 항목에서는 클러스터링을 이용하여 이미지가 어느 문서 양식인지 보여주며, 어느 부서에서 관리해야되는지 라벨을 같이 보여준다. 분류 항목은 문서 분류 보다는 탐지 성향이 크다. 

향후 일정
-------
	1. 최소한의 프로토타입을 완성을 시킨후, 추가적으로 이미지의 문서 서식을 분류 한 후, 해당 이미지의 마스킹 조취를 취하는 방법 고려. 
	2. 서버에 시간 간격을 두어서 변경된 사항들을 배포하는 형식으로 개선 고려.
