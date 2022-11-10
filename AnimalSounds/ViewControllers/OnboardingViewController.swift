//
//  OnboardingViewController.swift
//  AnimalSounds
//
//  Created by Mehmet Ali Demir on 8.11.2022.
//

import UIKit

class OnboardingViewController: UIViewController {

    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        let profile = UIImage(named: "onboarding_image")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = profile

        return imageView
    }()


    let descriptionTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Join us today for fun animal sounds!", attributes: [NSAttributedString.Key.font: (UIDevice.current.userInterfaceIdiom == .pad) ?

            UIFont.boldSystemFont(ofSize: 50)
            :
                UIFont.boldSystemFont(ofSize: 18)])

        attributedText.append(NSAttributedString(string: "\n\n\n  Are you ready to start to have fun? \n  Don't wait any longer! \n  \n  Listen to the animal sound you want by clicking the ▶️ play icon.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.gray]))

        textView.attributedText = attributedText
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false

        return textView
    }()

    lazy var finishOnboardingButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        view.setTitle("Skip", for: .normal)
        view.addTarget(self, action: #selector(finishOnoardingTapped), for: .touchUpInside)
        view.titleLabel?.font = (UIDevice.current.userInterfaceIdiom == .pad) ?
        
        UIFont.boldSystemFont(ofSize: 35)
        :
            UIFont.boldSystemFont(ofSize: 18)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white

        view.addSubview(profileImageView)
        view.addSubview(descriptionTextView)

        setupLayout()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }

    private func setupLayout() {
        let topImageContainerView = UIView()
        view.addSubview(topImageContainerView)

        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false

        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true

        topImageContainerView.addSubview(profileImageView)

        profileImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true

        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 400).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 400).isActive = true

        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true

        self.view.addSubview(finishOnboardingButton)

        NSLayoutConstraint.activate([
            finishOnboardingButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            finishOnboardingButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            finishOnboardingButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            finishOnboardingButton.heightAnchor.constraint(equalToConstant: 50)
            ])
    }


    @objc func finishOnoardingTapped() {
        UserDefaults.standard.set(true, forKey: "isOnboardingDone")
        let animalsVC = AnimalsViewController()
        self.navigationController?.popToRootViewController(animated: true)
    }


}
