//
//  ModelData.swift
//  Weather
//
//  Created by Weerachai Anotaipaiboon on 2/23/24.
//

import Foundation

var previewWeather: ResponseBody = load("weatherData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename)")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename)")
    }
    
    do {
        let decode = try JSONDecoder().decode(T.self, from: data)
        return decode
    } catch {
        fatalError("Couldn't parse \(filename)")
    }
    
}
