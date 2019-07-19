/*
 
 재은씨 스위프트 문법편 예제
 2019-07
 
 */




////: Int 범위
//Int8.max
//Int.min



////: 타입이 다른 변수와의 결합
//var stmt = "This is"
//var num = 200
//var numstmt = stmt + String(num)



/*
 
 -a             // 값의 부호를 변경
 a % b          // a를 b로 나눈 나머지
 a <== b        // a가 b보다 작거나 같으면 true, 아니면 false
 a != b         // a가 b와 같지 않으면 true, 아니면 false
 !a             // a가 true면 false, false면 true 반환
 a && b         // a와 b가 모두 true일때 true, 하나라도 false면 false 반환
 a || b         // a와 b중 하나라도 true면 true, 둘 다 false면 false 반환
 a %= 3         // a = a % 3

 */



////: for~in
// var lang = "swift"
// for char in lang {   // lang.characters 안써야.., 스위프트4.0에서 String 업데이트됨
//    print("\(char)")  // char는 루프상수, 자동으로 생성
// }


//let size = 5
//let padChar = "0"
//var keyword = "3"
//
//for _ in 1...size {   // _로 루프상수 생략
//    keyword = padChar + keyword
//}
//
//print(keyword)




////: while
//var n = 2
//while n < 1000 {
//    n = n * 2
//}

////: repeat while
// var n = 1024
//
// repeat {
//    n = n * 2
// }
// while n < 1000
//
// print("n=\(n)")



////: if~else if
//if gender == "M" {
//} else if gender == "F" {
//} else { }



////: guard
//func divide(base: Int) {
//
//    guard base != 0 else {
//        print("error")
//        return
//    }
//
//    guard base > 0 else {
//        print("0보다 커야함")
//        return
//    }
//
//    guard base < 100 else {
//        print("100보다 작아야함")
//        return
//    }
//    let result = 100 / base
//    print(result)
//}
//
//divide(base: -2)




////: #available 구문
//if #available(iOS 9, OSX 10.10, watchOS 1, *) {
// iOS9용 or OSX, or WatchOS용 api구문
//} else {
// api사용 못했을때의 실패 처리
//}



////: switch
//let val = 2
//
//switch val {
//case 1:
//    print("1")
//case 2:
//    print("2")
//case 3:
//    print("2 more")
//caee 4, 5:            // 패턴 묶기 가능
//    print("4 more")
//default:
//    print("err")
//}


//let sampleChar: Character = "a"
//switch sampleChar {
//case "a":
//case "A": print("char is A")  // 암시적 fall through
//default:
//    print("error")
//}


//let sampleChar: Character = "a"
//
//switch sampleChar {
//case "a":
//    fallthrough   // 명시적 fall through
//case "b":
//    print("A")
//default:
//    print("err")
//}


// let value = (2,3)
//
// switch value {
// case let (x,3):
//     print("튜플 두번째값이 3일때 첫째는 \(x)이다")
// case let (2,y):
//     print("튜플 첫째값이 2일때 둘째는 \(y)이다")
// case let (x,y):
// print("값은 \(x), \(y)")
// }


//var value = (2,2)
//
//switch value {
//case (0..<2,3):
//    print("r")
//case (2..<5,0..<3):
//    print("l")
//case (2..<5, 3..<5):
//    print("lr")
//default:
//    print("default")
//}


//var point = (3,-3)
//
//switch point {
//case let (x,y) where x == y:
//    print("x==y")
//case let (x,y) where x == -y:
//    print("x==-y")
//case (_,_):
//    print("normal")
//}




////: 제어전달문
//for row in 0...5 {
//
//    if row > 2 {
//        break     // 루프 즉각 종료
//    }
//    print("\(row) was executed!")
//}


//for row in 0...5 {
//
//    if row < 2 {
//        continue  // 루프 중 continue 아래 스킵
//    }
//
//    print("data is \(row)")
//}




////: 공백, 대문자 만들기
//var text = "This is a swift book for Apple's programming language"
//var result = ""
//
//for char in text {
//
//    if char == " " {
//        result.append(Character("_"))
//        continue
//
//    } else if char == "o" {
//        result.append(Character("O"))
//        continue
//    }
//
//    result.append(char)
//}
//
//print(result)


//for i in 1...5 {
//    for j in 1...9 {
//        
//        if j==3 {
//            break
//        }
//
//        print("\(i) X \(j) = \(i * j)")
//    }
//}



////: 흐름제어와 레이블
//outer: for i in 1...5 {
//    inner: for j in 1...9 {
//
//        if (j==3) {
//            break outer   // outer레이블 종료
//        }
//
//        print("\(i) X \(j) = \(i * j)")
//    }
//}




////: 배열
//var b = "beijing"
//var cities = ["seoul","newyork",b]
//
//print(cities[2])


////: 배열의 순회 탐색
//var cities = ["seoul", "ny", "la", "santiago"]
//
//for row in cities {
//    let indexNumber = cities.firstIndex(of: row)
//    print("\(indexNumber!)번째 배열은 \(row)임")
//}


////: 배열의 선언과 초기화 종류
//var list: [Int]
//list = [Int]()
//list = [1,2,3,4]
//
//print(list)


/*

 배열의 선언과 초기화 종류
 
 첫번째 방법:
 배열 선언+초기화
 var cities = Array<String>()
 
 배열 선언만
 var cities: Array<String>
 초기화만
 cities = Array()
 
 두번째 방법:
 선언+초기화
 var cities = [String]()
 
 선언만
 var cities: [String]
 초기화만 2-1
 cities = [String]()
 초기화만 2-2
 cities = []

 한번 더 배열 선언+초기화
 var arrayA: Array<String> = [String]()
 var arrayB: [String] = Array()
 var ArrayC: [String] = []
 
 */


////: 빈 배열인지 확인
//var list = [Int]()
//list = [1,2,3,4,5]
//
//if list.isEmpty {
//    print("비어있음")
//} else {
//    print("\(list.count)개")
//}


////: 배열 아이템 동적 추가
//var cities = [String]()
//
//cities.append("Seoul")
//cities.append("New York")
//cities.insert("Tokyo", at: 1)
//cities.append(contentsOf: ["Dubai", "Sydney"])
//print(cities)
//
//cities[2] = "Madrid"
//print(cities)


//////: 초기화와 같이 아이템 생성
//var cities = [String](repeating: "None", count: 3)
//cities.append("No")


////: 범위 연산자를 이용해 아이템 저장
//var alphabet = ["a", "b", "c", "d", "e"]
//alphabet[1...2] = ["1", "2", "3"]
//print(alphabet)




