//
//  FriendsCollectionViewController.swift
//  TestVK
//
//  Created by igor mekkers on 29.04.2022.
//

import UIKit

private let cellId = "FriendsCell"

class FriendsCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.backgroundColor = Colors.backgroundColor
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        self.collectionView.register(FriendCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? FriendCollectionViewCell else { return UICollectionViewCell() }
        return cell
    }

    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

extension FriendsCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 75, height: view.frame.height)
    }
}

