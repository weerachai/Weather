//
//  WelcomeView.swift
//  Weather
//
//  Created by Weerachai Anotaipaiboon on 2/23/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        LocationButton(.shareCurrentLocation) {
            locationManager.requestLocation()
        }
        .cornerRadius(30)
        .symbolVariant(.fill)
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
