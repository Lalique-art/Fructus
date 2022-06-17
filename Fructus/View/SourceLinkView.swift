//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Itunu Raimi on 12/02/2021.
//

import SwiftUI

struct SourceLinkView: View {
    //    MARK: - PROPERTIES
    
    //    MARK: - BODY
    var body: some View {
        GroupBox() {
            HStack {
               Text("Content Source")
                Spacer()
                Link("dawrat kfas", destination: URL(string: "https://www.dawrat.com/g/kfas/welcome?next=%2Fg%2Fkfas")!)
                Image(systemName: "arrow.up.right.square")
            } //: HSTACK
            .font(.footnote)
        } //: GROUPBOX
    }
}

//    MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
    }
}
