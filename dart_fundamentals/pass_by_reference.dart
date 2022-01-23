void main() {
  List<int> nums = [-2, 0, 2, 4, 6, 8];
  addTwo(nums);
  print("🚀 ~ changed ~ $nums");
}

void addTwo(List<int> listOfNums) {
  for (int num = 0; num < listOfNums.length; num++) {
    listOfNums[num] += 2;
  }
}
