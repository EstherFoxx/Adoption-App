//
//  Adoption Checklist Details.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/9/6.
//

import SwiftUI

//struct Task: Identifiable {
    //let id = UUID()
    //let name: String
    //var isCompleted: Bool
//}

struct Adoption_Checklist_Details: View {
    //@EnvironmentObject var modelData: ModelData
    //to support the button, which needs access to the environ's model data for comparison
    
    //var adoptionInfos: [AdInfo]
    //var adoptionInfo: AdInfo
    
    
    @State private var isCompleted: Bool = false
    
    //var landmarkIndex: Int {
        //modelData.ad_info.firstIndex(where: { $0.id == adoptionInfo.id })!
        //compute the index of the input landmark by comparing it with the model data
    //}
    var ad_info = ModelData().ad_info
    
    var body: some View {
        VStack{
            Text("Checklist")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 36))
            List(ad_info) { adoptionInfo in
                row_adoption(adoptionInfo: adoptionInfo)
                
                //adoptionCheckBox(isCompleted: $modelData.ad_info[landmarkIndex].isCompleted)
                //update the number of completed tasks
                //Text("Completed tasks count:\(adoptionInfos.filter { $0.isCompleted }.count)")
            }
            
        }
        
    }
}

struct Adoption_Checklist_Details_Previews: PreviewProvider {
    
    static var previews: some View {
        Adoption_Checklist_Details()
        //for initialization
    }
}