////: 집합
//var genres = Set<String>()
//
//genres.insert("classic")
//genres.insert("rock")
//genres.insert("df")
//
//print(genres)


////: 순회탐색, 동적 추가와 삭제
//var genres: Set = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
//genres.insert("11")
//genres.insert("12")
//genres.insert("1")
//
//if let removedItem = genres.remove("12") {
//    print("\(removedItem)삭제 완료")
//} else {
//    print("값 없음")
//}
//
//for g in genres.sorted() {
//    print("\(g)")
//}
//
//if genres.contains("12") {
//    print("있음")
//}  else {
//    print("없음")
//}


////: 기본 집합연산
//var oddDigits: Set = [1, 3, 5, 7, 9]
//let evenDigits: Set = [0, 2, 4, 6, 8]
//let primeDigits: Set = [2, 3, 5, 7]
//
//oddDigits.intersection(evenDigits).sorted()
//oddDigits.symmetricDifference(primeDigits).sorted()
//oddDigits.union(evenDigits).sorted()
//oddDigits.subtract(primeDigits)
//oddDigits.sorted()


////: 부분집합과 포함관계 판단 연산
//let a: Set = [1, 3, 5, 7, 9]
//let b: Set = [3, 5]
//let c: Set = [3, 5]
//let d: Set = [2, 4, 6]
//
//b.isSubset(of: a)
//a.isSuperset(of: b)
//c.isStrictSubset(of: a)
//c.isStrictSuperset(of: b)
//a.isDisjoint(with: d)


////: 집합을 통한 중복 값 삭제
//var A = [1,1,2,2,3,3,4,4,5,6]
//let B = Set(A)
//A = Array(B).sorted()




////: 튜플
//let tupleValue: (String, Character, Int, Float, Bool) = ("a", "b", 1, 1.25, true)
//tupleValue.0
//
//let (a, b, c, d, e) = tupleValue  // 각 상수로 튜플값 들어옴
//
//print("\(a), \(b), \(c), \(d), \(e)")


////: 튜플을 반환하는 함수
//func getTupleValue() -> (String, String, Int) {
//    return ("t", "v", 100)
//}
//
//let (a, b, _) = getTupleValue()
//print("\(a), \(b)")




////: 딕셔너리
//var capital = ["KR":"Seoul", "EN":"London", "FR":"Paris"]
//print(capital["KR"]!)
//capital["KR"]
//capital["EN"]
//capital["FR"]
//capital["JP"] = "Tokyo" // 추가


////: 딕셔너리 아이템 저장 여부 확인
//if capital.isEmpty {
//    print("비어있음")
//    } else {
//    print("\(capital.count)")
//}


////: 아이템 삭제
//if let removedValue = capital.removeValue(forKey: "JP") {
//    print("삭제값은 \(removedValue)")
//    } else {
//    print("노삭제")
//}


////: 순회탐색
//for row in capital {
//    let (key, value) = row
//    print("\(key) : \(value)")
//}
//
//for (key, value) in capital {
////    let (key, value) = row
//    print("\(key) : \(value)")
//}




////: 옵셔널
//var num = Int("12")   // 숫자가 아닌 문자가 들어올 수도 있으므로, 옵셔널
//print(num!)           // 옵셔널 강제 해제


////: if문을 통한 안전한 강제 해제
//var str = "123"
//var intFromStr = Int(str)
//
//if intFromStr != nil {
//    print("변환성공 \(intFromStr!)")
//} else {
//    print("실패")
//}


////: if문을 통한 옵셔널 바인딩
//var str = "12"
//if let intFromStr = Int(str) {      //비강제 해제 == 옵셔널 바인딩
//    print("반환값은 \(intFromStr)")
//} else {
//    print("실패")
//}


////: guard문을 통한 옵셔널 바인딩
//func intStr(str: String) {
//    guard let intFromeStr = Int(str) else {
//        print("failed")
//        return
//    }
//    print("binding successed. \(intFromeStr)")
//}


////: 컴파일러에 의한 옵셔널 자동 해제 - 비교연산자일때는 해제하여 비교
//let optInt = Int("123")
//if optInt == 123 {
//    print("optInt == 123")
//} else {
//    print("optInt != 123")
//}


////: 옵셔널 묵시적 해제
//var value: Int! = 10
//var result = value + 5
//print(result)


//var test:String! = "123adsf sdf"
//print(test) // ---------> 옵셔널로 나오는 이유...??????????





////: 함수
//func printHello() {                               // 매개변수X 반환값X
//    print("hello")
//}
//
//func sayHello() -> String {                       // 매개변수X 반환값O
//    let returnValue = "hello"
//    return returnValue
//}
//
//func printHelloWithName(name: String) {           // 매개변수O 반환값X
//    print("\(name), hello")
//}
//
//func sayHelloWihName(name: String) -> String {    // 매개변수O 반환값O
//    let returnValue = "\(name), hello"
//    return returnValue
//}
//
//func hello(name: String?) {                       // 반환값은 없으나 반환하는 경우 - 조건부 종료
//    guard let _name = name else {
//        return
//    }
//    print("\(_name), Hi")
//}


////: 선언과 호출
//func printHello(to name: String, welcomeMessage msg: String) {
//    print("\(name), \(msg)")
//}
//printHello(to: "JH", welcomeMessage: "Hi!")


////: 함수의 반환값과 튜플
//func getUserInfo() -> (Int, Character, String) {
//
//    let gender: Character = "M"
//    let height = 180
//    let name = "han"
//
//    return (height, gender, name)
//}
//
//var uInfo = getUserInfo()
//uInfo.0
//
//var (a, _, c) = getUserInfo()
//print("\(a), \(c)")


////: 타입알리아스과 변수가 바인딩된 튜플의 사용
//typealias infoResult = (h: Int, g: Character, n: String)
//
//func getUserInfo() -> infoResult {
//
//    let gender: Character = "M"
//    let height = 180
//    let name = "han"
//
//    return (height, gender, name)
//}
//
//var uInfo = getUserInfo()
//uInfo.g


////: 외부 매개변수의 생략
//func printHello(_ name: String, _ msg: String) {
//
//    print("\(name), \(msg)")
//}
//printHello("H", "Hi")


////: 가변 인자
//func avg(score: Int...) -> Double { // 인자를 배열로 받음
//    var total = 0
//    for r in score {
//        total += r
//    }
//    return Double(total) / Double(score.count)
//}
//
//avg(score: 10, 20, 30, 40)


////: 기본값을 갖는 매개변수
//func echo(message: String, newLine: Bool = true) {
//    if newLine == true {
//        print(message, true)
//
//    } else {
//        print(message, false)
//    }
//}
//
//echo(message: "123", newLine: false)


