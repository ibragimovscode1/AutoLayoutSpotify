//
//  Factories.swift
//  AutoLayoutSpotify
//
//  Created by Rahmetullah on 22.06.2022.
//
import UIKit

func makeLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textColor = .white
    label.font = UIFont.systemFont(ofSize: 17)

    return label
}


func makeSubLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textColor = .gray
    label.font = UIFont.systemFont(ofSize: 13)
    label.numberOfLines = 0 // multiline

    return label
}

func makeBoldLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textColor = .white
    label.font = UIFont.boldSystemFont(ofSize: 17)

    return label
}

func makeSwitch(isOn: Bool) -> UISwitch {
    let theSwitch = UISwitch()
    theSwitch.translatesAutoresizingMaskIntoConstraints = false
    theSwitch.isOn = isOn

    return theSwitch
}
func makeRow(withTextLabel text: String, isOn: Bool) -> UIView {
    let rowView = UIView()
    rowView.translatesAutoresizingMaskIntoConstraints = false
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    rowView.addSubview(label)
    label.topAnchor.constraint(equalTo: rowView.topAnchor).isActive = true
    label.leadingAnchor.constraint(equalTo: rowView.leadingAnchor).isActive = true
    let switchF = UISwitch()
    rowView.addSubview(switchF)
    switchF.translatesAutoresizingMaskIntoConstraints = false
    switchF.topAnchor.constraint(equalTo: rowView.topAnchor).isActive = true
    switchF.trailingAnchor.constraint(equalTo: rowView.trailingAnchor).isActive = true
    switchF.isOn = isOn
    label.text = text
    label.textColor = .white
    label.font = UIFont.boldSystemFont(ofSize: 17)
    rowView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    rowView.heightAnchor.constraint(equalToConstant: 31).isActive = true
    
    
    return rowView
}

func makeCrossFade(withLabel text: String, withPreview startText: String, withProgress progress: UIProgressView, withPreviewEnd endText: String) -> UIView {
   let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.widthAnchor.constraint(equalToConstant: 200).isActive = true
    view.heightAnchor.constraint(equalToConstant: 100).isActive = true
    let crossLabel = UILabel()
    view.addSubview(crossLabel)
    crossLabel.text = text
    crossLabel.font = UIFont.boldSystemFont(ofSize: 17)
    crossLabel.textColor = .white
    crossLabel.translatesAutoresizingMaskIntoConstraints = false
    crossLabel.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    crossLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    let previewStart = UILabel()
    view.addSubview(previewStart)
    previewStart.textColor = .white
    previewStart.font = UIFont.systemFont(ofSize: 17)
    previewStart.text = startText
    previewStart.translatesAutoresizingMaskIntoConstraints = false
    previewStart.topAnchor.constraint(equalTo: crossLabel.bottomAnchor, constant: 32).isActive = true
    previewStart.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
  
    let previewEnd = UILabel()
    view.addSubview(previewEnd)
    previewEnd.text = endText
    previewEnd.textColor = .white
    previewEnd.font = UIFont.systemFont(ofSize: 17)
    
    previewEnd.translatesAutoresizingMaskIntoConstraints = false
    previewEnd.centerYAnchor.constraint(equalTo: previewStart.centerYAnchor).isActive = true
    previewEnd.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    let progressBar = UIProgressView()
    view.addSubview(progressBar)
    progressBar.translatesAutoresizingMaskIntoConstraints = false
    progressBar.tintColor = .gray
    progressBar.centerYAnchor.constraint(equalTo: previewStart.centerYAnchor).isActive = true
    progressBar.leadingAnchor.constraint(equalTo: previewStart.trailingAnchor, constant: 4).isActive = true
    progressBar.trailingAnchor.constraint(equalTo: previewEnd.trailingAnchor, constant: -4).isActive = true
    
    
    
    
    return view
}

func makeProgressView() -> UIProgressView {
    let progressView = UIProgressView(progressViewStyle: .default)
    progressView.translatesAutoresizingMaskIntoConstraints = false
    progressView.tintColor = .gray

    return progressView
}

func makeStackView(withOrientation axis: NSLayoutConstraint.Axis) -> UIStackView {
    let stackView = UIStackView()
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = axis
    stackView.distribution = .fill
    stackView.alignment = .fill
    stackView.spacing = 8.0

    return stackView
}

public extension NSLayoutConstraint {
    @objc func setActiveBreakable(priority: UILayoutPriority = UILayoutPriority(900)) {
        self.priority = priority
        isActive = true
    }
}

extension UINavigationController {
    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

extension UIColor {
    static let darkBlue = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)
    static let darkGreen = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1)
    static let darkOrange = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
    static let darkRed = UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1)
    static let darkTeal = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
    static let darkYellow = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
    static let offBlack = UIColor(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
}


