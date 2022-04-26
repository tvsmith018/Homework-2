//
//  MyCustomViewController.swift
//  homework2
//
//  Created by Consultant on 4/24/22.
//

import UIKit

class MyCustomViewController: UIViewController {
    
    var num_hold = [String]()
    var operations = [String]()
    var loc = 0
    var opp_loc = 0
    var test_equation = ""
    
    @IBOutlet weak var screen_text: UILabel!
    @IBOutlet weak var zero_button: UIView!
    @IBOutlet weak var one_button: UIButton!
    @IBOutlet weak var two_button: UIButton!
    @IBOutlet weak var three_button: UIButton!
    @IBOutlet weak var four_button: UIButton!
    @IBOutlet weak var five_button: UIButton!
    @IBOutlet weak var six_button: UIButton!
    @IBOutlet weak var seven_button: UIButton!
    @IBOutlet weak var eight_button: UIButton!
    @IBOutlet weak var decimal_opp: UIButton!
    @IBOutlet weak var plus_minus_opp: UIButton!
    @IBOutlet weak var addition_opp: UIButton!
    @IBOutlet weak var subtraction_button: UIButton!
    @IBOutlet weak var multiplication_opp: UIButton!
    @IBOutlet weak var divison_opp: UIButton!
    @IBOutlet weak var module_opp: UIButton!
    @IBOutlet weak var clear_button: UIButton!
    @IBOutlet weak var equal_button: UIButton!
    @IBOutlet weak var nine_button: UIButton!
    
    
    @IBAction func zero_button_input(_ sender: Any) {
        if (num_hold.isEmpty){
            num_hold.append("0")
        }
        else{
            num_hold[loc] += "0"
        }
        screen_text.text = num_hold[loc]
    }
    @IBAction func one_button_input(_ sender: Any) {
        if (num_hold.isEmpty){
            num_hold.append("1")
        }
        else if num_hold[loc] == "0"{
            num_hold[loc] = "1"
        }
        else{
            num_hold[loc] += "1"
        }
        screen_text.text = num_hold[loc]
    }
    @IBAction func two_button_input(_ sender: Any) {
        if (num_hold.isEmpty){
            num_hold.append("2")
        }
        else if num_hold[loc] == "0"{
            num_hold[loc] = "2"
        }
        else{
            num_hold[loc] += "2"
        }
        screen_text.text = num_hold[loc]
    }
    @IBAction func three_button_input(_ sender: Any) {
        if (num_hold.isEmpty){
            num_hold.append("3")
        }
        else if num_hold[loc] == "0"{
            num_hold[loc] = "3"
        }
        else{
            num_hold[loc] += "3"
        }
        screen_text.text = num_hold[loc]
    }
    @IBAction func four_button_input(_ sender: Any) {
        if (num_hold.isEmpty){
            num_hold.append("4")
        }
        else if num_hold[loc] == "0"{
            num_hold[loc] = "4"
        }
        else{
            num_hold[loc] += "4"
        }
        screen_text.text = num_hold[loc]
    }
    @IBAction func five_button_input(_ sender: Any) {
        if (num_hold.isEmpty){
            num_hold.append("5")
        }
        else if num_hold[loc] == "0"{
            num_hold[loc] = "5"
        }
        else{
            num_hold[loc] += "5"
        }
        screen_text.text = num_hold[loc]
    }
    @IBAction func six_button_input(_ sender: Any) {
        if (num_hold.isEmpty){
            num_hold.append("6")
        }
        else if num_hold[loc] == "0"{
            num_hold[loc] = "6"
        }
        else{
            num_hold[loc] += "6"
        }
        screen_text.text = num_hold[loc]
    }
    @IBAction func seven_button_input(_ sender: Any) {
        if (num_hold.isEmpty){
            num_hold.append("7")
        }
        else if num_hold[loc] == "0"{
            num_hold[loc] = "7"
        }
        else{
            num_hold[loc] += "7"
        }
        screen_text.text = num_hold[loc]
    }
    @IBAction func eight_button_input(_ sender: Any) {
        if (num_hold.isEmpty){
            num_hold.append("8")
        }
        else if num_hold[loc] == "0"{
            num_hold[loc] = "8"
        }
        else{
            num_hold[loc] += "8"
        }
        screen_text.text = num_hold[loc]
    }
    
    @IBAction func nine_button_press(_ sender: Any) {
        if (num_hold.isEmpty){
            num_hold.append("9")
        }
        else if num_hold[loc] == "0"{
            num_hold[loc] = "9"
        }
        else{
            num_hold[loc] += "9"
        }
        screen_text.text = num_hold[loc]
    }
    
