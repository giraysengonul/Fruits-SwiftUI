//
//  SettingsRowView.swift
//  Fruits-SwiftUI
//
//  Created by hakkı can şengönül on 11.06.2022.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name : String
    var content : String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!,destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Hakkı can ŞENGÖNÜL").previewLayout(.fixed(width: 375, height: 60)).padding()
    }
}
