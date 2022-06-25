//
//  Challange.swift
//  AutoLayoutSpotify
//
//  Created by Rahmetullah on 22.06.2022.
//

import UIKit
class Challenge: UIViewController {

        let margin: CGFloat = 20
        let spacing: CGFloat = 32
        let rowView = UIView()

        override func viewDidLoad() {
            super.viewDidLoad()
            setupNavigationBar()
            setupViews()
            
            view.backgroundColor = .black
        }

        func setupNavigationBar() {
            navigationItem.title = "Playback"
        }
        

        func setupViews() {
            //Offline Label
            let offlineLabel = makeRow(withTextLabel: "Offline", isOn: false)
            view.addSubview(offlineLabel)
            offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
            offlineLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
            offlineLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
            
            //ProgressBar
            let crossfadeProgress = makeProgressView()
            
            //OfflineSublabel
          let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
            
            view.addSubview(offlineSublabel)
            //Crossfade View
            let crossfade = makeCrossFade(withLabel: "Crossfade", withPreview: "0s", withProgress: crossfadeProgress, withPreviewEnd: "12s")
            view.addSubview(crossfade)
            
            let gaplessPlayBackLabel = makeRow(withTextLabel: "Gapless Playback", isOn: false)
            view.addSubview(gaplessPlayBackLabel)
            
            let hideSongs = makeRow(withTextLabel: "Hide unplayable songs", isOn: false)
            view.addSubview(hideSongs)
            
            let enableAudio = makeRow(withTextLabel: "Enable Audio Normalization", isOn: false)
            view.addSubview(enableAudio)

            offlineSublabel.topAnchor.constraint(equalTo: rowView.bottomAnchor, constant: 20).isActive = true
            offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
            offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
            crossfade.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: 32).isActive = true
            crossfade.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
            crossfade.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
            
            gaplessPlayBackLabel.topAnchor.constraint(equalTo: crossfade.bottomAnchor, constant: 32).isActive = true
            gaplessPlayBackLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
            gaplessPlayBackLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
            
            hideSongs.topAnchor.constraint(equalTo: gaplessPlayBackLabel.bottomAnchor, constant: 32).isActive = true
            hideSongs.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
            hideSongs.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
            
            enableAudio.topAnchor.constraint(equalTo: hideSongs.bottomAnchor, constant: 32).isActive = true
            enableAudio.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
            enableAudio.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true

        }
    }



