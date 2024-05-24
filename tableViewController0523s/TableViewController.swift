//
//  TableViewController.swift
//  tableViewController0523s
//
//  Created by 홍석평 on 5/24/24.
//

import UIKit

//list 같은 데이터 배열 3개 만들기
//섹션 개수 3개로 return
//titleForHeaderInSection 여기서 else if 문으로 section 숫자값 설정 return으로 제목
// numberOfRowsInSection에서 section else if 문으로 row 갯수 지정
// cellForRowAt으로 section else if로 각각 데이터 배열 넣어주기 .. indexPath.row로

class TableViewController: UITableViewController {

    var mainList = ["공지사항","실험실","버전 정보"]
    var subList = ["개인/보안","알림","채팅","멀티프로필"]
    var etcList = ["고객센터/도움말"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 고정값으로 사용할거라면 viewDidLoad에 사용하자
        // hieghtForRow는 셀마다 실행하고 viewDIdLoad는 단 한번만 적용되니
        // 메모리 관리에 유용 -> 고정될 경우에만 적용하는 방법
       // tableView.rowHeight = 70
        
        navigationItem.title = "설정"
    }

    // 섹션 3개로 설정
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    // 섹션 타이틀 -> mainList
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0{
            return "전체 설정"
        } else if section == 1{
            return "개인 설정 "
        } else {
            return "기타"
        }
    }

    // 셀의 갯수 정해줌
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return mainList.count
        } else if section == 1{
            return subList.count
        } else {
            return etcList.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell")!
        
        if indexPath.section == 0{
            cell.textLabel?.text = mainList[indexPath.row]
        } else if indexPath.section == 1{
            cell.textLabel?.text = subList[indexPath.row]
        } else {
            cell.textLabel?.text = etcList[indexPath.row]
        }
        
        return cell
    }
   

    

}