////: 매개변수의 수정
//func incrementBy(base: Int) -> Int {
//    var base = base
//    base += 1
//    return base
//}

//func descAge(name: String, _ paramAge: Int) -> String {
//
//    var name = name
//    var paramAge = paramAge
//
//    name = name + "C"
//    paramAge += 1
//
//    return "\(name)의 내년 나이는 \(paramAge)"
//}
//
//print(descAge(name: "ab", 20))



////: inout 매개변수
//func foo(paramCount: inout Int) -> Int {
//
//    paramCount += 1
//
//    return paramCount
//}
//
//var count = 30
//
//print(count)
//print(foo(paramCount: &count))
//print(count)


////: 변수 생명 범위와 주기
//var count = 30
//
//func foo(count: Int) -> Int {
//
//    var count = count
//    count += 1
//    return count
//}
//
//print(foo(count: count))
//print(count)



////: 일급 함수의 특성1 - 변수나 상수에 합수 대입 가능
//func foo(base: Int) -> String {
//    print("func exec")
//    return "result is \(base + 1)"
//}
//
//let fn1 = foo(base: 5)
//let fn2 = foo
//fn2(3)


////: 함수 대입 종류
//func boo(age: Int) -> String {
//    return "\(age)"
//}
//
//func boo(age: Int, name: String) -> String {
//    return "\(name), \(age)"
//}
//
//let d = boo(age: Int) // 식별자가 다르면 함수이름은 같아도 무방
//let t: (Int, String) -> String = boo
//// or
//let e: (Int, String) -> String = boo(age: Int, name: String)
//// or
//let x = boo(age: Int, name: String)


////: 일급 함수의 특성2 - 함수의 반환타입으로 함수를 사용할 수 있음
//func desc() -> String {
//    return "this is desc()"
//}
//
//func pass() -> () -> String {
//    return desc
//}
//
//let p = pass()
//p()
//
//var a = pass
//a()()


////: 계산기 예제
//func plus(a: Int, b: Int) -> Int {
//    return a + b
//}
//
//func minus(a: Int, b: Int) -> Int {
//    return a - b
//}
//
//func times(a: Int, b: Int) -> Int {
//    return a * b
//}
//
//func divide(a: Int, b: Int) -> Int {
//    guard b != 0 else {
//        return 0
//    }
//    return a / b
//}
//
//func calc(_ operand: String) -> (Int, Int) -> Int {
//    switch operand {
//    case "+" :
//        return plus
//    case "-" :
//        return minus
//    case "*" :
//        return times
//    case "/" :
//        return divide
//    default:
//        return plus
//    }
//}
//
//let c = calc("*")
//c(3,5)
//
//calc("-")(5,3)
//calc("/")(5,0)


////: 일급 함수의 특성3 - 함수의 인자값으로 함수를 사용할 수 있음
////: 콜백함수의 사용1
//func incr(param: Int) -> Int {
//    return param + 1
//}
//
//func broker(base: Int, funtion fn: (Int) -> Int) -> Int {
//    return fn(base)
//}
//
//broker(base: 4, funtion: incr(param:))


////: 콜백함수의 사용2
////: defer 블록은 함수의 종료 직전에 실행, 읽기 전에 종료되면 실행X
////: 여러번 사용 가능. 마지막 블록부터 실행. 여러번 중첩 사용 가능. 단 바깥쪽부터 실행.
//func successThrough() {
//    print("Operating Successed")
//}
//
//func failThrough() {
//    print("Operating Failed")
//}
//
//func divide(base: Int, success sCallBack: () -> Void, fail fCallBack: () -> Void) -> Int {
//
//    guard base != 0 else {
//        fCallBack()
//        return 0
//    }
//
//    defer {             // defer 블록은 함수의 종료 직전에 실행, 읽기 전에 종료되면 실행X
//        sCallBack()
//    }
//
//    return 100 / base
//}
//
//divide(base: 20, success: successThrough, fail: failThrough)
//
////: 클로저
//divide(base: 30, success:{ () -> Void in print("Successed")}, fail: { () -> Void in print("Failed")})



////: 함수의 중첩
//func outer(base: Int) -> String {
//
//    func inner(inc: Int) -> String {
//        return "\(inc) return"
//    }
//
//    let result = inner(inc: base + 1)
//    return result
//}
//
//outer(base: 3)


******************************** 여기까지 *************************************

//func outer(param: Int) -> (Int) -> String {
//
//    func inner(inc: Int) -> String {
//        return "\(inc) return"
//    }
//
//    return inner
//}
//
//let fn1 = outer(param: 3)
//let fn2 = fn1(30)




//func basic(param: Int) -> (Int) -> Int {
//
//    let value = param + 20
//
//    func append(add: Int) -> Int {
//        return value + add
//    }
//
//    return append
//}
//
//let result = basic(param: 10)
//let result1 = basic(param: 30)
//result(10)
//result(30)




//let f = { () -> Void in print("closure run") }
//f()
//
//({ () -> Void in print("closureer run") }) ()
//
//let c = { (s1: Int, s2: String) -> Void in print("\(s1), \(s2)") }
//c(1, "clouser")
//
//({ (s1: Int, s2: String) -> Void in print("\(s1), \(s2)") }) (2, "clo")




//var value = [6, 5, 3, 7, 2, 1]
//
////func order(s1: Int, s2: Int) -> Bool {
////
////    if s1 > s2 {
////        return true
////    } else {
////        return false
////    }
////}
//
////value.sort(by: {
////    (s1: Int, s2: Int) -> Bool in
////    if s1 > s2 {
////        return true
////    } else {
////        return false
////    }
////})
//
////value.sort(by: { s1, s2 in return s1 > s2 })
//value.sort(by: { $0 > $1 })
//value.sort(by: >)
//print(value)




//func divide(base: Int, success s: () -> Void) -> Int {
//
//    defer {
//        s()
//    }
//    return 100 / base
//}
//
//divide(base: 50) { () in print("success") }




//func callBack(fn: @escaping () -> Void) {
//    let f = fn
//    f()
//}
//
//callBack {
//    print("closure running")
//}




//func condition(stmt: () -> Bool) {
//
//    if stmt() == true {
//        print("true")
//
//    } else {
//        print("false")
//    }
//}
//
//condition { 4 > 2 }




//func condition(stmt: @autoclosure () -> Bool) {
//    if stmt() == true {
//        print("true")
//    } else {
//        print("false")
//    }
//}
//
//condition(stmt: ( 4 > 2 ))




