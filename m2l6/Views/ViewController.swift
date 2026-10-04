//
//  ViewController.swift
//  m2l6
//
//  Created by AndreyM on 02.10.2026.
//

import UIKit

class ViewController: UIViewController {
    
    private var tableData = TableSection.mockData()
    
    lazy var tableView : UITableView = {
        $0.dataSource = self
        $0.delegate = self
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return $0
    }(UITableView(frame: view.frame, style: .insetGrouped))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .black
        view.addSubview(tableView)
    }

}


extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            tableData[indexPath.section].items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let itemType = tableData[indexPath.section].items[indexPath.row].typePage
        
        switch itemType {
        
        case .airplane:
            
            let vc = AirplancePageViewController()
            vc.item = tableData[indexPath.section].items[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        
        case .wifi:
            
            let vc = WiFiViewController()
            vc.item = tableData[indexPath.section].items[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        
        case .bluetooth:
            
            let vc = BluetoothViewController()
            vc.item = tableData[indexPath.section].items[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

extension ViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let item = tableData[indexPath.section].items[indexPath.row]
        
        var config = cell.defaultContentConfiguration()
        config.text = item.title
        config.secondaryText = item.sub
        config.image = UIImage(systemName: item.image)
        
        cell.contentConfiguration = config
        cell.accessoryView = nil 
        
        switch item.accessoryType {
        case .arrow:
            cell.accessoryType = .disclosureIndicator
        case .none:
            cell.accessoryType = .none
        case .toggle:
            cell.accessoryView = UISwitch()
            cell.accessoryType = .none
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData[section].items.count
    }
    
    
}

