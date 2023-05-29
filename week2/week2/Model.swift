//
//  Model.swift
//  week2
//
//  Created by kimpepe on 2023/05/28.
//

import Foundation

struct swipePromotion : Identifiable {
    var id = UUID()
    let icon : String
    let title : String
    let body : String
    let buttonLabel : String = "더 알아보기"
}

let swipePromotionArray : [swipePromotion] = [swipePromotion(icon: "shippingbox", title: "무료 배송", body: "집으로 배송 받으세요. 아니면 Apple Store에서 재고\n제품을 픽업하세요."), swipePromotion(icon: "macbook.and.iphone", title: "Apple Trade In", body: "iPhone 8 이후 모델을 보상 판매하면 iPhone 14\n또는 iPhone 14 Pro 구입 시 사용할 수 있는 ₩40,000 ~\n₩780,000 상당의 크레딧이.*"), swipePromotion(icon: "airpodspro.chargingcase.wireless", title: "Airpod Pro", body: "에어팟 프로를 잃어버렸다니...\n참으로 안타깝네요 말선생님.")]


struct swipeProduct : Identifiable {
    var id = UUID()
    let imgName : String
    let title : String
    let body : String
}

let swipeProductArray : [swipeProduct] = [swipeProduct(imgName: "section3_swipe01", title: "다채롭게 만개한\n어버이날 선물.", body: "쉽게 선물 쇼핑하기"), swipeProduct(imgName: "section3_swipe02", title: "iPhone 14 Pro\n딥 퍼플", body: "몽환적인 색감, 색다른 경험."), swipeProduct(imgName: "section3_swipe03", title: "MacBook Pro 14\n및 16", body: "이 문구를 발견하고, 톡방에 메세지를\n먼저 보내는 사람은 말티의 선물이!")]


struct sectionModel : Identifiable {
    var id = UUID()
    let imgName : String
    let label = "NEW"
    let title : String
    let body : String
}

let sectionModelArray : [sectionModel] = [sectionModel(imgName: "section1", title: "iPhone 14", body: "iPhone 14 그리고 큼직한 사이즈의 iPhone 14 Plus. 획기적인\n도약을 이뤄낸 배터리 성능. 프로급 카메라. 6가지 멋진 컬러."), sectionModel(imgName: "section2", title: "iPad", body: "다양한 일상 작업에 맞는 완전히 새롭고, 컬러풀한 iPad, 새로운\niPad를 소개합니다.")]
