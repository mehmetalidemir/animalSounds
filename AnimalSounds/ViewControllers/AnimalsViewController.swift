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

    // arama sonuçlarını güncelleyen dizi
    private var filteredAnimals = [Animal]()

    // arama controller'ı
    let searchController = UISearchController(searchResultsController: nil)


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

        // arama controller'ını table view'a ekleyin
        tableVw.tableHeaderView = searchController.searchBar
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Animals"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        banner.frame = CGRect(x: 0, y: view.frame.height - 100, width: view.frame.size.width, height: 100).integral
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


// MARK - UITableViewDataSource

extension AnimalsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() {
            // arama yapılıyorsa filtrelenmiş hayvanları göster
            return filteredAnimals.count
        }
        // arama yapılmıyorsa tüm hayvanları göster
        return animalsViewModel.animals.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animal: Animal
        if isFiltering() {
            // arama yapılıyorsa filtrelenmiş hayvanları kullan
            animal = filteredAnimals[indexPath.row]
        } else {
            // arama yapılmıyorsa tüm hayvanları kullan
            animal = animalsViewModel.animals[indexPath.row]
        }

        let cell = tableVw.dequeueReusableCell(withIdentifier: AnimalTableViewCell.cellId, for: indexPath) as! AnimalTableViewCell
        cell.configure(with: animal, delegate: self)
        return cell
    }
}

extension AnimalsViewController: AnimalTableViewCellDelegate {

    func didTapPlayback(for animal: Animal) {
        audioManagerViewModel.playback(animal)
        animalsViewModel.togglePlayback(for: animal)
        tableVw.reloadData()
    }
}


// MARK: - UISearchResultsUpdating

extension AnimalsViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        filterContentForSearchText(searchBar.text!)
    }
}

private extension AnimalsViewController {

// arama metniyle hayvanları filtrele
    func filterContentForSearchText(_ searchText: String) {
        filteredAnimals = animalsViewModel.animals.filter { (animal: Animal) -> Bool in
            return animal.name.lowercased().contains(searchText.lowercased())
        }

        tableVw.reloadData()
    }

// arama yapılıyor mu kontrol et
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }

// arama barının boş olup olmadığını kontrol et
    func searchBarIsEmpty() -> Bool {
        // arama barı boşsa false döndür, değilse true
        return searchController.searchBar.text?.isEmpty ?? true
    }

}
