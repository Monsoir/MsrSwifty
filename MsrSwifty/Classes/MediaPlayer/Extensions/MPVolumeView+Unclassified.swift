//
//  MPVolumeView+Unclassified.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import MediaPlayer

// https://stackoverflow.com/a/50740234/5211544
public extension MPVolumeView {
    static func setVolume(_ volume: Float) {
        let volumeView = MPVolumeView()
        let slider = volumeView.subviews.first(where: { $0 is UISlider }) as? UISlider

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            slider?.value = volume
        }
    }
}
