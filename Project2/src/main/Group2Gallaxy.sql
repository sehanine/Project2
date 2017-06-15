-- board table
DROP TABLE multiBoard CASCADE CONSTRAINTS ;

CREATE TABLE multiBoard(
  no        NUMBER          PRIMARY KEY ,
  name      VARCHAR2(34)    NOT NULL ,
  subject   VARCHAR2(4000)  NOT NULL ,
  content   CLOB            NOT NULL ,
  pwd       VARCHAR2(10)    NOT NULL ,
  regdate   DATE,
  hit       NUMBER,
  filename  VARCHAR2(4000),
  filesize  VARCHAR2(4000),
  filecount NUMBER
);

-- board dummy data
INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,FILENAME)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'김김김','세계 10대 와인여행지’ 선정된 뉴질랜드 혹스베이, 새로운 도시 네이피어','제가 갔을 때에도 와인 테스팅 및 와인을 구매하러 온 손님들의 발길이 끊이지 않았습니다.
네이피어는 1931년 대 지진 이후 지형이 바뀌어 새로운 땅이 만들어졌다고합니다.
지진 이후 아르데코 양식으로 모든 건물들을 개건하여 아기자기하면서도 예쁜 도시로 다시 태어났습니다.'
        ,'1234',SYSDATE,0,'http://contents.verygoodtour.com/file/diablo/HBS/22/2015/06/30/133531/content/DSC03136.JPG');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,FILENAME)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'이이이','일년내내 축제인 도시 뉴올리언스!','뉴올리언스
도시 이름은 낯이 익지만  뉴올리언스를 이용한 패키지 상품은 그동안 찾기 힘들었을거에요~
하지만 이번에 제가 다녀온  이코스  뉴올리언스 뿐아니라  휴스톤 / 아틀란타 까지 볼수있었는데요
저는 그중  가장 기억에 남는  뉴올리언스를 소개하고자 합니다

첫느낌은 샌프란시스코인가?  뭔가 미국 이지만 미국에서도 이국적인 그런분위기였어요
아마 저 도시를 가로지르는 전기열차때문이지 않을까 싶네요'
        ,'1234',SYSDATE,0,'http://contents.verygoodtour.com/file/diablo/HBS/22/2015/06/24/161625/content/%EB%AF%B8%EA%B5%AD_%EB%89%B4%EC%98%AC%EB%A6%AC%EC%96%B8%EC%8A%A4_%EA%B1%B0%EB%A6%AC%EC%B6%95%EC%A0%9C_%ED%95%A8%EB%AF%B8%EC%97%B0%20(10).JPG');


INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,FILENAME)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'최최최','여행준비물','그 나라의 특산품을 선택하는 것이 쇼핑의 지혜입니다. 여행 전에 치밀한 계획을 세워서 과다한 외화 낭비를 삼가해주시는 센스~
· 출발시간 2시간 전에 공항에 도착하여 직원의 안내에 따라 출국 사열을 받으십시오.
· 출국전 휴대한 고가품은 세관 통과시 신고를 하여 입국시 문제가 발생하지 않도록 하십시오.
· 기내에서는 지정된 좌석에 앉으시고, 항공기의 이착륙시에는 반드시 안전벨트를 매십시오.
· 호텔 객실문은 대부분 닫히기만 하면 저절로 잠기므로 외출시 열쇠를 꼭 소지하십시오.
· 방안에 있는 냉장고나 미니바에 있는 음료를 드시거나 유료TV를 시청할 경우 체크 아웃시 따로 계산해야 합니다.
· 욕조 사용시는 커텐을 욕조 안쪽으로 하여 바닥에 물이 떨어지지 않도록 해야 합니다.
· 외출시 객실 청소부를 위해 US$1를 베게 위에 놓고 나오는 것이 에티켓입니다.
· 식당에 도착하면 잠깐 기다렸다가 종업원이 안내하는 테이블로 가서 앉습니다.
· 관광지 설명시 대열을 이탈하지 않고 안내원의 지시에 따라 주십시오. 단체행동시 집합 및 약속시간을 꼭 지켜주십시오.','1234',SYSDATE,0,'http://www.verygoodtour.com/images/2013/travelinfo/preparation.jpg');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,FILENAME)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'아무개','연령대 따라싱가포르는 바로 이렇게','센토사섬에 자리한 비치리조트로 호텔외관, 객실, 수영장, 스파, 키즈클럽, 레스토랑 등을 ' ||
'대규모비용을 투자해 리노베이션 진행하여 새롭게 오픈한 호텔. 객실의 베드가 넓은편이고 워터슬라이드, ' ||
'키즈클럽 등이 있어 가족단위 여행객들에게 인기좋은 리조트임.     ','1234',SYSDATE,0,'http://www.verygoodtour.com/Newsletter/2017/0413/images/vzine_0413_02.jpg');


INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,FILENAME)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'이이이','돌고래의 천국 저비스베이','호주 저비스베이
돌고래 서식지로 유명한 저비스베이와 눈부시게 아름다운 하이암스 비치를 소개합니다.

저비스베이는 시드니 근교에 위치해 있어 개발이 많이 이뤄지지 않아 자연 그대로의 모습을 간직하고 있습니다. ' ||
'깨끗하고 맑은 바닷가에서는 멀리서도 돌고래의 모습을 볼 수 있습니다. ','1234',SYSDATE,0,'http://contents.verygoodtour.com/file/diablo/HBS/22/2014/11/10/090645/content/%ED%98%B8%EC%A3%BC_%EC%8B%9C%EB%93%9C%EB%8B%88_%EC%A0%80%EB%B9%84%EC%8A%A4%EB%B2%A0%EC%9D%B4_%EC%84%B1%EB%AF%B8%EB%A6%B0%20(26)(1).jpg');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,FILENAME)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'최최최','ktx포항여행 후기','10월23일(금) ktx포항여행(149,000원/1인)을 단체(10명)하였는데, 한마디로 ktx포항여행은 절대로 권하고싶지않다. 퉁명스런 기사는 포항에대한 설명 한마디도 없었고 호미곳,구룡포,불친절한 죽도시장,,,,  왜 비싼돈주고 포항여행을 선택했는지 함께한 분들에게 불만을 무척 많이들었다.. 여행계획하신분은 참고하였으면 한다.','1234',SYSDATE,0,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjBryOJZNXBh9ZpWtlIS9yAGpODkG25Uv1KQ-DpJNtW6xQcz2L');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,FILENAME)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'김김김','[일본] 4계절 언제나 즐거운 도시, 일본의 부엌 오사카','두번째 일정은 오사카 구로몬 시장입니다.' ||
'일본의 부엌, 오사카 내에서도 오사카의 부엌이라고 불리는 구로몬 시장은 먹거리가 가득한 일본의 전통시장입니다.'||
'우리나라에서는 볼 수 없는 즉석에서 구워진 와규꼬치, 전복꼬치가 눈과 입 모두 즐겁게 합니다.'||
'한가지 더 팁을 말씀드리자면 시장내 드럭스토어에서는 번화가 상점보다 저렴한 가격으로 쇼핑이 가능합니다.','1234',SYSDATE,0,'http://contents.verygoodtour.com/file/diablo/HBS/18/2017/03/24/183240/content/%EC%9D%BC%EB%B3%B8_%EC%98%A4%EC%82%AC%EC%B9%B4_%EA%B5%AC%EB%A1%9C%EB%AA%AC%EC%8B%9C%EC%9E%A5_%EC%9D%B4%EC%8A%B9%EB%AF%BC%20(12).JPG');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,FILENAME)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'이이이','수영장이 끝내주는 제주도 호텔&리조트','켄싱턴 호텔 제주
Kensington Jeju Hotel

5성급, ★★★★☆완벽함 9.6

현재 최저가 293,921원부터
(최근 30일 간 다양한 예약사이트에서
제공된 1박당 요금 중 최저가격)
*실시간요금으로 변동될 수 있습니다.
','1234',SYSDATE,0,'http://post.phinf.naver.net/MjAxNzA0MDdfMjEy/MDAxNDkxNTQ5Mzc4MTE1.nSZBNLjF8Vx59pottedYFOmsM4cL2ugyn5AICHufLrEg.VRDTSTTSOP3vGfAdpkDrqNVevbzCOMDziJUL562UcrMg.JPEG/01.jpg?type=w1200');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,FILENAME)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'강강강','매화마을을 다녀와서','정말 사람이 많았지만 사진을 찍고자 하는 의지(?)가 있다면
이렇게 한적한 곳도 어렵지 않게 찾아볼 수 있습니다.

