# 포켓립(POCKETLIB)
경기도경제과학진흥원 이공계연수사업인 JAVA와 R기반 빅데이터 양성과정에서 진행한 웹 프로젝트입니다.
접속: http://itproject.ezenac.co.kr/pocketlib

# 온라인 서재 pocketLib 소개
이용자의 관심 책 또는 읽은 책을 기반으로 맞춤 추천을 해주어 보다 
쉽게 원하는 책을 찾을 수 있으며 이를 통해 독서를 권장할 수 있습니다. 

읽은 책, 관심 책을 등록하여 내 서재를 관리할 수 있고 나의 책 통계를 통해 독서 패턴과 선호 도서를 쉽게 파악할 수 있습니다.

# 개발 환경
- 언어
  - Python,Java, JavaScript, JQuery, Jsp
- 프레임워크
  - Spring, MyBatis
- DB
  - Mysql
- WAS
  - Tomcat
- JDK
  - jdk1.8
- Open API
  - Aladin Open API
# 기능 소개
### MVC Model2
- Model
  - Board.java  - `게시판 Beans`
  - Book.java		- `책정보 Beans`
  - BookInterested.java	- `관심도서 Beans`
  - BookRead.java - `읽은 도서 Beans`
  - BookSearching.java  - `도서 검색 키워드에 관련된 도서목록 Beans`
  - Comment.java	  - `댓글 Beans`
  - Customer.java	  - `고객 정보 Beans`
  - LoveHate.java	  - `추천/비추천 Beans` 
  - Searching.java  - `도서 검색 키워드 Beans`
- View
  - aboutUs 
  - assets  - `css, js, image`
  - board	  - `게시판 CRUD`
  - book	  - `도서`
  - inc     - `header, footer, navi ....`
  - login	  - `회원가입`
  - mypage	- `회원관리`
  - recommend   - `맞춤 추천`
  - index.jsp   - `Main 화면`
- Controller
  - BoardController.java	  - `게시판`
  - BookController.java	    - `도서 관련 Controller`
  - LoginController.java	  - `회원가입 및 회원관리`
  - RecommendController.java	- `맞춤 추천`
  - RetrofitController.java   - `Open API 사용하기 위한 Controller`
