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
    static let cols = 4
    static let rows = 5
    
    @Published var cards = [Card]()
    var openCardIndex: Int?
    @Published var flips = 0
    
    var over: Bool {
//        for c in cards {
//            if c.state != .removed { return false }
//        }
//        return true
        return pairCount == 0
    }

    private var pairCount = 0
    
    init() {
        start()
    }

    func start() {
        cards = []
        let max = Self.cols * Self.rows / 2
        for n in 1...max {
            cards.append(Card(number: n, state: .closed))
            cards.append(Card(number: n, state: .closed))
        }
        cards.shuffle()
        openCardIndex = nil
        flips = 0
        pairCount = max
    }
    
    func card(row: Int, col: Int) -> Card {
        let index = row * Self.cols + col
        return cards[index]
    }
    func toggle(row: Int, col: Int) {
        let index = row * Self.cols + col
        if index == openCardIndex {
            return
        }
        if let oci = openCardIndex {
            if cards[oci].number == cards[index].number {
                cards[oci].state = .removed
                cards[index].state = .removed
                openCardIndex = nil
                pairCount -= 1
                return
            }
            cards[oci].state = .closed
        }

        let card = cards[index]
        cards[index].state = card.state == .open ? .closed : .open
        
        openCardIndex = index
        
        flips += 1
    }
}
