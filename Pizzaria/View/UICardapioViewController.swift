
import UIKit

class UICardapioViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)

        switch indexPath.row {
        case 0:
            let imagem = cell.viewWithTag(1) as! UIImageView
            imagem.image = UIImage(named: "005-pizza-32")
            
            let descricao = cell.viewWithTag(2) as! UILabel
            descricao.text = "Pizzas"
        case 1:
            let imagem = cell.viewWithTag(1) as! UIImageView
            imagem.image = UIImage(named: "004-glass-32")
            
            let descricao = cell.viewWithTag(2) as! UILabel
            descricao.text = "Bebidas"
        default:
            let imagem = cell.viewWithTag(1) as! UIImageView
            imagem.image = UIImage(named: "006-ice-cream-32")
            
            let descricao = cell.viewWithTag(2) as! UILabel
            descricao.text = "Sobremesas"
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            currentPresenter = 0
        case 1:
            currentPresenter = 1
        default:
            currentPresenter = 2
        }
    }
}
