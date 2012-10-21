# encoding: utf-8
require 'haml'
require 'sinatra'
require_relative File.join('config', "shared.rb")

get '/' do
  combined = {
      "cucumber" => "오이",
      "child" => "아이",
      "milk" => "우유",
      "fox" => "여우",
      "tree" => "나우",
      "lion" => "사자",
      "pants" => "바지",
      "waist" => "허리",
      "shoes" => "구두",
      "hair" => "머리",
      "soap" => "비누",
      "banana" => "바나나",
      "dog" => "개",
      "clock" => "시게",
      "apple" => "사과",
      "pig" => "돼지",
      "company" => "회사",
      "waiter" => "웨이터",
      "scissors" => "가위",
      "doctor" => "의사",
      "ears" => "귀",
      "cold" => "추워요",
      "rabbit" => "토끼",
      "stew" => "찌개",
      "elephant" => "코끼리",
      "father" => "아빠",
      "tail" => "꼬리",
      "to squeeze" => "짜다",
      "to write" => "싸다",
      "pretty" => "예쁘다",
      "to kick" => "차다",
      "to board/to get on" => "타다",
      "book" => "책",
      "outside" => "밖",
      "to listen" => "듣다",
      "daytime" => "낮",
      "end" => "끝",
      "island" => "섬",
      "rice" => "밥",
      "ball" => "공",
      "kicthen" => "부엌",
      "mountain" => "산",
      "clothes" => "옷",
      "flower" => "꽃",
      "horse" => "말",
      "body" => "몸",
      "front" => "앞",
      "room" => "방",
      "Korean Language" => "한국어",
      "teacher" => "선생님",
      "yes" => "네",
      "dictionary" => "사전",
      "Korean" => "한국 사람",
      "student" => "학생",
      "American" => "미국 사람",
      "office worker" => "회사원",
      "Japanese" => "일본 사람",
      "bank employee/worker" => "은행원",
      "French" => "프랑스 사람",
      "movie actor" => "영화 배우",
      "Russian" => "러시아 사람",
      "housewife" => "주부",
      "Mongolian" => "몽골 사람",
      "chef" => "요리사",
      "Australian" => "호주 사람",
      "Canadian" => "캐나다 사람",
      "no" => "아니요",
      "singer" => "가수",
      "Thai" => "태국 사람",
      "Vietnamese" => "베트남 사람",
      "England" => "영국",
      "phone number" => "전화번호",
      "what" => "무엇",
      "office" => "사무실",
      "floor/storey" => "층",
      "number" => "호",
      "name" => "이름",
      "occupation" => "직업",
      "email" => "이메일",
      "address" => "주소",
      "English" => "영어",
      "who" => "누구",
      "Hello (informal, polite)" => "한녕하세요",
      "what country" => "어느 나라",
      "Filipino" => "필리핀 사람",
      "what occupation" => "무슨 일",
      "to meet" => "만나다",
      "to be glad" => "반갑다",
      "frog" => "개구리",
      "to study" => "공부하다",
      "to be interesting" => "재미있다",
      "to sleep" => "자다",
      "to exercise" => "운돈하다",
      "to eat" => "먹다",
      "to rest" => "쉬다",
      "expensive" => "비싸다",
      "delicious" => "맛있다",
      "to make a phone call" => "전화하다",
      "to be a lot of" => "많다",
      "movie" => "영화",
      "to be boring" => "재미없다",
      "to go" => "가다",
      "to come" => "오다",
      "bread" => "빵",
      "cap" => "모자",
      "small" => "작다",
      "music" => "음악",
      "Kimbap" => "김밥",
      "to ask" => "질문하다",
      "to answer" => "대답하다",
      "read a book" => "책을 읽다",
      "lessons start" => "수업을 시작하다",
      "lesson end" => "수업을 끝나다",
      "teach korean" => "한국어를 가르치다",
      "learn korean" => "한국어를 배우다",
      "do homework" => "숙제하다",
      "to talk / have a conversation" => "이야기하다",
      "meet a friend" => "친구를 만나다",
      "life" => "생활",
      "recently" => "요즘",
      "to be how" => "어떻다",
      "but" => "그렇지만",
      "a little" => "조금",
      "to be difficult" => "어렵다",
      "today" => "오늘",
      "what date" => "며칠",
      "when" => "언제",
      "birthday" => "생일",
      "New Year's Day" => "설날",
      "exam" => "시험",
      "wedding ceremony" => "결혼식",
      "culture study class" => "문화 수업",
      "Christmas" => "크리스마스",
      "graduation ceremony" => "졸업식",
      "where" => "어디",
      "school" => "학교",
      "dormitory" => "기숙사",
      "Korean Language Exam" => "한국어 시험",
      "what day" => "무슨 요일",
      "desk" => "책상",
      "chair" => "의자",
      "bag" => "가방",
      "notebook" => "공책",
      "phone" => "전화",
      "pencil" => "연필",
      "to watch" => "보다",
      "to put on" => "입다",
      "to wait" => "기다리다",
      "0 to 10" => "공 일 이 삼 사 오 육 칠 팔 구 십",
      "January to December" => "일월 이월 삼월 사월 오월 유월 칠월 팔월 구월 시월",
      "Monday to Sunday" => "월 화 수 목 금 토 일 (~요일)",
      "day" => "일"
  }

  items = combined.keys
  english_word =  items[rand(items.length)]
  haml :index, :locals => { :english => english_word, :korean => combined[english_word] }
end
