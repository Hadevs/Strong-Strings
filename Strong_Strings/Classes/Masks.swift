//  Masks.swift
//  strong-strings
//
//  Created by Hadevs on 13/03/2019.
//  Copyright © 2019 Hadevs. All rights reserved.
//

import Foundation

public extension String {
	func corresponds(to mask: String) -> Bool {
		// * - all
		// ? - one
		// asdfbjvm
		var indexOfCharacter = 0
		var previousCharacter: Character?
		for characterInMask in mask {
			switch characterInMask {
			case "?":
				// test if on this place exist any character
				if self[optional: indexOfCharacter] == nil {
					return false
				}
			case "*":
				indexOfCharacter -= 1 // decrease index of character
				break
			default:
				if previousCharacter == "*" { break }
				if self[optional: indexOfCharacter] != characterInMask {
					return false
				}
			}
			previousCharacter = characterInMask // save prev character
			indexOfCharacter += 1 // incremenet index after every loop step
		}
		return true
	}
}
