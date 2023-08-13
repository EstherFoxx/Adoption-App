//
//  SFSafariViewWrapper.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/8/13.
//

import SwiftUI
import SafariServices
// allow use of safari inside of our app


struct SFSafariViewWrapper: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SFSafariViewWrapper>) {
        return
    }
}
