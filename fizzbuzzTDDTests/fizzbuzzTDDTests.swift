//
//  fizzbuzzTDDTests.swift
//  fizzbuzzTDDTests
//
//  Created by Mac on 16/09/2023.
//

import XCTest
@testable import fizzbuzzTDD

final class fizzbuzzTDDTests: XCTestCase {


  func test_print_numberZero() {
    expect(print: 0, withResult: "Not Valid Input" )

  }

  func test_print_number() {
    expect(print: 1, withResult: "1")
    expect(print: 2, withResult: "2")
    expect(print: 4, withResult: "4")
  }

  func test_print_fizz_whenMultipleOfThree() {
    let values = [3,6,9,12,18]
    values.forEach { number in
      expect(print: number, withResult: "Fizz")
    }
  }
  func test_print_Buzz_whenMultipleOfFive() {
    let values = [5,10,20,50,100]
    values.forEach { number in
      expect(print: number, withResult: "Buzz")
    }
  }

  func test_print_FizzBuzz_whenNumberIsMultipleOfFifteen() {
    let values = [15,30,45]
    values.forEach { number in
      expect(print: number, withResult: "FizzBuzz")
    }

  }
  func test_allCases() {
    let numbers = Array(1...100)
    numbers.forEach { number in
      print(FizzBuzz.parse(number))

    }
  }

  // MARK :- Helpers

  // what you achived from making makeSUT() function

  func expect(print number: Int , withResult result: String, file: StaticString = #filePath, line: UInt = #line) {
    XCTAssertEqual(FizzBuzz.parse(number), result, file: file , line: line)
  }

  private enum printResult {
    case NotValidInput
    case Fizz
    case Buzz
    case FizzBuzz
  }

}