//var arrs = [String]()
//
//func addVars(fn: @autoclosure () -> Void) {
//
//    arrs = Array(repeating: "", count: 3)
//    fn()
//}
//
//addVars(fn: arrs.insert("kr", at: 1))
//
//print(arrs)




//let vMode = VideoMode()
//vMode.name = "Sample"
//vMode.res.width = 1280
//
//var res = vMode.res
//res.width = 1400
//
//
//print("\(vMode.res.width)")
//
//let insRes = Resolution()
//let insVMode = VideoMode()
//
//let width = insRes.width
//print("insRes Instance's width value is \(width)")




//let fhd = Resolution(width: 1920, height: 1080)
//var cinema = fhd
//cinema.width = 2048
//print(fhd.width)




/*
 하나 이상 해당하면 구조체 사용.
 1. 서로 연관된 몇 개의 기본 데이터 타입들을 캡슐화하여 묶는 것이 목적일 때
 2. 캡슐화된 데이터에 상속이 필요하지 않을 때
 3. 캡슐화된 데이터를 전달하거나 할당하는 과정에서 참조 방식보다는 값이 복사되는 것이 합리적일 때
 4. 캡슐화된 원본 데이터를 보존해야 할 때
 */

//struct Resolution {
//
//    var width = 0
//    var height = 0
//
//    func desc() -> String {
//        return "Resolutin Struct"
//    }
//}
//
//class VideoMode {
//
//    var interlaced = false
//    var frameRate = 0.0
//    var name: String?
//    var res = Resolution()
//
//
//    func desc() -> String {
//        return "Video Class"
//    }
//}
//
//let video = VideoMode()
//video.name = "Origianl"
//let dvd = video
//dvd.name = "DVD"
//video.name
//dvd.name
//
//func changeName(v: VideoMode) {
//    v.name = "Function"
//}
//
//changeName(v: video)
//dvd.name
//video.name
//
//if video === dvd {
//    print("equal")
//} else {
//    print("no")
//}
//
//let vs = VideoMode()
//let ds = VideoMode()
//
//if vs === ds {
//    print("ok")
//} else {
//    print("no")
//}




//class User {
//
//    var name: String
//
//    init() {
//        self.name = ""
//    }
//}
//




//struct FixedLengthRange {
//
//    var startValue: Int
//    let lengh: Int
//}
//
//struct FlexibleLengthRange {
//
//    let startValue: Int
//    var length: Int
//}
//
//var rangeOfFixedIntegers = FixedLengthRange(startValue: 0, lengh: 3)
//rangeOfFixedIntegers.startValue = 4
//
//var rangeOfFlexibleIntegers = FlexibleLengthRange(startValue: 0, length: 3)
//rangeOfFlexibleIntegers.length = 5




//class OnCreate {
//
//    init() {
//        print("On Create!")
//    }
//}
//
//class LazyTest {
//
//    var base = 0
//    lazy var late = OnCreate()
//
//    init() {
//        print("Lazy Test")
//    }
//}
//
//let lz = LazyTest()
//lz.late




//class PropertyInit {
//
//    var value01: String! = {
//        print("value01 exec")
//        return "value01"
//    }()
//
//    var value02: String! = {
//        print("value02 exec")
//        return "value02"
//    }()
//
//    lazy var value03: String! = {
//        print("value03 exec")
//        return "value03"
//    }()
//}


//let s = PropertyInit()
//s.value01
//s.value02

//let s1 = PropertyInit()
//s1.value03
//
//s1.value03




//import Foundation
//
//struct UserInfo {
//
//    var birth: Int!
//    var thisYear: Int! {
//
//        get {
//            let df = DateFormatter()
//            df.dateFormat = "yyyy"
//
//            return Int(df.string(from: Date()))
//        }
//    }
//
//    var age: Int {
//
//        get {
//
//            return (self.thisYear - self.birth) + 1
//        }
//    }
//}
//
//let info = UserInfo(birth: 1983)
//print(info.age)




//struct Position {
//    var x: Double = 0.0
//    var y: Double = 0.0
//}
//
//struct Size {
//    var width: Double = 0.0
//    var height: Double = 0.0
//}
//
//struct Rect {
//
//    var origin = Position()
//    var size = Size()
//
//    var center: Position {
//        get {
//            let centerX = self.origin.x + (self.size.width / 2)
//            let centerY = self.origin.y + (self.size.height / 2)
//            return Position(x: centerX, y: centerY)
//        }
//
//        set(newCenter) {
//            self.origin.x = newCenter.x - (size.width / 2)
//            self.origin.y = newCenter.y - (size.height / 2)
//        }
//    }
//}
//
//let p = Position(x: 50.0, y: 50.0)
//let s = Size(width: 50, height: 50)
//
//var square = Rect(origin: p, size: s)
//square.center.x
//square.center.y
//
//square.center = Position(x: 20, y: 20)




////: 프로퍼티 옵저버
//struct Job {
//    var income: Int = 0 {
//        willSet(newIncome) {
//            print("this month income is \(newIncome)")
//        }
//
//        didSet {
//            if income > oldValue {
//                print("income is increase \(income - oldValue)")
//            } else {
//                print("T.T")
//            }
//        }
//    }
//}
//
//var job = Job(income: 100)
//job.income = 200
//job.income = 150




//struct Foo {
//    static var sFoo = "Struct Type Property"
//    static var cFoo: Int {
//        return 1
//    }
//}
//
//class Boo {
//    static var sFoo = "Class Type Property"
//    static var cFoo: Int {
//        return 10
//    }
//
//    class var oFoo: Int {
//        return 100
//    }
//}
//
//Foo.sFoo
//Foo.cFoo
//Boo.sFoo
//Boo.cFoo
//Boo.oFoo




//struct Resolution {
//    var width = 0
//    var height = 0
//
//    func desc() -> String {
//        let desc = "resolution is \(self.width) X \(self.height)"
//        return desc
//    }
//}
//
//class VideoMode {
//    var resolution = Resolution()
//    var interlaced = false
//    var frameRate = 0.0
//    var name: String?
//
//    func desc() -> String {
//        if self.name != nil {
//            let desc = "this \(self.name!) mode is \(self.frameRate)"
//            return desc
//        } else {
//            let desc = "this mode is \(self.frameRate)"
//            return desc
//        }
//    }
//}
//var vm = VideoMode()
//vm.resolution = Resolution(width: 300, height: 200)
//vm.resolution.desc()
//vm.name = "12"
//vm.desc()




