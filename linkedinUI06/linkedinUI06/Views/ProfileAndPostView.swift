//
//  ProfileAndPostView.swift
//  linkedinUI06
//
//  Created by Hitesh Choudhary on 10/08/22.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading){
            SearchBar()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            Divider()
            
            HStack{
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("photo")
                Spacer()
                
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("photo")
                
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("photo")
            }.padding(.horizontal)
        }
    }
}

struct ProfileAndPostView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAndPostView()
    }
}
