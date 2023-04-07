//
//  QuestionView.swift
//  Trivia
//
//  Created by Jamie Cartin on 4/2/23.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaMananger: TriviaManager
    
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Trivia Game")
                    .lilacTitle()
                
                Spacer()
                
                Text("\(triviaMananger.index + 1) out of \(triviaMananger.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: triviaMananger.progress)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(triviaMananger.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                AnswerRow(answer: Answer(text: "false", isCorrect: true))
                    .environmentObject(triviaMananger)
                AnswerRow(answer: Answer(text: "true", isCorrect: false))
                    .environmentObject(triviaMananger)
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
            .environmentObject(TriviaManager())
    }
}
