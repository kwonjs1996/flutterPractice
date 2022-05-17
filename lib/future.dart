void main() {
  print('Before the Future');
  Future(() {
    print('Running the Future');
  }).then((_) {
    print('Future is complete');
  });
  print('After the Future');
}
// 1. 다트에 의해서 future 객체가 내부적인 배열에 등록
// 2. Future 관련해서 실행되어야 하는 코드들이 이벤트 큐에 등록
// 3. 불완전한 future 객체가 반화
// 4. Synchronous 방식으로 실행되어야 할 코드 먼저 실행
// 5. 최종적으로 실제적인 data값이 future 객체로 전달
