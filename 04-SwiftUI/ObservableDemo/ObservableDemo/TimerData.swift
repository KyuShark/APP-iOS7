//
//  TimerData.swift
//  ObservableDemo
//
//  Created by Jungman Bae on 1/13/25.
//

import Foundation
import Combine

class TimerData: ObservableObject {
    @Published var timeCount = 0
    var timer: Timer?
    
    init() {
//      기존 셀렉터 호출 방식 : #selector 필요
//        timer = Timer.scheduledTimer(timeInterval: 1.0,
//                                     target: self,
//                                     selector: #selector(timerDidFire),
//                                     userInfo: nil,
//                                     repeats: true)
        
        // [weak self] 는 변수 캡쳐 시 ARC 카운트가 증가하지 않도록 해서, 메모리 누수를 막는다.
//        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
//            self?.timerDidFire()
//        }
        // [unowned self] 는 강제 언래핑된 self 키워드, 조심해서 사용해야함
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [unowned self] _ in
            self.timerDidFire()
        }
    }
    
    deinit {
        timer?.invalidate()
    }
    
    /*@objc 기존 셀렉터 방식의 호출: 반드시 함수 정의시에 @objc 키워드 사용 */ func timerDidFire() {
        timeCount += 1
    }
    
    func resetCount() {
        timeCount = 0
    }
}
