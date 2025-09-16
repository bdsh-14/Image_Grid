//
//  ContentView.swift
//  Image_Grid
//
//  Created by Bidisha Biswas on 9/15/25.
//

import SwiftUI

struct ContentView: View {
	var gridSize: Int
	var tileSize: Double
	var columns: [GridItem]

	@State private var images: [Image?]

    var body: some View {
		LazyVGrid(columns: columns) {
			ForEach(0..<images.count, id: \.self) { index in
				TileView(tileSize: tileSize, offset: .zero, image: images[index])
			}
		}
    }
}

extension ContentView {
	init(gridSize: Int = 3) {
		self.gridSize = gridSize
		self.tileSize = 350 / Double(gridSize)
		self.columns = Array(repeating: GridItem(.fixed(tileSize), spacing: 2), count: gridSize)

		let startImages = (0..<gridSize * gridSize).dropLast().map { Image(systemName: "\($0).circle") } + [nil]
		_images = State(initialValue: startImages)
	}
}

#Preview {
    ContentView()
}
