//
//  OnboardingView.swift
//  Fructus
//
//  Created by Jonathan Eduardo Meriño Bolívar - Ceiba Software on 8/03/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruitsData[0...5]) { item in
                FruitCardView(fruit: item)
            }//: LOOP
        }//:TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
    // MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
