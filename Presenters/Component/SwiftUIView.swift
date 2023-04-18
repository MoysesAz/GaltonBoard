//
//  SwiftUIView.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 18/04/23.
//

import SwiftUI

struct QuestionsView: View {
    var dialog: TextEnum
    
    var body: some View {
        Text(dialog.rawValue)
            .font(.largeTitle) // Define a fonte e o tamanho do texto
            .fontWeight(.bold) // Define o peso da fonte
            .multilineTextAlignment(.center) // Centraliza o texto horizontalmente
            .padding() // Adiciona um espaçamento interno ao redor do texto
    }
}

