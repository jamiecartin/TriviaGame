//
//  QuestionView.swift
//  Trivia
//
//  Created by Jamie Cartin on 4/2/23.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Trivia Game")
                    .lilacTitle()
                
                Spacer()
                
                Text("1 out of 10")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: 40)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Bulls are attracted to the color red.")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                AnswerRow(answer: Answer(text: "false", isCorrect: true))
                AnswerRow(answer: Answer(text: "true", isCorrect: false))
            }
            
            PrimaryButton(text: "Next")
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        .navigationBarHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
