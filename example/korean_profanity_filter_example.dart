import 'package:korean_profanity_filter/korean_profanity_filter.dart';

void main() {
  const String text = '문장 중간중간 비속어가 시발 들어가 있습니다. 개쒜끼 단순한 예제이니 양해 부탁드립니다';
  bool hasFWord = text.containsBadWords;
  List<String> fWords = text.getListOfBadWords;
  String filteredText = text.cleanBadWords;
  String replacedText = text.replaceBadWords('🤬');

  print(hasFWord); // true
  print(fWords); // [시발, 개쒜끼]
  print(filteredText); // 문장 중간중간 비속어가 들어가 있습니다. 단순한 예제이니 양해 부탁드립니다
  print(replacedText); // 문장 중간중간 비속어가 🤬 들어가 있습니다. 🤬 단순한 예제이니 양해 부탁드립니다
}