전세 버스를 이용한 단체 관광이기 때문에
사진을 찍기 위해 사람들이 지나가길 마냥 기다릴 수 없으니
애초에 사람들이 많지 않은 곳을 찾는 것이 좋은 사진을 남길 수 있는 방법입니다. ','1234',SYSDATE,0,'http://contents.verygoodtour.com/file/diablo/HBS/18/2015/03/23/000514/content/IMG_9472.jpg');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,FILENAME)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'정정정','진한 커피향이 가득한 멜버른 골목 투어','1. 라이브 음악이 어우러진 골목 하드웨어 레인( Hardware Lane)
버크와 리트버크 사이에 두고 양옆으로 이어진 골목에는 ' ||
 '노천 카페와 식당들이 있고 특히 밤에는 라이브 음악이 함께하는 곳입니다. ' ||
'이곳은 점심과 저녁 식사를 하기 위해 멜버리안들이 찾아오는 곳입니다.
무엇보다도 이 상점들의 장점은 음식값이 비교적 저렴한 것이 장점이니 주머니는 가볍지만 ' ||
'멜버른의 분위기에 취하고 싶은 여행객들에게 강력 추천하는 곳입니다.','1234',SYSDATE,0,'http://contents.verygoodtour.com/file/diablo/HBS/22/2014/04/01/142747/content/1396323543335-1.jpg');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,FILENAME)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'최최최','[일본] 센과 치히로의 배경이 된 그 곳, 마츠야마','우리에게 익숙한 애니메이션이죠
센과 치히로의 행방불명 배경이 된 마츠야마,
다소 생소한 지역이지만 한번 다녀온 사람들은 두 번은 꼭 다시 찾게 된다는 온천의 도시를
이번 기회에 다녀오게 되었습니다.
먼저 마츠야마에서도 가장 널리 알려진 도고는 한가롭게 산책을 즐기기에 좋은 곳이죠
본관을 가기 전 도고온천 역 주변 부터 살펴 볼까요?','1234',SYSDATE,0,'http://contents.verygoodtour.com/file/diablo/HBS/18/2017/03/13/145244/content/%EB%A7%88%EC%B8%A0%EC%95%BC%EB%A7%883(1).jpg');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,filename)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'lee','하와이의 야경을 보러 갈까요?','하와이의 멋진 야경을 보고왔습니다.
하와이하면 드넓고 푸르른 바다와 눈부신 파도가 당연히 먼저 생각나겠지만,
맛있는 저녁을 먹고 시내에서 그리 멀지않은 약 20분정도 거리에 위치한 탄탈루스 전망대에서 보는
와이키키 시내는 정말 장황하지 그지 없었습니다.','1234',SYSDATE,0,'http://cfile30.uf.tistory.com/image/1233144B50673B7A07E79F');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,filename)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'kim','패밀리 테마여행[안동&청송','안녕하세요~ 이유미 가이드 입니다
지난주말 1박2일로 안동&청송을 다녀왔습니다
안동은 우리나라에서 가장 한국적인 멋을 보여주는 곳인만큼
역사와 전통이 깊은곳입니다','1234',SYSDATE,0,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFrODUV4lpjM59kOPnEy-I4226uLwNH8on9hUSDFwX_M36quMn');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,filename)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'choi','양 매화꽃과 화개장터 & 구례 산수유 꽃 여행','모두 따뜻한 날씨를 피부로 느끼고 계신가요?ㅎㅎ
저는 ! 봄이면 바로 꽃 여행이 자연스레 연상되는데요~ 여러분들도 마찬가지이시죠^_^?
3월이 되면~~ 늘 생각나는 광양매화축제 & 구례산수유
다들 다녀와보셨을까요?ㅎ
저는 이번에 가장 절정이었던 3월18일 토요일에 답사로 다녀왔습니다 ♡','1234',SYSDATE,0,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUX2lcm-fruYE9nzLy6NjplHV-eUEqSraOj3MBRjIWju5VCuSr');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,filename)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'han','[유럽] 크로아티아 라스토케 (요정의 마을)','라스토케를 여행함에 있어 가장 큰 난관은 교통편과 숙소입니다. ' ||
'워낙 작은 마을이다 보니 열차편은 당연히 없으며, 버스를 이용하거나 또는 렌터카를 이용해야만 이동할 수 있습니다. ' ||
'또한 호텔도 턱없이 부족할 뿐 아니라 예약도 어려워 현지 민박 또는 호스텔로 눈길을 돌리는 경우가 많습니다.','1234',SYSDATE,0,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRANevfgt_8c8iKka0AJvXedkGFt5WxDNs6xJEd2jSrarqHqWU4yw');

