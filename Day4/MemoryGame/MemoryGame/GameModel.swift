//
//  GameModel.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/07/13.
//

import Foundation

struct Card {
    enum State {
        case open, closed, removed
    }
    let number: Int
    var state = State.open
}

class GameModel: ObservableObject {
    static let cols = 3
    static let rows = 4
    
    @Published var cards = [Card]()
    //var cards: [Card] = []
    
    init() {
        let max = Self.cols * Self.rows / 2
        for n in 1...max {
            cards.append(Card(number: n, state: .open))
            cards.append(Card(number: n, state: .closed))
        }
    }
    
    func card(row: Int, col: Int) -> Card {
        let index = row * Self.cols + col
        return cards[index]
    }
    func toggle(row: Int, col: Int) {
        let index = row * Self.cols + col
        var card = cards[index]
        card.state = card.state == .open ? .closed : .open
        cards[index] = card
    }
}
