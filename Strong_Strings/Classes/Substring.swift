//
//  Substring.swift
//  strong-strings
//
//  Created by Hadevs on 13/03/2019.
//  Copyright © 2019 Hadevs. All rights reserved.
//

import Foundation

public extension String {
	subscript(_ indexOfCharacter: Int) -> Character {
		return self[index(startIndex, offsetBy: indexOfCharacter)]
	}
	
	subscript(optional indexOfCharacter: Int) -> Character? {
		guard Array(self).indices.contains(indexOfCharacter) else {
			return nil
		}
		return self[index(startIndex, offsetBy: indexOfCharacter)]
	}
}