//class Counter {
//    var count = 0
//
//    func increment() {
//        self.count += 1
//    }
//
//    func incrementBy(_ amout: Int) {
//        self.count += amout
//    }
//
//    func reset() {
//        self.count = 0
//    }
//}
//
//let counter = Counter()
//counter.increment()
//counter.incrementBy(50)
//counter.reset()




////: 구조체나 열거형에서는 mutating 키워드로 함수에서 프로퍼티 수정 가능
//struct Point {
//    var x = 0.0, y = 0.0
//    mutating func moveByX(x deltaX: Double, y deltaY: Double) {
//        self.x += deltaX
//        self.y += deltaY
//    }
//}
//
//var point = Point(x: 10.5, y: 12.0)
//point.moveByX(x: 3.0, y: 4.5)




////: 타입메소드의 표현은 타입프로퍼티와 동일
//class Foo {
//    class func fooTypeMethod() {
//    }
//}
//
//let f = Foo()
//f.fooTypeMethod() // 오류
//Foo.fooTypeMethod()




////: 클래스의 상속
//class A {
//    var name = "Class A"
//    var description: String {
//        return "Class name is \(self.name)"
//    }
//
//    func foo() {
//        print("\(self.name)'s method foo is called")
//    }
//}
//
//let a = A()
//a.name
//a.description
//a.foo()
//
//class B: A {
//    var prop = "Class B"
//    func boo() -> String {
//        return "Class B prop = \(self.prop)"
//    }
//}
//
//let b = B()
//b.prop
//b.boo()
//b.name
//b.foo()
//b.name = "Class C"
//b.foo()




//: 엔진레벨을 넣으면 현재속도가 바뀌니 디드셋이 인식해야하는거 아닌가.. 현재로선 이해 불가
//class Vehicle {
//    var currentSpeed = 0.0
//
//    var description: String {
//        return "time per \(self.currentSpeed)"
//    }
//
//    func makeNoise() {
//    }
//}
//
//class Car: Vehicle {
//    var gear = 0
//    var engineLevel = 0
//
//    override var currentSpeed: Double {
//        get {
//            print("car getter")
//            return Double(self.engineLevel * 50)
//        }
//        set { print("car setter") }
//    }
//
//    override var description: String {
//        get {
//            return "car engine lv = \(self.engineLevel), so speed = \(self.currentSpeed)"
//        }
//        set {
//            print("new value is \(newValue)")
//        }
//    }
//}
//
////let c = Car()
////c.engineLevel = 5
////c.currentSpeed
////c.description
////c.description = "Fast Car"
//
//class AutomaticCar: Car {
//    override var currentSpeed: Double {
//
//        didSet {
//            print("didset run")
//            self.gear = Int(currentSpeed / 10.0) + 1
//        }
//    }
//}
//
//var testCar = AutomaticCar()
//testCar.engineLevel = 5
//testCar.currentSpeed = 1
//testCar.currentSpeed
//testCar.gear
//testCar.currentSpeed = 100
//testCar.engineLevel = 6




////: final은 오버라이딩 기능을 막음
//final class Vehicle {
//    var currentSpeed = 0.0
//
//    var description: String {
//        return "time per \(self.currentSpeed)"
//    }
//
//    final func makeNoise() {
//    }
//}
//
//class Bike: Vehicle {
//    override func makeNoise() {
//        print("bbam")
//    }
//}
//
//let bk = Bike()
//bk.makeNoise()




////: 기본과 하위클래스의 초기화와 타입설정, 인자 값을 수퍼클래스로 설정하면 하위클래스의 인스턴스까지 대입 가능
//class Vehicle {
//    var currentSpeed = 0.0
//    func accelerate() {
//        self.currentSpeed += 1
//        print(self.currentSpeed)
//    }
//}
//
//class Car: Vehicle {
//    var gear: Int {
//        return Int(self.currentSpeed / 20) + 1
//    }
//
//    func wiper() {
//
//    }
//}
//
//class SUV: Car {
//    var fourWheel = false
//
//}
//
//let trans: Vehicle = Car()
//let transB: Car = Car()
//
//func move(param: Vehicle) {
//    param.accelerate()
//}
//
//transB.currentSpeed
//move(param: transB)
//
//var list = [Vehicle]() // 어레이나 딕셔너리도 마찬가지
//list.append(Vehicle())
//list.append(Car())
//list.append(SUV())
//print(list)
//
//SUV() is SUV // 타입비교 연산자
//SUV() is Car
//SUV() is Vehicle
//Car() is Vehicle
//Car() is SUV
//
//let newCar: Vehicle = Car() // 타입비교
//
//if newCar is SUV {
//    print("car is suv")
//} else {
//
//    print("car is not suv")
//}
//
//
//let anyCar: Car = SUV()
//let anyVehicle = anyCar as Vehicle // 업캐스팅
//
////let anySUV = anyCar as? SUV // 다운캐스팅
////if anySUV != nil {
////    print("\(anySUV!) successed")
////}
//
//if let anySUV = anyCar as? SUV { // 위에꺼 줄인 구문
//    print("\(anySUV) successed")
//}
//
////
////let anySUV = anyCar as! SUV // 강제 캐스팅
////print("\(anySUV) successed")




////: Any, AnyObject
//class Vehicle {
//    var currentSpeed = 0.0
//}
//
//class Car: Vehicle {
//    var gear: Int = 0
//}
//
//class SUV: Car {
//    var fourWheel = false
//}
//
//var allCar: AnyObject = Car() // AnyObject는 최상위 수퍼클래스
//allCar = SUV()
//
//func move(_ param: AnyObject) -> AnyObject { // 모든 종류의 클래스를 반환할 수 있음
//    return param
//}
//
//move(Car())     // 모든 종류의 클래스를 반환할 수 있음
//move(Vehicle()) // 모든 종류의 클래스를 반환할 수 있음
//
//var list = [AnyObject]()
//list.append(Vehicle())
//list.append(Car())
//list.append(SUV())
//
//let obj: AnyObject = SUV()
//if let suv = obj as? SUV {
//    print("\(suv) successed")
//}
//
//var value: Any = "sample"
//value = 3
//value = false
//value = [1, 3, 5]
//value = { print("func run") } // ???
//
//func name(_ param: Any) {
//    print("print..\(param)")
//}
//
//name(3)
//name(false)
//name([1,3,5])
//name{print(">>>")} // ???
//
//var rows = [Any]()
//rows.append(3)
//rows.append(false)
//rows.append([1,3,5])
//rows.append{ print(">>>")}  // ???