    @IBAction func decimal_opp_pressed(_ sender: Any) {
        if (num_hold.isEmpty){
            num_hold.append("0.")
        }
        
        if (num_hold[loc] == ""){
            num_hold[loc] = "0."
        }
        
        if num_hold[loc].contains(".") == false{
            num_hold[loc] += "."
        }
        screen_text.text = num_hold[loc]
    }
    @IBAction func plus_minus_opp_press(_ sender: Any) {
        if (num_hold.indices.contains(loc) == false ){
            screen_text.text = "Please choose a number"
        }
        else{
            if num_hold[loc].contains("-") == false{
                num_hold[loc] = "-" + num_hold[loc]
                screen_text.text = num_hold[loc]
            }
            else{
                num_hold[loc].removeFirst()
                screen_text.text = num_hold[loc]
                
            }
        }
    }
    @IBAction func addition_opp_press(_ sender: Any) {
        
        if num_hold.indices.contains(0) == false{
            screen_text.text = "Please Choose an inital number to add."
        }
        
        if (num_hold.indices.contains(loc) == false){
            screen_text.text = "Please Choose a number to add"
        }
        
        
        if operations.indices.contains(loc) == false && num_hold.indices.contains(loc) == true && num_hold[loc] != ""{
            screen_text.text = "+"
            num_hold.append("")
            loc += 1
            operations.append("+")
            opp_loc += 1
            
            
        }
        
        
    }
    @IBAction func subtraction_opp_press(_ sender: Any) {
        if num_hold.indices.contains(0) == false {
            screen_text.text = "Please Choose an inital number to subtract."
        }
        
        if (num_hold.indices.contains(loc) == false){
            screen_text.text = "Please Choose a number to subtract"
        }
        
        if operations.indices.contains(loc) == false && num_hold.indices.contains(loc) == true && num_hold[loc] != ""{
            screen_text.text = "-"
            num_hold.append("")
            loc += 1
            operations.append("-")
            opp_loc += 1
            
            
        }
    }
    @IBAction func multiplication_opp_press(_ sender: Any) {
        if num_hold.indices.contains(0) == false{
            screen_text.text = "Please Choose an inital number to mulitply."
        }
        
        if (num_hold.indices.contains(loc) == false){
            screen_text.text = "Please Choose a number to multiply"
        }
        
        if operations.indices.contains(loc) == false && num_hold.indices.contains(loc) == true && num_hold[loc] != ""{
            screen_text.text = "*"
            num_hold.append("")
            loc += 1
            operations.append("*")
            opp_loc += 1
            
        }
    }
    @IBAction func divison_opp_press(_ sender: Any) {
        if num_hold.indices.contains(0) == false{
            screen_text.text = "Please Choose an inital number to divide."
        }
        
        if (num_hold.indices.contains(loc) == false){
            screen_text.text = "Please Choose a number to divide"
        }
        
        if operations.indices.contains(loc) == false && num_hold.indices.contains(loc) == true && num_hold[loc] != ""{
            screen_text.text = "/"
            num_hold.append("")
            loc += 1
            operations.append("/")
            opp_loc += 1
        }
    }
    @IBAction func modulus_opp_press(_ sender: Any) {
//        if num_hold.indices.contains(loc) == false{
//            screen_text.text = "Please Choose an inital number to perform modulus."
//        }
//
//        if (num_hold.indices.contains(loc) == false){
//            screen_text.text = "Please Choose a number to perform modulus"
//        }
//
//        if operations.indices.contains(loc) == false && num_hold.indices.contains(loc) == true && num_hold[loc] != ""{
//            screen_text.text = "%"
//            num_hold.append("")
//            loc += 1
//            operations.append("%")
//            opp_loc += 1
//
//        }
        
        screen_text.text = "Working on the button now please choose a different operation selection"
    }
    @IBAction func clear_button_press(_ sender: Any) {
        num_hold.removeAll()
        operations.removeAll()
        loc = 0
        opp_loc = 0
        screen_text.text = ""
    }
    @IBAction func equal_button_press(_ sender: Any) {
        
        if (num_hold.indices.contains(0) == false || num_hold.indices.contains(1) == false  || num_hold[loc] == "") {
            
            screen_text.text = "Please create a equation"
        }
        else{
        screen_text.text = ""
        
        var index1: Int = 0
        var num1: String = "0.0"
        var num2: String = "0.0"
        var opp_sign: String = ""
        
        if let index = operations.firstIndex(of: "*") {
            index1 = index
            num1 = num_hold[index1]
            num2 = num_hold[index1+1]
            opp_sign = "*"
            
        }
        else if let index = operations.firstIndex(of: "/"){
            index1 = index
            num1 = num_hold[index1]
            num2 = num_hold[index1+1]
            opp_sign = "/"
        }
        else if let index = operations.firstIndex(of: "+"){
            index1 = index
            num1 = num_hold[index1]
            num2 = num_hold[index1+1]
            opp_sign = "+"
        }
        else if let index = operations.firstIndex(of: "-"){
            index1 = index
            num1 = num_hold[index1]
            num2 = num_hold[index1+1]
            opp_sign = "-"
        }
        
        let x1 = Double(num1)!
        let x2 = Double(num2)!
        var combine: Double = 0
        var combine_mod: Int = 0
        
        switch opp_sign {
        case "*":
            combine = x1 * x2
        case "/":
            combine = x1 / x2
        case "+":
            combine = x1 + x2
        default:
            combine = x1 - x2
        }
        
        screen_text.text = String(combine)
        
        num_hold.removeAll()
        operations.removeAll()
        loc = 0
        opp_loc = 0
        }
    }
}
