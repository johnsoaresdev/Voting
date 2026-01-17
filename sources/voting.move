module event_system::voting {
    use std::string::String;
    use sui::event;
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};

    // Erro para quando alguém tenta votar em uma opção que não existe
    const EInvalidOption: u64 = 0;

    // O objeto da votação que será compartilhado
    public struct Poll has key {
        id: UID,
        question: String,
        option_a: String,
        option_b: String,
        count_a: u64,
        count_b: u64,
    }

    // Evento para emitir cada vez que um voto acontece
    public struct VoteEvent has copy, drop {
        voter: address,
        option: u8, 
    }

    // Função para criar uma nova votação
    public entry fun create_poll(
        question: String,
        option_a: String,
        option_b: String,
        ctx: &mut TxContext
    ) {
        let poll = Poll {
            id: object::new(ctx),
            question,
            option_a,
            option_b,
            count_a: 0,
            count_b: 0,
        };
        transfer::share_object(poll);
    }

    // Função para votar
    public entry fun vote(poll: &mut Poll, option: u8, ctx: &mut TxContext) {
        if (option == 1) {
            poll.count_a = poll.count_a + 1;
        } else if (option == 2) {
            poll.count_b = poll.count_b + 1;
        } else {
            abort EInvalidOption
        };

        event::emit(VoteEvent {
            voter: tx_context::sender(ctx),
            option,
        });
    }
}