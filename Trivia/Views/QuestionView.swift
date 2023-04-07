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
                

                ForEach(triviaMananger.answerChoices, id: \.id) { answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaMananger)
                    
                }
                
            }
            
            Button {
                triviaMananger.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next", background: triviaMananger.answerSelected ? Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
            }
            .disabled(!triviaMananger.answerSelected)
            
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
