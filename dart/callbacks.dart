void main(List<String> args) {
  //callbacks are to return your value more than once 
  List<int> list = [1, 2, 3];

  list.forEach((element) {
    print(element);
  });

//with using callback here you can run that command and 
//return values over and over
  personalizedForEach(list, (int value) => {
    print("Değer $value")
  });

}
//for example if you just return this value
//it can be in an array or variable
//but you can return it once
void personalizedForEach(List<int> list, Function callback) {
  for (var i = 0; i < list.length; i++) {
    callback(list[i]);
  }
}
