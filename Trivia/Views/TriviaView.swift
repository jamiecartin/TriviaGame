//
//  TriviaView.swift
//  Trivia
//
//  Created by Jamie Cartin on 4/4/23.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaMananger: TriviaManager
    
    var body: some View {
        if triviaMananger.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .lilacTitle()
                
                Text("Congratulations, you completed the game! 🥳")
                
                Text("You scored \(triviaMananger.score) out of \(triviaMananger.length)")
                
                Button {
                    Task.init {
                        await triviaMananger.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        } else {
            
        }
        QuestionView()
            .environmentObject(triviaMananger)
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
