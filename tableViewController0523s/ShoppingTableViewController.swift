//
//  ShoppingTableViewController.swift
//  tableViewController0523s
//
//  Created by 홍석평 on 5/27/24.
//

import UIKit

//struct Shopping{
//    var check: Bool
//    let item: String
//    var star: Bool
//    
//}

class ShoppingTableViewController: UITableViewController {
    
    @IBOutlet var addTextField: UITextField!
    

    @IBOutlet var addButton: UIButton!
    
    var list = ["그립톡 구매하기","사이다 구매","아이패드 케이스 최저가","양말"]
    
//    Shopping(check: true, item: "그립톡 구매하기", star: true),
//    Shopping(check: false, item: "사이다 구매", star: false),
//    Shopping(check: false, item: "아이패드 케이스 최저가 알아보기", star: true),
//    Shopping(check: false, item: "양말", star: true),
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addButton.setTitle("추가", for: .normal)
        
        addButton.addTarget(self, action: #selector(addButtonClicked), for: .touchUpInside)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingTableViewCell", for: indexPath) as! shoppingTableViewCell
        
        cell.mainLabel.text = list[indexPath.row]
       //let data = list[indexPath.row]
        
//        cell.mainLabel.text = data.item
//        
//        let name = list[indexPath.row].star ? "star.fill" : "star"
//        
       // let image = UIImage(systemName: name)
        
        
//        cell.starButton.tag = indexPath.row
//        cell.starButton.addTarget(self, action: #selector(starButtonClicked), for: .touchUpInside)
        
        return cell
    }
//    @objc func starButtonClicked(sender: UIButton){
//        list[sender.tag].star.toggle()
//        tableView.reloadData()
//        
//    }
    
    
  //  addButton 클릭 > TextField text 가져오기 > list append
    @objc func addButtonClicked(){
        
        guard let text = addTextField.text, text.count > 0 else {return}
        
        // 텍스트필드에 입력한내용을 list 배열에 저장
        list.append(text)
        
        // 추가 버튼 클릭시 텍스트 필드를 비워주기
        addTextField.text = ""
        
        // 모든 섹션과 셀을 다시 그려줌
        // 데이터와 뷰는 따로 놀기 때문에 싱크를 맞춰줘야 한다
        // 변경시 실시간 적용
        tableView.reloadData()
    }
    
    // cell을 클릭했을때 적용
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        // 클릭한 cell 지우기
        list.remove(at: indexPath.row)
        // 테이블뷰 싱크 맞추기
        tableView.reloadData()
    }
    
}
