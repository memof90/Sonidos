//
//  Sonidos.swift
//  Sonidos
//
//  Created by Memo Figueredo on 1/9/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import Foundation
import AudioToolbox

class Sonidos {
    
    private var soundID: SystemSoundID = 0
    
    public init(named name: String){
        
        if let soundURL = soundURL(forName: name){
            let status = AudioServicesCreateSystemSoundID(soundURL as CFURL, &soundID)
            if status != noErr {
                print("No se pudo crear el sonido en la URL: '\(name)'")
                soundID = 0
            }
        }
    }
    
    //determina del play
    public func play(){
        if soundID != 0 {
            AudioServicesPlaySystemSound(soundID)
        }
    }
    
    //funcion extenciones archivos
    private func soundURL(forName name: String) -> URL? {
        
        let fileExtensions = ["m4a","wav","mp3", "aac","adts","aif","aiff","aifc","caf","mp4"]
        
        for fileExtensions in fileExtensions {
            
            if let soundURL = Bundle.main.url(forResource: name, withExtension: fileExtensions){
                return soundURL
            }
        }
        
        print("No se encontro ningun archivo con el nombre '\(name)'")
        return nil
    }
    
    deinit {
        if soundID != 0 {
            AudioServicesDisposeSystemSoundID(soundID)
        }
    }
}
