//
//  AudioManagerViewModel.swift
//  Animal Sounds
//
//  Created by Mehmet Ali Demir on 24.10.2022.
//

import Foundation
import AVKit

class AudiManagerViewModel {
    private var chatAudiPlayer: AVAudioPlayer?

    func playback(_ animal: Animal) {
        if animal.isPlaying {
            chatAudiPlayer?.stop()
        } else {
            guard let path = Bundle.main.path(forResource: "\(animal.id.soundFile).mp3", ofType: nil) else {
                return }
            let url = URL(fileURLWithPath: path)
            do {
                chatAudiPlayer = try AVAudioPlayer(contentsOf: url)
                chatAudiPlayer?.numberOfLoops = -1
                chatAudiPlayer?.play()
            } catch {
                print(error)
            }
        }
    }
}
