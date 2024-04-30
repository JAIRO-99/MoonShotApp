//
//  CardView.swift
//  MoonShot
//
//  Created by Jairo Laurente Celis on 30/04/24.
//

import SwiftUI

struct CardView: View {
    var missions: Mission
    var body: some View {
        VStack{
            Image(missions.image)
                .resizable()
                .padding()
                .scaledToFit()
                .frame(width: 150,height: 150)
            VStack{
                Text(missions.displayName)
                    .font(.headline)
                    .foregroundStyle(.white)
                Text(missions.formattedLaunchDate)
                    .font(.caption)
                    .foregroundStyle(.gray.opacity(0.5))
            }
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(.lightBackground)
            .frame(maxWidth: .infinity)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
         RoundedRectangle(cornerRadius: 10)
           .stroke(.lightBackground)
         )
    }
}

struct CardView_Previews: PreviewProvider {
    
    static var previews: some View {
       // let missions: Mission = Bundle.main.decode("missions.json")
        CardView(missions: Mission.example)
    }
}