////: 초기화 메소드
//struct Resolution {
//    var width = 0
//    var height = 0
//
//    init(width: Int) {
//        self.width = width
//    }
//}
//
//class VideoMode {
//    var resolution = Resolution(width: 2048)
//    var interlaced = false
//    var frameRate = 0.0
//    var name: String?
//
//    init(name: String) {
//        self.name = name
//    }
//
//    init(interlaced: Bool) {
//        self.interlaced = interlaced
//    }
//
//    init(interlaced: Bool, frameRate: Double) {
//        self.interlaced = interlaced
//        self.frameRate = frameRate
//    }
//
//    init(interlaced: Bool, frameRate: Double, name: String) {
//        self.interlaced = interlaced
//        self.frameRate = frameRate
//        self.name = name
//    }
//
//    init() {}
//}
//
////let resolution = Resolution.init(width: 4096)
////let videoMode = VideoMode.init(interlaced: true, frameRate: 40.0)
////let resolution = Resolution(width: 4096) // 위와 동일
////let videoMode = VideoMode(interlaced: true, frameRate: 40.0)
//
//let nameVideoMode = VideoMode(name: "name")
//let simpleVideoMode = VideoMode(interlaced: true)
//let doubleVideoMode = VideoMode(interlaced: true, frameRate: 40.0)
//let tripleVideoMode = VideoMode(interlaced: true, frameRate: 40.0, name: "name")
//
////let defaultVideoMode = VideoMode() // init(x:x)메소드가 작성되면 기본초기화는 에러, BUT init() 작성되면 OK


////: 매개변수에 초기화값을 넣어두면 init()도 사용 가능
//class VideoMode {
//    var name: String?
//
//    init(name: String = "") {
//        self.name = name
//    }
//}
//
//let defaultVideoMode = VideoMode()
//let nameVideoMode = VideoMode(name: "name")


////: 초기화 델리게이션
//class Base {
//    var baseValue: Double
//
//    init(inputValue: Double) {
//        self.baseValue = inputValue
//    }
//}
//
//class ExBase: Base {
//    override init(inputValue: Double) {
//        super.init(inputValue: inputValue)
//    }
//}
//
//class ExExBase: ExBase {
//    override init(inputValue: Double) {
//        super.init(inputValue: 10.5)
//    }
//}

////: 기본 초기화만 작성했을 때 super.init() 생략, 서브부터 연속 초기화
//class Base {
//    var baseValue: Double
//    init() {
//        self.baseValue = 0.0
//        print("base init")
//    }
//}
//
//class ExBase: Base {
//    override init() {
//        print("exbase init")
//    }
//}
//
//let ex = ExBase()



////: 기본 초기화외 다른 구문 있으면 super.init() 작성해야 함
//class Base {
//    var baseValue: Double
//    init() {
//        self.baseValue = 0.0
//        print("base init")
//    }
//
//    init(baseValue: Double) {
//        self.baseValue = baseValue
//    }
//}
//
//class ExBase: Base {
//    override init() {
//        super.init()
//        print("exbase init")
//    }
//}


////: 옵셔널체인 개요, 옵셔널타입의 해제, 옵셔널체인 접근
//struct Human {
//    var name: String?
//    var man: Bool = true
//}
//
//struct Company {
//    var ceo: Human?
//    var companyName: String?
//}
//
//var boy: Human? = Human(name: "abc", man: true)
//var startup: Company? = Company(ceo: Human(name: "xyz", man: false), companyName: "home")
//
////if let company = startup {              // 이름 찾기
////    if let ceo = company.ceo {
////        if let name = ceo.name {
////            print("ceo name is \(name)")
////        }
////    }
////}
////
////if let name = startup!.ceo!.name {      // 이름 찾기(강제해제)
////    print("ceo name is \(name)")
////}
//
//if let name = startup?.ceo?.name {      // startup?.ceo?.name -> name은 여전히 옵셔널타입
//    print("name is \(name)")
//}
//
//startup?.ceo?.name = "new name"




////: 메소드에서 옵셔널체인
//struct Human {
//    var name: String?
//    var man: Bool = true
//}
//
//struct Company {
//    var ceo: Human?
//    var companyName: String?
//    func getCEO() -> Human? {
//        return self.ceo
//    }
//}
//
//var someCompany: Company? = Company(ceo: Human(name: "cook", man: true), companyName: "apple")
//if let name = someCompany?.getCEO()?.name {
//    print("name is \(name)")
//}


////: 열거형
//enum Direction {
//    case north
//    case south
//    case east, west
//}
//
//var n = Direction.north
//var w = Direction.west
//var s: Direction = Direction.south
//s = .north
//var e: Direction = .east
//
//switch w {
//case Direction.north:
//    print("n")
//case Direction.south:
//    print("s")
//case .east:
//    print("e")
//case .west:
//    print("direction is w")
//}
//
////: 열거형 멤버에 값 할당 - 선언시점
//enum Rank: Int {
//    case one = 10
//    case two = 20
//    case three, four, five
//}
//
//Rank.five.rawValue
//
////: 열거형 사용시점에 값 할당(연관값 == Associated Values)
//enum ImageFormat {
//    case JPEG
//    case PNG(Bool)
//    case GIF(Int, Bool)
//}
//
//var newImage = ImageFormat.PNG(true)
//newImage = .GIF(256, false)




////: 열거형 - 연산 프로퍼티와 메소드 정의(인스턴스 프로퍼티/메소드, 타입 프로퍼티/메소드 정의 가능)
//enum HTTPCode: Int {
//    case OK = 200
//    case NOT_MODIFY = 304
//    case INCORRECT_PAGE = 404
//    case SERVER_ERROR = 500
//
//    var value: String {
//        return "HTTPCode number is \(self.rawValue)"
//    }
//
//    func getDescription() -> String {
//        switch self {
//        case .OK :
//            return "Code is \(self.rawValue)"
//        case .NOT_MODIFY :
//            return "Code is \(self.rawValue)"
//        case .INCORRECT_PAGE :
//            return "Code is \(self.rawValue)"
//        case .SERVER_ERROR :
//            return "Code is \(self.rawValue)"
//        }
//    }
//
//    static func getName() -> String {
//        return "This Enum is Code."
//    }
//}
//
//var response = HTTPCode.OK
//response = .NOT_MODIFY
//
//response.value
//response.getDescription()
//HTTPCode.getName()
//
//func test (code: HTTPCode) -> String {
//    return "\(code.rawValue)"
//}
//
//test(code: .NOT_MODIFY)



////: 익스텐션 - 연산 프로퍼티
//extension Double {
//    var km:Double { return self * 1_000.0 } // _는 자릿수 구분, 생략가능
//    var m: Double { return self }
//    var cm: Double { return self / 100.0 }
//    var mm: Double { return self / 1_000.0 }
//    var description: String {
//        return "\(self)km is \(self.km)m, \(self)cm is \(self.cm)m, \(self)mm is \(self.mm)m"
//    }
//}
//
//2.km
//5.5.cm
//125.mm
//7.0.description
//
//let distance = 42.0.km + 195.m
//print("\(distance)m")




