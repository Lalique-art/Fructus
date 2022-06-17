//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Itunu Raimi on 12/02/2021.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES
    var fruit: Course
    let details = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    //MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrional value per 100g") {
                ForEach(0..<details.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(details[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.details[item])
                            .multilineTextAlignment(.trailing)
                    } //: HSTACK
                } //: LOOP
            } //: DISCLOSUREGROUP
        } //: GROUPBOX
        
    }
}

//MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
