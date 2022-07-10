//
//  NewPlaceViewConroller.swift
//  MyPlaces
//
//  Created by Павел on 09.07.2022.
//

import UIKit

class NewPlaceViewConroller: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
    
    //MARK: Table view deligate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            let camera = UIAlertAction(title: "Camera", style: .default) { _ in
//                нужно вызвать метож для изображения chooseImagePicker
                self.chooseImagePicker(sourse: .camera)
            }
                let photo = UIAlertAction(title: "Photo", style: .default) { _ in
        //                нужно вызвать метож для изображения chooseImagePicker
                    self.chooseImagePicker(sourse: .photoLibrary)
                }
                let cancel = UIAlertAction(title: "Cansel", style: .cancel)
                actionSheet.addAction(camera)
                actionSheet.addAction(photo)
                actionSheet.addAction(cancel)
                present(actionSheet, animated: true)
         
        }else {
            view.endEditing(true)
        }
    }
}
    

//MARK: Text field delegate
//Убираем клавиатуру

extension NewPlaceViewConroller: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

//MARK: Wlrk with image
extension NewPlaceViewConroller {
    func chooseImagePicker(sourse: UIImagePickerController.SourceType){
        if UIImagePickerController.isSourceTypeAvailable(sourse) {
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = true
            imagePicker.sourceType  = sourse
            present(imagePicker, animated: true)
        }
    }
}