////: 익스텐션 - 메소드
//extension Int {
//    func repeatRun(task: () -> Void) {
//        for _ in 0..<self {
//            task()
//        }
//    }
//}
//
//let d = 3
//d.repeatRun(task: { print("HI") })
//d.repeatRun { print("Hello") }
//
//
//extension Int {
//    mutating func square() {
//        self = self * self
//    }
//}
//
//var value = 3
//value.square()
////3.square() // 리터럴은 상수이므로 에러

// MARK: - 점프바에서 메소드 그룹화



////: 프로토콜
//protocol NewMethodProtocol {
//    var name: String { get set }
//    var description: String { get }
//
//    mutating func execute(cmd command: String, desk: String)
//    func showPort(p: Int, memo desc: String) -> String
//}
//
//struct RubyNewService2: NewMethodProtocol {
//
//    var name: String = "protocol exsample"
//    var description: String { return "name is \(self.name)"}
//
//    func execute(cmd comm: String, desk d: String) { //프로퍼티 수정 의도에 따라 mutating 생략가능
//        if comm == "start" {
//            print("\(d) run")
//        }
//    }
//
//    func showPort
//        (p: Int, memo description: String) -> String { //프로토콜과 외부매개변수명은 동일, 내부는 임의변경 가능
//        return "port: \(p), memo: \(description)"
//    }
//}
//
//var a = RubyNewService2()
//a.name
//a.description
//a.execute(cmd: "start", desk: "123")
//a.showPort(p: 123, memo: "333")




////: 프로퍼티 수정 의도에 따라 mutating 생략가능 - 구조체일때
//protocol MService {
//    mutating func execute(cmd: String)
//    func showPort(p: Int) -> String
//}
//
//struct RubyMService: MService {
//    var paramCommand: String?
//
//    mutating func execute(cmd: String) { // mutating 생략 가능
//        self.paramCommand = cmd // 프로토콜에서 mutating이 정의되더라도 self를 수정하지 않으면 생략 가능
//        if cmd == "start" {
//            print("run")
//        }
//    }
//
//    func showPort(p: Int) -> String {
//        return "Port: \(p), now command: \(self.paramCommand!)"
//    }
//}




////: 클래스는 static외에 class도 사용가능
//protocol SomeTypeProperty {
//    static var defaultValue: String { get set }
//    static func getDefaultValue() -> String
//}
//
//struct TypeStruct: SomeTypeProperty {
//    static var defaultValue = ""
//    static func getDefaultValue() -> String {
//        return defaultValue
//    }
//}
//
//class ValueObject: SomeTypeProperty {
//    static var defaultValue = ""
//    class func getDefaultValue() -> String {
//        return defaultValue
//    }
//}




////: 프로토콜과 초기화 메소드
//protocol SomeInitProtocol {
//    init()
//    init(cmd: String)
//}
//
//struct SInit: SomeInitProtocol {
//    var cmd: String
//
//    init() {
//        self.cmd = "start"
//    }
//
//    init(cmd: String) {
//        self.cmd = cmd
//    }
//}
//
//class CInit: SomeInitProtocol {
//    var cmd: String
//
//    required init() { // 클래스에선 required 키워드를 붙임 - 초기화 구문에서만
//        self.cmd = "start"
//    }
//
//    required init(cmd: String) {
//        self.cmd = cmd
//    }
//}




////: 클래스에서의 초기화 상속과 프로토콜
//protocol Init {
//    init()
//    func getValue()
//}
//
//class Parents {
//    init() { }
//    func getValue() {}
//}
//
//class Child: Parents, Init {
//    override required init() { }
//    override func getValue() { }
//}
//
//
//
//
////: 타입으로서의 프로토콜
//protocol Wheel {
//    func spin()
//    func hold()
//}
//
//class Bicycle: Wheel {
//    var moveState = false
//
//    func spin() {
//        self.pedal()
//    }
//
//    func hold() {
//        self.pullBreak()
//    }
//
//    func pedal() {
//        self.moveState = true
//    }
//
//    func pullBreak() {
//        self.moveState = false
//    }
//}
//
//let trans: Wheel = Bicycle()
//trans.



////: 여러 프로토콜의 구현과 타입 어노테이션
//protocol A {
//    func doA()
//}
//
//protocol B {
//    func doB()
//}
//
//class Impl: A, B {
//    func doA() {}
//    func doB() {}
//    func desc() -> String {
//        return "class instance method"
//    }
//}
//
//var ipl: A & B = Impl() // 두 프로토콜의 할당
//ipl.




////: 델리게이션: ??
//// 델리게이트 참조를 통해 메소드를 호출할 인스턴스 객체를 전달받고,
//// 이 인스턴스 객체가 구현하고 있는 프로토콜에 선언된 메소드를 호출하는 것
//protocol FuelPumpDelegate {
//    func lackFuel()
//    func fullFuel()
//}
//
//class FuelPump {
//    var maxGage: Double = 100.0
//    var delegate: FuelPumpDelegate? = nil
//
//    var fuelGage: Double {
//        didSet {
//            if oldValue < 10 {
//                self.delegate?.lackFuel()
//            } else if oldValue == self.maxGage {
//                self.delegate?.fullFuel()
//            }
//        }
//    }
//
//    init(fuelGage: Double = 0) {
//        self.fuelGage = fuelGage
//    }
//
//    func startPump() {
//        while (true) {
//            if self.fuelGage > 0 {
//                self.jetFuel()
//            } else {
//                break
//            }
//        }
//    }
//
//    func jetFuel() {
//        self.fuelGage -= 1
//    }
//
//}
//
//class Car: FuelPumpDelegate {
//    var fuelPump = FuelPump(fuelGage: 100)
//
//    init() {
//        self.fuelPump.delegate = self
//    }
//
//    func lackFuel() {
//        print("lackfuel")
//    }
//
//    func fullFuel() {
//        print("fullfuel")
//    }
//
//    func start() {
//        fuelPump.startPump()
//    }
//}
//
//var a = Car()
//a.start()




////: 델리게이션 예제
//protocol BlahProtocol {
//    func blah(blahObject: BlahClass)
//}
//
//class BlahClass {
//    var delegate: BlahProtocol?
//
//    func something() {
//        self.delegate?.blah(blahObject: self)
//    }
//}
//
//class CustomClass: BlahProtocol {
//    let blah = BlahClass()
//
//    init() {
//        self.blah.delegate = self
//        self.blah.something()
//    }
//
//    func blah(blahObject: BlahClass) {
//        print("Calling with blah protocol")
//    }
//}
//
//let cc = CustomClass()
//cc.blah(blahObject: BlahClass())




