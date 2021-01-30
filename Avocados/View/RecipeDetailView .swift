//
//  RecipeDetailView .swift
//  Avocados
//
//  Created by Vatana Chhorn on 29/01/2021.
//

import SwiftUI

struct RecipeDetailView_: View {
    
    var recipe : Recipe
    
    @State private var pulsate : Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack( alignment: .center, spacing: 0 ) {
                // Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    // TITLE
                    Text(recipe.title)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    // RATING
                    
                    RecipeRatingView(recipe: recipe)
                    
                    // COOKING
                    
                    RecipeCookingView(recipe: recipe)

                    
                    // INCREDIENTS
                    
                    Text("Incredient")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack (alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) {
                            item in
                            VStack (alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                    Divider()
                            }  //: VStack
                        }
                    }  //: VStack
                    
                    // INSTRUCTION
                    
                    Text("Instruction")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { item in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                    }
                    
                }  //: GROOUP
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                
            }//: VStack
        }  //: ScrollView
        .edgesIgnoringSafeArea(.top)
        .overlay(
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4 )
                            .opacity(pulsate ? 1 : 0.6)
                            .scaleEffect(pulsate ? 1.2 : 0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    }
                    Spacer()
                }
                .padding()
            })
        )
        .onAppear() {
            self.pulsate.toggle()
        }
    }
}

struct RecipeDetailView__Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView_(recipe: recipeData[0])
    }
}
