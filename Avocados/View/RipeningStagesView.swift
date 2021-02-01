//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Vatana Chhorn on 25/01/2021.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTIES
    
    var ripeningStages : [Ripening] = ripeningData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false ) {
            VStack {
                Spacer()
                HStack (alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }  //: HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }  //: VStack
        }  //: ScrollView
        
    }
}

    // MARK: - PREVIEW
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
