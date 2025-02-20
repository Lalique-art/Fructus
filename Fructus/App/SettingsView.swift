//
//  SettingsView.swift
//  Fructus
//
//  Created by Itunu Raimi on 12/02/2021.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelTitle: "CSO", labelImage: "CSO"),
                        content: {
                            Divider().padding(.vertical, 4)
                            HStack(alignment: .center, spacing: 10) {
                                Image("CSO")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height:  80)
                                    .cornerRadius(9)
                                Text("رسالة البرنامج تنمية مهارات القرن الحادي و العشرين لدى الطلاب المتميزين في سن مبكرة و تشجيعهم على نشر المعارف في العلوم و التكنولوجيا و الهنسة والرياضيات STEM في المدارس و المجتمع.")
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                            }
                        }) //: GROUPBOX
                    
                    //MARK: - SECTION 2
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelTitle: "العودة للصفحة الرئيسية", labelImage: "paintbrush"),
                        content: {
                            Divider().padding(.vertical, 4)
                            Text("لأعادة التشغيل والعودة للصفحة الرئيسية")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                            
                            Toggle(isOn: $isOnboarding, label: {
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(.secondary)
                                }
                            })
                            .padding()
                            .background(Color(UIColor.tertiarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        })//: GROUPBOX
                    
                    
                    
                    
                    //MARK: - SECTION 3
                 
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                )
                .padding()
            } //: SCROLL
        } //: NAVIGATION
        
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
}
