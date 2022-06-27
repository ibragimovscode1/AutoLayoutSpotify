//
//  Challange.swift
//  AutoLayoutSpotify
//
//  Created by Rahmetullah on 22.06.2022.
//

import UIKit
class Challenge: UIViewController {
    let stackView = UIStackView()

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
            view.addSubview(stackView)
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 16).isActive = true
            stackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
            stackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
           
            stackView.axis = .vertical
            stackView.distribution = .fill
            stackView.spacing = 20
            stackView.alignment = .fill
            
            //Offline Label
            let offlineLabel = makeRow(withTextLabel: "Offline", isOn: false)
            stackView.addArrangedSubview(offlineLabel)
//    
//
            //ProgressBar
            let crossfadeProgress = makeProgressView()
            
            //OfflineSublabel
          let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
            
            stackView.addArrangedSubview(offlineSublabel)
            //Crossfade View
            let crossfade = makeCrossFade(withLabel: "Crossfade", withPreview: "0s", withProgress: crossfadeProgress, withPreviewEnd: "12s")
            stackView.addArrangedSubview(crossfade)
            
            let gaplessPlayBackLabel = makeRow(withTextLabel: "Gapless Playback", isOn: false)
            stackView.addArrangedSubview(gaplessPlayBackLabel)
            
            let hideSongs = makeRow(withTextLabel: "Hide unplayable songs", isOn: false)
            stackView.addArrangedSubview(hideSongs)
            
            let enableAudio = makeRow(withTextLabel: "Enable Audio Normalization", isOn: false)
            stackView.addArrangedSubview(enableAudio)

        }
    }



