# MiniTIL : 내가 배운 작은 것들을 매일매일 다짐하다!
<img src="https://velog.velcdn.com/images/soycong/post/99a34957-a499-4425-9e34-6aeb94548a20/image.png" width= "30%">

## TIL이란? Today I Learned의 줄임말
* 해당 앱은 AutoLayout이 적용되지 않아, Iphone 13 Mini 유저만 온전히 사용 가능합니다..!

### <아이디어>
> 다짐을 어떻게 남기면 좋을까? 생각해보다가..
TIL 남기는 것 처럼, 일기처럼 남길 수 있는 기능이 좋을 거 같아 피그마로 디자인 해봤다!

### <디자인> - Figma
<img src="https://velog.velcdn.com/images/soycong/post/7eb13f5d-6829-49ee-9dfe-150b9a037ac3/image.png" width= "80%">

### <대표 기능>
- 다짐 작성 -> Save 버튼으로 저장
- List 버튼을 누르면 내가 여태 쓴 내용들이 저장되어 있음!
 
### <실제 앱 구동>
#### Autolayout은 고려하지 못했고,, iphone 13 mini를 기준으로 만들었다!
mini를 선택한 이유는,, 내가 해당 폰 유저이기 때문 ㅎ

<img src="https://velog.velcdn.com/images/soycong/post/cef86a1c-bc86-4560-a502-23a901eb55ad/image.png" width= "120%">

**런치화면 -> 메인화면 -> 리스트화면 -> 디테일화면** 순이다!

### <과정>
1) ViewController에 다짐 작성 페이지(Main) 생성
2) ListViewContoller에 Main에서 List 버튼을 누르면 생성되는 TableView 목록 페이지 생성
3) 1)번과 2)번을 이어줄 수 있는 NavigationController 생성
4) ListViewContoller에서 한 항목을 선택할 시, 세부내용을 나타내기 위해 DetailViewContoller를 만들었다.

### <조금 더 신경쓴 부분>
네비게이션컨트롤, 내용 작성, 버튼 등등의 메인 기능을 구현하는 것에는 큰 문제가 없었으나, 자잘한 부분이 신경쓰여 그런 것들을 수정하는데 시간이 걸렸다.

1) TextView에서 placeholder를 지정하기
2) TextView에서 양 옆, 위, 아래에 패딩 주기
3) 버튼을 누를 때 눌리는 듯한 느낌(?)이 들게 하기

-> 1~3번 모두 앱을 쓰면서 큰 불편 사항들은 아니지만? 이런 것들까지 신경썼을 때 확실히 완성도가 있어보이는 느낌이라.. 더 많은 디테일한 기능들이 있겠지만 위의 3가지 정도만 신경써서 했다.

1)번의 경우는 placeholder 지정 후, Save 버튼을 눌렀을 때 사용자가 작성했던 text를 저장과 동시에 reset하고 다시 placeholder가 뜰 수 있도록 했다만.. 반응이 조금 느린 거 같다.


 
