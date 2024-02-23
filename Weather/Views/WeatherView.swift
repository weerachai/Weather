//
//  WeatherView.swift
//  Weather
//
//  Created by Weerachai Anotaipaiboon on 2/23/24.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        VStack {
            Text(weather.name)
                .bold()
                .font(.title)
            AsyncImage(url: URL(string: "https://openweathermap.org/img/wn/\(weather.weather[0].icon)@2x.png"))
                .frame(width: 350, height: 350)
    
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
