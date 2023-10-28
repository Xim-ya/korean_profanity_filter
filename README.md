<h1 align="center">Korean Profanity Filter</h1>
<p align="center"><img src="https://github.com/MakeFrog/TechTalk/assets/75591730/f53a1441-717e-40b9-9fae-8fda1629a780"/></p>
<p align="center">Korean Profanity Filter 패키지는 문자열을 검사하여 욕설·비속어를 식별할 수 있도록 돕습니다. 정규식을 기반으로 동작하기 때문에 동일한 의미를 가진 다양한 형태의 욕설과 비속어를 효과적으로 필터링할 수 있습니다.</p><br>


<p align="center">
  <a href="https://flutter.dev">
    <img src="https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter"
      alt="Platform" />
  </a>
  <a href="">
    <img src="https://img.shields.io/pub/v/korean_profanity_filter"
      alt="Pub Package"/>
  </a>
  <a href="https://opensource.org/licenses/MIT">    
    <img src="https://img.shields.io/github/license/aagarwal1012/animated-text-kit?color=red"
      alt="License: MIT" />
  </a>


</p><br>


<p align="center"><img width="300px" src="https://github.com/MakeFrog/TechTalk/assets/75591730/a7da16a1-442a-4394-9f13-7858e1dad25f"/></p>
<p align="center"><a href="https://korean-profanity-filter-example.netlify.app/">닉네임 유효성 검사 예제 사이트</a></p>
<p align="center">간단한 닉네임 유효성 검사 예제로 욕설·비속어 필터링 기능을 테스트해 보실 수 있습니다!</p>

# Installing

1. 의존성 추가

프로젝트의 pubspec.yaml 파일의 dependencies 섹션에 다음 줄을 추가하세요

```yaml
dependencies:
  korean_profanity_filter: ^1.0.0
```

2. 설치

터미널이나 명령 프롬프트에서 다음 명령을 실행하세요.

```
$ flutter pub get
```

3. 가져오기

이후 dart 소스파일에 import문을 추가하여 패키지를 가져올 수 있습니다.

```dart
import 'package:korean_profanity_filter/korean_profanity_filter.dart';
```

# Usage

`Korean Profanity Filter` 패키지는 String extension 메소드를 제공하여 문자열에서 욕설·비속어를 `탐지`, `추출`, `제거` 및 `대체`할 수 있는 4가지 주요 기능을 제공합니다.
이러한
확장 기능을 통해 사용자는 욕설·비속어 관련 문자열 처리를 더욱 간편하게 수행할 수 있습니다.

**1. 탐지하기**

```dart
const String text = '비속어를 나열합니다 : 시발 슈발 씌발 븅신 ㅅㅂ';
bool hasFWord = text.containsBadWords;

print(hasFWord); // true
```

| method           | type |
|:-----------------|:-----|
| containsBadWords | bool | 

주어진 문자열에서 비속어의 존재를 확인하려면 `containsBadWords`를 사용하세요. 주어진 문자열에 비속어가 있는지 여부를 빠르게 판단할 수 있습니다. 주어진 문자열에 비속어가 포함되어 있으면 true를
반환하고, 그렇지 않으면 false를 반환합니다

<br/>

**2. 추출하기**

```dart
const String text = '비속어를 나열합니다 : 시발 슈발 씌발 븅신 ㅅㅂ';
List<String> fWords = text.getListOfBadWords;

print(fWords); // ['시발', '슈발', '씌발' , '븅신', 'ㅅㅂ']
```

| method            | type               |
|:------------------|:-------------------|
| getListOfBadWords | List&lt;String&gt; | 

문자열에서 비속어를 추출하려면 `getListOfBadWords`를 활용하세요. 이 함수는 비속어를 찾아내고 해당 비속어들을 리스트로 반환합니다. 만약 비속어가 없다면 빈 리스트를 반환합니다.

<br/>

**3. 지우기**

```dart
const String text = '비속어를 나열합니다 : 시발 슈발 씌발 븅신 ㅅㅂ';
final String filteredText = text.cleanBadWords;

print(fWords); // 비속어를 나열합니다 :
```

| method        | type   |
|:--------------|:-------|
| cleanBadWords | String | 

비속어를 제거하려면 `cleanBadWords` 함수를 사용하세요. 이 함수는 비속어를 모두 제거한 문자열를 반환합니다.

<br/>   

**4. 대체하기**

```dart
const String text = '비속어를 나열합니다 : 시발 슈발 씌발 븅신 ㅅㅂ';
final String replacedText = text.replaceBadWords('🤬');

print(fWords); // 비속어를 나열합니다 : 🤬 🤬 🤬 🤬
```

| method                              | type   |
|:------------------------------------|:-------|
| replaceBadWords(String replacement) | String | 

비속어를 다른 문자열로 대체하려면 `replaceBadWords`를 활용하세요. 이 함수는 비속어를 지정한 문자열로 대체하여 정제된 문자열를 생성합니다.

<br/>

# Customize

해당 패키지는 기본적으로 `정규 표현식`을 사용하여 욕설·비속어 감지합니다.

```dart
ProfanityFilter.addPattern('빵꾸똥꾸|멍청아'); // 추가 정규식 패턴 정의

const String text0 = '야 이 빵꾸똥꾸야';
print(text.containsBadWords); // true

const String text1 = '야 이 멍청아';
print(text1.containsBadWords); // true  
```

추가로 필터링 로직을 적용하고 싶은 욕설·비속어가 있다면 `ProfanityFilter`의 `addPattern` 메소드를 사용하여 정규식 패턴을 추가로 정의해 주세요.


<br/>   

# Reference

<a href="https://github.com/curioustorvald/KoreanCursewordRegex">KoreanCursewordRegex
<a/> 깃허브 레포지터리에서 제공하는 정규식 표현을 참고하였습니다. 패키지에서 사용되는 정규식은 해당 레포지토리의 정규식 패턴을 일부 개선 및 보완한 버전입니다. 
