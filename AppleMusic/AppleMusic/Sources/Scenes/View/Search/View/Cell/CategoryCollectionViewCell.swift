//
//  CategoryCollectionViewCell.swift
//  AppleMusic
//
//  Created by Daniil Yarkovenko on 13.07.2022.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    //MARK: - Properties

    static let identifier = "CategoryCollectionViewCell"

    //MARK: - Views

    private let categoryImage: UIImageView = {
        var image = UIImageView()

        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 10

        return image
    }()

    //MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(categoryImage)

        categoryImage.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        categoryImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        categoryImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        categoryImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - Public Functions

    public func configure(with model: SearchModel) {
        categoryImage.image = UIImage(named: model.image)
    }
    
}
