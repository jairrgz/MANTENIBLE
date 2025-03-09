//
//  ErrorView.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import SwiftUI

struct ErrorView: View {
    let error: Error
    var retryAction: (() -> Void)?
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "exclamationmark.triangle")
                .font(.system(size: 50))
                .foregroundColor(.red)
            
            Text("Something went wrong")
                .font(.title2)
                .fontWeight(.bold)
            
            Text(error.localizedDescription)
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
            
            if let retryAction {
                Button("Retry") {
                    retryAction()
                }
                .buttonStyle(.bordered)
            }
        }
        .padding()
    }
}

#Preview {
    ErrorView(
        error: NetworkError.serverError(404),
        retryAction: {}
    )
}
