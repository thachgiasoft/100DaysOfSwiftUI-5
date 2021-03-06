//
//  AddressView.swift
//  Project10_CupcakeCorner_practice
//
//  Created by Ильдар Нигметзянов on 18.03.2020.
//  Copyright © 2020 Ildar. All rights reserved.
//

import SwiftUI

struct AddressView: View {
    
    @ObservedObject var order: Order
    
    var body: some View {
        Form{
            Section{
                TextField("Name",text:$order.order.name)
                TextField("Name",text:$order.order.streetAddress)
                TextField("Name",text:$order.order.city)
                TextField("Name",text:$order.order.zip)
            }
            
            Section{
                NavigationLink(destination: CheckoutView(order:order)){
                    Text("Check out")
                }
            }
            .disabled(order.hasValidAddress == false)
        }
        .navigationBarTitle("Delivery details",displayMode: .inline)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(order: Order())
    }
}
