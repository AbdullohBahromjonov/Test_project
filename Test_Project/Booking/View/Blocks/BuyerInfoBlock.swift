//
//  BuyerInfoBlock.swift
//  Test_Project
//
//  Created by Abdulloh on 19/12/23.
//

import SwiftUI

struct BuyerInfoBlock: View {
    @State var phoneNumber = ""
    @State var email = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Информация о покупателе")
                .font(.system(size: 22, weight: .medium))
                .padding(.bottom, 5)
            
            FloatingTextField(
                text: $phoneNumber,
                placeholder: "Номер телефона",
                keyboard: .numberPad,
                phoneNumber: true
            )
            
            FloatingTextField(
                text: $email,
                placeholder: "Почта",
                keyboard: .emailAddress
            )
            
            Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                .foregroundColor(.gray)
                .font(.system(size: 14))
                .padding(.horizontal, 5)
        }
        .blockBackground(alignment: .center)
    }
}

#Preview {
    BuyerInfoBlock()
}