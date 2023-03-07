//
//  ContentView.swift
//  URLImageDownload
//
//  Created by Roy Quesada on 6/3/23.
//

import SwiftUI

struct ContentView: View {
    
    let posters = ["https://www.build-review.com/wp-content/webp-express/webp-images/uploads/2021/10/Cabin.jpg.webp", "https://amazingarchitecture.com/storage/files/1/architecture-firms/soheil-kiani/gisoom-cabin/gisoom_cabin_house_soheil_kiani-2.JPG","https://www.getawaycabins.com/cabins/Cabin%202/bed%20lg.jpg", "https://www.glamping.com/static/media/uploads/property/dunton%20hot%20springs/01-dolores-honeymoon.jpg", "https://www.cabinscape.com/wp-content/uploads/2021/05/Cabinscape-Cove-Winter-Exterior-Header-1240x930.jpg"]
    
    
    var body: some View {
        //ImageURLView(url: "https://www.cabinscape.com/wp-content/uploads/2021/05/Cabinscape-Cove-Winter-Exterior-Header-1240x930.jpg")
        
        List(self.posters, id: \.self) {
            poster in
            ImageURLView(url: poster)
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
