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
