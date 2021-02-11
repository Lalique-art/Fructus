//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Itunu Raimi on 11/02/2021.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        Text(fruit.title)
    }
}

//MARK: PREVIEW

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
