
// for-in Loop
for index in 1...10 {
    print("Hello World \(index)")
}

var count = 0
for _ in 1...5 {
    count += 1 // count = count + 1
}
print("count: \(count)")

while count < 10 {
    count += 1
    print("count: \(count)")
}

count = 1
repeat {
    print(count)
    count += 1
} while count < 10

// while Loop 내부에 종료조건이 없으면 무한 루프가 됩니다.
while true {
    count -= 1
    print(count)
    if count < 0 {
        // Loop를 빠져나가는 키워드: break
        print("break \(count)")
        break
    }
}

var i = 0
while i < 10 {
    i += 1
    // (홀수일때) 다름 루프 반복으로 넘어가는 것: continue
    if (i % 2) != 0 {
        continue
    }
    print("i \(i)")
}

// 조건 흐름 제어
let x = 10
if x > 9 {
    print("x is greater than 9")
} else {  // ==> if x <= 9
    print("x is less than or equal to 9")
}

if x == 10 {
    print("x is 10")
} else if x == 9 {
    print("x is 9")
} else if x == 8 {
    print("x is 8")
} else {
    print("x is not 8, 9 or 10")
}

func multiplyByTen(value: Int?) {
    guard let number = value, number < 10 else {
        print("Number is too high")
        return
    }
    let result = number * 10
    print(result)
}
multiplyByTen(value: 5)
multiplyByTen(value: 10)