INSERT INTO multiBoard(no,name,subject,content,pwd,regdate,hit,filename)
    VALUES((SELECT nvl(max(no)+1,1)FROM multiBoard),'shin','강원도 평창 대관령 눈꽃축제 + 안목커피거리 ','본 축제는 2000상반기 전국 12대 문화축제로 선정되는 등 눈꽃과 얼음의 아름다움이 어우러진
낭만적인 환상의 세계에서 추험과 모험, 동심의 세계를 만끽할 수 있는 겨울축제로 발전해 왔습니다.
보이시는 것 처럼 2018 평창 동계올림픽 유치 성공을 자축하는 승리의 축제로 더욱
더 풍부해진 즐길 거리와 색다를 테마별 체험 이벤트로 관광객을 맞이하고 있습니다.','1234',SYSDATE,0,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF_htsXdM1V2BM4j-sPw4QeoTHXn2cq31WKRZ5PdrNANEkd1MA');
COMMIT ;

-- 여행 블로그 쓰기

DROP TABLE trip_table CASCADE CONSTRAINTS ;

CREATE TABLE trip_table(
 trip_no     int,
 email       VARCHAR2(100) NOT NULL,
 lang        VARCHAR2(100),
category    VARCHAR2(100),
organization VARCHAR2(1000),
 title         VARCHAR2(500),
 hash        VARCHAR2(100),
 poster      CLOB,
 itinerary   CLOB,
 host_serve  CLOB,
 trip_pictures CLOB,
 about_program CLOB,
 addr            CLOB,
 cautions        CLOB,
 participants    VARCHAR2(50),
 cost            VARCHAR2(50)
);

-- 블로깅 더미 데이터
INSERT INTO trip_table(trip_no, email, lang, category, organization,
title, hash, poster, itinerary, host_serve, trip_pictures, about_program, addr, cautions, participants, cost)
   VALUES( (SELECT NVL(MAX(trip_no)+1,1) FROM trip_table), 'jung@11.11', 'korean', 'tour', 'sist', 'k-tour',
   '#ktour', 'https://arthurhovinc.files.wordpress.com/2015/04/roadtriplarge.png', 'first day', 'ride, meal, accomodation',
   'http://vignette2.wikia.nocookie.net/poohadventures/images/a/a6/Route_66.jpg/revision/latest?cb=20130722181752', 'korean tour blah blah', '서울 영등포 문래동3가 근린공원', '깝치지 말것', '5', '150');
COMMIT;

UPDATE trip_table
SET trip_pictures = 'http://www.telegraph.co.uk/content/dam/Travel/Destinations/North%20America/USA/Route%2066/AP_Route66_Travel-large.jpg'
WHERE email = 'jung@11.11';

-- 마이페이지 관련 테이블
CREATE TABLE imageUpload(
  email       VARCHAR2(100) NOT NULL,
  poster      CLOB
);
CREATE TABLE mypage(
  content       VARCHAR2(1000),
  email       VARCHAR2(100) NOT NULL
  );

-- 회원가입 멤버관리 테이블
CREATE TABLE tripMember (
    firstName VARCHAR2(20) NOT NULL ,
    lastName VARCHAR2(20) NOT NULL ,
    email VARCHAR2(30) NOT NULL ,
    pwd VARCHAR2(20) NOT NULL
);



