//
//  ContentView.swift
//  wijha
//
//  Created by Nourah on 13/05/1444 AH.
//

import SwiftUI

let tagsticker = [
    tagsContainer(tagName:"vagan", tagSymbol:"leaf.fill", tagColor:"greencolor"),
    tagsContainer(tagName:"24H", tagSymbol:"clock.fill", tagColor:"maincolorfont"),
    tagsContainer(tagName:"Children", tagSymbol:"figure.2.and.child.holdinghands", tagColor:"orangecolor"),
    tagsContainer(tagName:"Study", tagSymbol:"books.vertical.fill", tagColor:"marooncolor"),
    tagsContainer(tagName:"Entertainment", tagSymbol:"ticket.fill", tagColor:"yellowcolor"),
    tagsContainer(tagName:"Budget", tagSymbol:"dollarsign.circle.fill", tagColor:"muavecolor"),
    
]


struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
         
      
    var body: some View {
        VStack{
            ZStack{
                ScrollView{
                    
                    Image("cafepage")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode:.fill)
                        .frame(height: 390)
                        .frame(maxWidth: UIScreen.main.bounds.width)
                    ZStack{
                        RoundedRectangle(cornerRadius: 40).fill(Color("background1").gradient).frame(width: 390,height: 600)
                        HStack{
                            
                        
                            VStack{
                                Text("Zamacan Cafe")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("maincolorfont"))
                                    .lineLimit(3)
                                    //.padding(.vertical,1.0)
                                Text("Work hub caffe")
                                    .font(.callout)
                                    .foregroundColor(Color("caption"))
                                
                        
                       
                            }
                            
                               Spacer()
                            VStack{
                                HStack{
                                    Text("4.0")
                                        .foregroundColor(Color("caption"))
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color.yellow)
                                        .padding(.vertical,8.0)
                                   
                                }
                                HStack{
                                    Text("100")
                                        .foregroundColor(Color("caption"))
                                    
                                    Image(systemName: "bookmark")
                                        .foregroundColor(Color("secondaryColor"))
                                        .padding(.bottom,1)
                                }
                           
                            }
                           
                        }.padding(.horizontal, 17)
                            .padding(.bottom,480)
                        LazyHGrid(rows: rows, spacing: 5) {
                            ForEach(tagsticker){ tag in
                                          HStack {
                                              Text(tag.tagName)
                                                  .foregroundColor(Color(tag.tagColor))
                                              Image(systemName: tag.tagSymbol)
                                                  .foregroundColor(Color(tag.tagColor))
                      
                                          }.padding(6).background{
                                              RoundedRectangle(cornerRadius: 10)
                                                  .stroke(Color(tag.tagColor),lineWidth: 2)
                                                  .foregroundColor(.clear)
                                          }
                      
                                      }
                        }.padding(.top,-300)
                      
                    }
                }.frame(maxWidth: .infinity)
                Spacer()
                
            }
           
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
struct tagsContainer: Identifiable{
    var id = UUID()
    var tagName: String
    var tagSymbol: String
    var tagColor: String
}

let rows = [
    GridItem(.fixed(30), spacing: 1),
    GridItem(.flexible(minimum: 20, maximum: 50)),
]
