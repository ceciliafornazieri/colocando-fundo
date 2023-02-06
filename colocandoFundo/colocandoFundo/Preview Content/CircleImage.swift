//
//  CircleImage.swift
//  colocandoFundo
//
//  Created by Cecília Fornazieri on 06/02/23.
//

import Foundation
import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image ("bunny1")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
