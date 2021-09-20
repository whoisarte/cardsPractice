//
//  ViewController.swift
//  cardsPractice
//
//  Created by Artemio on 19/09/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var IBO_CardTableView: UITableView!
    
    //Arreglo de imágenes
    let picturesArray: [UIImage] = [UIImage(named: "beach.jpg")!, UIImage(named: "desert.jpg")!, UIImage(named: "mountain.jpg")!]
    
    let titles: [String] = ["Playa chidota", "Desierto bonito", "Montaña inmensa"]
    
    let descriptions: [String] = ["Una playa bien bonita para que lleves tu asador y hagas una carnita asada",
                                "Un desierto bien bonito para caminar por 40 días",
                                "Una montaña para escalar y meditar y convertirte en Isaac Netero alsh"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picturesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
        cell.configure(picture: picturesArray[indexPath.row], title: titles[indexPath.row], description: descriptions[indexPath.row])
        return cell
    }
    


}

