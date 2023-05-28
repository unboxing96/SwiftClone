//
//  Model.swift
//  week2
//
//  Created by kimpepe on 2023/05/28.
//

import Foundation

struct swipePromotion : Identifiable {
    var id = UUID()
    var icon : String
    var title : String
    var body : String
    var buttonLabel : String = "더 알아보기"
}

var swipePromotionArray : [swipePromotion] = [swipePromotion(icon: "shippingbox", title: "무료 배송", body: "집으로 배송 받으세요. 아니면 Apple Store에서 재고 제품을 픽업하세요."), swipePromotion(icon: "macbook.and.iphone", title: "Apple Trade In", body: "iPhone 8 이후 모델을 보상 판매하면 iPhone 14 또는 iPhone 14 Pro 구입 시 사용할 수 있는 ₩40,000 ~ ₩780,000 상당의 크레딧이.*"), swipePromotion(icon: "airpodspro.chargingcase.wireless", title: "Airpod Pro", body: "에어팟 프로를 잃어버렸다니... 참으로 안타깝네요 말선생님.")]
