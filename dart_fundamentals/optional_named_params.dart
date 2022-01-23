void main() {
  // funfin("ye required wala hai");
  // funfin("ye required wala hai", optional_named_1: false);
  // funfin("ye required wala hai",
  //     optional_named_1: false, optional_named_2: "something else");
  funfin("ye required wala hai",
      optional_named_2: "something else", optional_named_1: false);
}

void funfin(String requiredParam,
    {bool optional_named_1 = true, String optional_named_2 = "sds"}) {
  print("requiredParam => $requiredParam");
  print("optional_named_1 => $optional_named_1");
  print("optional_named_2 => $optional_named_2");
}
