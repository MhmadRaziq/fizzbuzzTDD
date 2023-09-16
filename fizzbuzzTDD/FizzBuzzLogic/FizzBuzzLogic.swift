//
//  FizzBuzzLogic.swift
//  fizzbuzzTDD
//
//  Created by Mac on 16/09/2023.
//

import Foundation

 class FizzBuzz {
  static func parse(_ number: Int) -> String {
    if number == 0 {
      return "Not Valid Input"
    } else {
      switch (number.isMultiple(of: 3) , number.isMultiple(of: 5)) {
      case (false , false ):  return String(number)
      case (false , true ): return "Buzz"
      case (true , false ): return "Fizz"
      case (true , true ): return "FizzBuzz"
      }
    }
  }
}
