//
//  MeetingView.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/9/16.
//

import SwiftUI

struct TimerView: View {
    var body: some View {
        ProgressView(value: 5, total: 15)
        VStack{
            HStack{
                VStack (alignment: .leading) {
                    //alignment override the default behaviour, which is centre alignment
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack (alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            //Ignore the inferred accessibility labels and values for the child views of the HStack in the header.
            //Adding supplemental data in the next few steps improves the accessibility experience.
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3") //displays countdown 1, 2 ,3
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                } //empty for now
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
