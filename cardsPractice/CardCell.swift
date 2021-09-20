//
//  CardCell.swift
//  cardsPractice
//
//  Created by Artemio on 20/09/21.
//

import UIKit


class CardCell: UITableViewCell {

    @IBOutlet weak var IBO_CardView: UIView!
    @IBOutlet weak var IBO_PictureImage: UIImageView!
    @IBOutlet weak var IBO_PictureTitle: UILabel!
    @IBOutlet weak var IBO_PictureDesctiption: UILabel!
    
    //Set up the cell
    func configure(picture: UIImage, title: String, description: String){
        IBO_PictureImage.image = picture
        IBO_PictureTitle.text = title
        IBO_PictureDesctiption.text = description
                
        IBO_CardView.layer.shadowColor = UIColor.gray.cgColor
        IBO_CardView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        IBO_CardView.layer.shadowOpacity = 1.0
        IBO_CardView.layer.masksToBounds = false
        IBO_CardView.layer.cornerRadius = 2.0
    }
    
}