////: 델리게이션 예제
//protocol Cook {
//    func makingFood()
//}
//
//struct Mom: Cook {
//    func makingFood() { print("Pizza coming soon!") }
//}
//
//var mom = Mom()  // Make a real mom
//mom.makingFood() // "Pizza coming soon!"
//
//struct Baby { // Make a baby
//    var delegate: Cook? // delegate = someone with special skills
//}
//
//var babe = Baby() // Create a baby
//babe.delegate = mom
//
//babe.delegate?.makingFood() // "Pizza coming soon!"




//////: 델리게이션 예제
//protocol FirstVCDelegate {
//    func passData(data: String)
//}
//
//class FirstVC {
//    var delegate: FirstVCDelegate?
//}
//
//class SecondVC: FirstVCDelegate {
//    func passData(data: String) {
//        print("The CEO gave me \(data)")
//    }
//}
//
//let firstVC = FirstVC()
//let secondVC = SecondVC()
//
//firstVC.delegate = secondVC  // secondVC = delegate
//firstVC.delegate?.passData(data: "a bunch of contracts")




////: 익스텐션에 프로토콜 구현
//class Man {
//    var name: String?
//
//    init(name: String? = "Name") {
//        self.name = name
//    }
//}
//
//protocol Job {
//    func doWork()
//}
//
//extension Man: Job {
//    func doWork() {
//        print("\(self.name!) do work")
//    }
//}
//
//let man = Man()
//man.doWork()




////: 프로토콜의 타입캐스팅
//protocol Machine {
//    func join()
//}
//
//protocol Wheel: Machine {
//    func rotate()
//    init(name: String, currentSpeed: Double)
//}
//
//class Vehicle {
//    var currentSpeed = 0.0
//    var name = ""
//
//    init(name: String, currentSpeed: Double) {
//        self.name = name
//        self.currentSpeed = currentSpeed
//    }
//}
//
//class Car: Vehicle, Wheel {
//    required override init(name: String, currentSpeed: Double) {
//        super.init(name: name, currentSpeed: currentSpeed)
//    }
//
//    func join() {}
//
//    func rotate() {
//        print("\(self.name) rotating")
//    }
//}
//
//class Carpet: Vehicle, Machine {
//    func join() {}
//}
//
//var translist = [Vehicle]()
//translist.append(Car(name: "카", currentSpeed: 10.0))
//translist.append(Carpet(name: "카펫", currentSpeed: 5.0))
//
//for trans in translist {
//    if let obj = trans as? Wheel {
//        obj.rotate()
//    } else {
//        print("type casting failed")
//    }
//}
//
//
//
//
////: 클래스전용 프로토콜
//protocol SomeClassOnlyProtocol: class {}
//protocol SomeClassOnlyInheritProtocol: class, Wheel, Machine {} // 프로토콜 상속받는 클래스전용 프로토콜




////: 프로토콜 옵셔널
//import Foundation
//
//@objc protocol MsgDelegate {
//    @objc optional func onReceive(new: Int)
//}
//
//class MsgCenter {
//    var delegate: MsgDelegate?
//    var newMsg: Int = 0
//
//    func msgCheck() {
//        if newMsg > 0 {
//            self.delegate?.onReceive?(new: self.newMsg)
//            self.newMsg = 0
//        }
//    }
//}
//
//class Watch: MsgDelegate {
//    var msgCenter: MsgCenter?
//
//    init(msgCenter: MsgCenter) {
//        self.msgCenter = msgCenter
//    }
//
//    func onReceive(new: Int) {
//        print("\(new) receive")
//    }
//}
//
//var m = MsgCenter()
//var w = Watch(msgCenter: m)
//
//w.msgCenter




////: 오류타입 던지기 (throws, throw)
//import Foundation
//
////protocol Error {} // 작성하는거 아님
//
//enum DateParseError: Error { // 오류타입 정의하기
//    case overSizeString
//    case underSizeString
//    case incorrectFormat(part: String)
//    case incorrectData(part: String)
//}
//
//struct Date {
//    var year: Int
//    var month: Int
//    var date: Int
//}
//
//func parseDate(param: NSString) throws -> Date {
//
//    guard param.length == 10 else {
//        if param.length > 10 {
//            throw DateParseError.overSizeString
//        } else {
//            throw DateParseError.underSizeString
//        }
//    }
//
//    var dateResult = Date(year: 0, month: 0, date: 0)
//
//    if let year = Int(param.substring(with: NSRange(location: 0, length: 4))) {
//        dateResult.year = year
//    } else {
//        throw DateParseError.incorrectFormat(part: "year")
//    }
//
//    if let month = Int(param.substring(with: NSRange(location: 5, length: 2))) {
//        guard month > 0 && month < 13 else {
//            throw DateParseError.incorrectData(part: "month")
//        }
//        dateResult.month = month
//    } else {
//        throw DateParseError.incorrectFormat(part: "month")
//    }
//
//    if let date = Int(param.substring(with: NSRange(location: 8, length: 2))) {
//        guard date > 0 && date < 32 else {
//            throw DateParseError.incorrectData(part: "date")
//        }
//        dateResult.date = date
//    } else {
//        throw DateParseError.incorrectFormat(part: "date")
//    }
//
//    return dateResult
//}
//
//try parseDate(param: "2020-02-28")
//
//
//
//
////: 던진 오류타입 잡아내기 - do, catch
//func getPartsDate(date: NSString, type: String) {
//    do {
//        let date = try parseDate(param: date)
//
//        switch type {
//        case "year":
//            print("year is \(date.year)")
//        case "month":
//            print("month is \(date.month)")
//        case "date":
//            print("date is \(date.date)")
//        default:
//            print("another error")
//        }
//    } catch DateParseError.overSizeString {
//        print("error case is overSizeString")
//    } catch DateParseError.underSizeString {
//        print("error case is overSizeString")
//    } catch DateParseError.incorrectFormat(let part) {
//        print("error case is \(part)")
//    } catch DateParseError.incorrectData(let part) {
//        print("error case is \(part)")
//    } catch { // 모든 오류타입 검출
//        print("another errer2")
//    }
//}
//
//getPartsDate(date: "2012-12-02", type: "date")
////let date = try! parseDate(param: "2015-12-04") //오류를 안던지게 하고 싶을때(함수 강제 실행)
////print(date)



