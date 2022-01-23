void main() {
  // funfin("ye required wala hai");
  // funfin("ye required wala hai", false);
  funfin("ye required wala hai", false, "something else");
}

void funfin(String requiredParam,
    [bool optional_positional_1 = true, String optional_positional_2 = "sds"]) {
  print("requiredParam => $requiredParam");
  print("optional_positional_1 => $optional_positional_1");
  print("optional_positional_2 => $optional_positional_2");
}
