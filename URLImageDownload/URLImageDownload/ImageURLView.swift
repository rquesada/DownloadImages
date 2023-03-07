//
//  ImageURLView.swift
//  URLImageDownload
//
//  Created by Roy Quesada on 6/3/23.
//

import SwiftUI

struct ImageURLView: View {
    
    let url:String
    let placeholder: String
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url:String, placeholder:String = "placeholder")
    {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
    }
    
    var body: some View {
        
        if let data = self.imageLoader.downloadedData {
            return Image(uiImage: UIImage(data: data)!).resizable()
        }else
        {
            return Image(uiImage: UIImage(imageLiteralResourceName: "placeholder")).resizable()
        }
    }
}

struct ImageURLView_Previews: PreviewProvider {
    static var previews: some View {
        let image = "https://www.cabinscape.com/wp-content/uploads/2021/05/Cabinscape-Cove-Winter-Exterior-Header-1240x930.jpg"
        ImageURLView(url: image)
    }
}
