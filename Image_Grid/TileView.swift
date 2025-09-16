//
//  TileView.swift
//  Image_Grid
//
//  Created by Bidisha Biswas on 9/15/25.
//

import SwiftUI

struct TileView: View {
	var tileSize: Double
	var offset: CGSize
	var image: Image?

    var body: some View {
		if let image = image {
			image
				.resizable()
				.frame(width: tileSize, height: tileSize)
				.offset(offset)
		} else {
			Color.clear
		}
    }
}

#Preview {
	TileView(tileSize: 60, offset: .zero, image: Image(systemName: "1.circle"))
}
