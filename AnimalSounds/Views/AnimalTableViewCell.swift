//
//  AnimalTableViewCell.swift
//  Animal Sounds
//
//  Created by Mehmet Ali Demir on 23.10.2022.
//

import UIKit

protocol AnimalTableViewCellDelegate: AnyObject {

    func didTapPlayback(for animal: Animal)
}

class AnimalTableViewCell: UITableViewCell {

    static let cellId = "AnimalTableViewCell"


    // MARK -UI

    private lazy var containerVm: UIView = {
        let vm = UIView()
        vm.translatesAutoresizingMaskIntoConstraints = false
        return vm

    }()

    private lazy var contentStackVw: UIStackView = {
        let stackVwv = UIStackView()
        stackVwv.translatesAutoresizingMaskIntoConstraints = false
        stackVwv.spacing = 4
        stackVwv.axis = .vertical
        return stackVwv
    }()

    private lazy var badgeImgVw: UIImageView = {
        let imgVm = UIImageView()
        imgVm.translatesAutoresizingMaskIntoConstraints = false
        imgVm.contentMode = .scaleAspectFit

        return imgVm
    }()

    private lazy var playbackBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tintColor = .white
        return btn
    }()

    private lazy var nameLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 30, weight: .light)
        lbl.textColor = .white
        return lbl
    }()

    private lazy var soundLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 18, weight: .bold)
        lbl.textColor = .white
        return lbl
    }()

    private lazy var groupLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font =  (UIDevice.current.userInterfaceIdiom == .pad) ?
        
            .systemFont(ofSize: 20, weight: .medium)
        :
            .systemFont(ofSize: 10, weight: .medium)
        lbl.textColor = .white
        return lbl
    }()

    private lazy var infoLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font =

        (UIDevice.current.userInterfaceIdiom == .pad) ?

            .systemFont(ofSize: 20, weight: .medium)
        :
            .systemFont(ofSize: 13, weight: .medium)

        lbl.textColor = .white

        return lbl
    }()

    private weak var delegate: AnimalTableViewCellDelegate?
    private var animal: Animal?

    // MARK: - Lifecycle
    override func layoutSubviews() {
        super.layoutSubviews()
        containerVm.layer.cornerRadius = 10
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.animal = nil
        self.delegate = nil
        self.contentView.subviews.forEach { $0.removeFromSuperview() }
    }

    func configure (with item: Animal, delegate: AnimalTableViewCellDelegate) {

        self.animal = item
        self.delegate = delegate

        playbackBtn.addTarget(self, action: #selector(didTapPlayback), for: .touchUpInside)

        containerVm.backgroundColor = item.id.background

        badgeImgVw.image = item.id.badge
        playbackBtn.setImage(item.isPlaying ? Assets.pause : Assets.play,
            for: .normal)

        nameLbl.text = item.name
        soundLbl.text = "🔈Sound: \(item.sound)"
        groupLbl.text = "Animal \(item.group.groupType.rawValue): \(item.group.name)"
        infoLbl.text = item.info

        self.contentView.addSubview(containerVm)

        containerVm.addSubview(contentStackVw)
        containerVm.addSubview(badgeImgVw)
        containerVm.addSubview(playbackBtn)

        contentStackVw.addArrangedSubview(nameLbl)
        contentStackVw.addArrangedSubview(soundLbl)
        contentStackVw.addArrangedSubview(groupLbl)
        contentStackVw.addArrangedSubview(infoLbl)

        NSLayoutConstraint.activate([
            containerVm.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            containerVm.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8),
            containerVm.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8),
            containerVm.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),

            badgeImgVw.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.1),
            badgeImgVw.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.1),
            badgeImgVw.topAnchor.constraint(equalTo: contentStackVw.topAnchor),
            badgeImgVw.leadingAnchor.constraint(equalTo: containerVm.leadingAnchor, constant: 8),

            contentStackVw.topAnchor.constraint(equalTo: containerVm.topAnchor, constant: 16),
            contentStackVw.bottomAnchor.constraint(equalTo: containerVm.bottomAnchor, constant: -16),
            contentStackVw.leadingAnchor.constraint(equalTo: badgeImgVw.trailingAnchor, constant: 8),
            contentStackVw.trailingAnchor.constraint(equalTo: playbackBtn.leadingAnchor, constant: -8),

            playbackBtn.heightAnchor.constraint(equalToConstant: 44),
            playbackBtn.widthAnchor.constraint(equalToConstant: 44),
            playbackBtn.trailingAnchor.constraint(equalTo: containerVm.trailingAnchor, constant: -8),
            playbackBtn.centerYAnchor.constraint(equalTo: containerVm.centerYAnchor),




            ])


    }

    @objc func didTapPlayback() {
        if let animal = animal {
            delegate?.didTapPlayback(for: animal)
        }
    }
}
