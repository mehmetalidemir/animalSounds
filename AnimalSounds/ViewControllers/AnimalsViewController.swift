 //
//  ChantsViewController.swift
//  Animal Sounds
//
//  Created by Mehmet Ali Demir on 22.10.2022.
//

import UIKit
import GoogleMobileAds

class AnimalsViewController: UIViewController {

    private let banner: GADBannerView = {
        let banner = GADBannerView()
        banner.adUnitID = "ca-app-pub-6705939368693947/8547917396"
        banner.load(GADRequest())
        banner.backgroundColor = .secondarySystemBackground
        return banner
    }()
    
    // MARK - UI

    private lazy var tableVw: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .clear
        tv.rowHeight = UITableView.automaticDimension
        tv.estimatedRowHeight = 44
        tv.separatorStyle = .none
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tv.register(AnimalTableViewCell.self, forCellReuseIdentifier: AnimalTableViewCell.cellId)
        return tv
    }()
    
    private lazy var animalsViewModel = AnimalsViewModel()
    private lazy var audioManagerViewModel = AudiManagerViewModel()
    // MARK - Life Cycle

    override func loadView() {
        super.loadView()
        setup()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        banner.rootViewController = self
        view.addSubview(banner)

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        banner.frame = CGRect(x:  0, y: view.frame.height-100 , width: view.frame.size.width, height: 100).integral
    }

}

private extension AnimalsViewController {

    func setup() {
        
        self.navigationController?.navigationBar.topItem?.title = "🐾 Animals"
        self.navigationController?.navigationBar.prefersLargeTitles = true

        tableVw.dataSource = self

        self.view.addSubview(tableVw)
        NSLayoutConstraint.activate([
            tableVw.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            tableVw.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            tableVw.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            tableVw.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),

            ])
    }
}

// MARK - UiTableViewDataSource

extension AnimalsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalsViewModel.animals.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animal = animalsViewModel.animals[indexPath.row]
      
        let cell = tableVw.dequeueReusableCell(withIdentifier: AnimalTableViewCell.cellId, for: indexPath) as! AnimalTableViewCell
        cell.configure(with: animal, delegate: self)
        return cell

      
    }

}

extension AnimalsViewController: AnimalTableViewCellDelegate{
    
    func didTapPlayback(for animal: Animal) {
        audioManagerViewModel.playback(animal)
        animalsViewModel.togglePlayback(for: animal)
        tableVw.reloadData()
    }
}
