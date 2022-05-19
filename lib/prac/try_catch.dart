//try~~catch 구문 예외처리

main() {
  try {
    List<int> a = [1, 2, 3];
    print(a[3]);
  } catch (e) {
    print('not found');
  }
}
