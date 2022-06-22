//
//  Challange.swift
//  AutoLayoutSpotify
//
//  Created by Rahmetullah on 22.06.2022.
//

import UIKit

class Challenge: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
        
    }

    func setupNavigationBar() {
        navigationItem.title = "Playback"
        
    }

    func setupViews() {
        view.backgroundColor = .black

            let offlineLabel = makeLabel(withText: "Offline")
            let offlineSwitch = makeSwitch(isOn: false)
            let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        //
            let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
            let crossfadeMinLabel = makeSubLabel(withText: "0s")
            let crossfadeMaxLabel = makeSubLabel(withText: "12s")
            let crossfadeProgressView = makeProgressView()
        //
            let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
            let gaplessPlaybackSwitch = makeSwitch(isOn: true)
        //
         let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
        let hideSongsSwitch = makeSwitch(isOn: true)
        
              let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
               let enableNormalizationSwitch = makeSwitch(isOn: true)
        //
            view.addSubview(offlineLabel)
            view.addSubview(offlineSwitch)
            view.addSubview(offlineSublabel)
        //
            view.addSubview(crossfadeLabel)
            view.addSubview(crossfadeMinLabel)
            view.addSubview(crossfadeProgressView)
            view.addSubview(crossfadeMaxLabel)
        //
            view.addSubview(gaplessPlaybackLabel)
            view.addSubview(gaplessPlaybackSwitch)
        //
            view.addSubview(hideSongsLabel)
            view.addSubview(hideSongsSwitch)
        
               view.addSubview(enableNormalizationLabel)
              view.addSubview(enableNormalizationSwitch)

        // Start your layout here...
        NSLayoutConstraint.activate([
            offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            offlineLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
           
            offlineSwitch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            offlineSwitch.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            offlineSublabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: 20),
            offlineSublabel.trailingAnchor.constraint(equalTo: offlineSwitch.trailingAnchor),
            offlineSublabel.leadingAnchor.constraint(equalTo: offlineLabel.leadingAnchor),
        
            crossfadeLabel.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: 32),
            crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32),
            crossfadeMinLabel.leadingAnchor.constraint(equalTo: offlineSublabel.leadingAnchor),
            
            crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4),
            crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -4),
    
            
            crossfadeMaxLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32),
            crossfadeMaxLabel.trailingAnchor.constraint(equalTo: offlineSublabel.trailingAnchor),
            
     
    
            
            gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeProgressView.bottomAnchor, constant: 32),
            gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: offlineLabel.leadingAnchor),
            
            gaplessPlaybackSwitch.topAnchor.constraint(equalTo: crossfadeProgressView.bottomAnchor, constant: 22),
            gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor, constant: 32),
            hideSongsLabel.leadingAnchor.constraint(equalTo: gaplessPlaybackLabel.leadingAnchor),
            
            hideSongsSwitch.topAnchor.constraint(equalTo: gaplessPlaybackSwitch.bottomAnchor, constant: 22),
            hideSongsSwitch.trailingAnchor.constraint(equalTo: gaplessPlaybackSwitch.trailingAnchor),
            
            enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsLabel.bottomAnchor, constant: 32),
            enableNormalizationLabel.leadingAnchor.constraint(equalTo: hideSongsLabel.leadingAnchor),
            
            enableNormalizationSwitch.topAnchor.constraint(equalTo: hideSongsSwitch.bottomAnchor, constant: 22),
            enableNormalizationSwitch.trailingAnchor.constraint(equalTo: hideSongsSwitch.trailingAnchor)
            
        ])

    }
}


