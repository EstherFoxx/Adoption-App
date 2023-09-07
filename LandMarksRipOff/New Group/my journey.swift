//
//  my journey.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/9/6.
//

import SwiftUI

struct my_journey: View {
    var body: some View {
        NavigationView{
        VStack{
            Text("My Journey")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 36))
            
            VStack{
                CircleImage_S(image: Image("Journal")).offset(y: -10)
                Text("Volunteering Journal")
                    .offset(y: -10)
            }
            
            HStack{
                Spacer()
                
                VStack{
                    NavigationLink {// destination view to navigation to
                    Adoption_Checklist_Details()
                } label: {
                    CircleImage_S(image: Image("Checklist"))
                }
                    Text("Adoption Checklist")
                }
                
                Spacer()
                
                VStack{
                    CircleImage_S(image: Image("Funds"))
                    Text("Donation Funds")
                }
                Spacer()
            }
            
        }
        }
    }
}

struct my_journey_Previews: PreviewProvider {
    static var previews: some View {
        my_journey()
    }
}
