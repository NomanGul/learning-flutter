void main() {
  int num = 0;
  makeCall(num);
  print("🚀 ~ not changed ~ $num");
  makeCall(num);
  print("🚀 ~ still not changed ~ $num");
}

void makeCall(int param) {
  param++;
}
