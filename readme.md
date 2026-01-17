ui Voting System (Move 2024)

A decentralized e seguro smart contract de votação construído na Sui Blockchain, aproveitando os recursos mais recentes da Move 2024 edition. Este sistema permite aos usuários criar e participar de enquetes simples e on-chain.

Principais Recursos

•
Acessibilidade Global (Shared Objects): Os objetos de enquete são criados como Shared Objects usando transfer::share_object, permitindo que qualquer usuário na rede interaja com eles sem a necessidade de permissões específicas de propriedade ou transferência.

•
Rastreamento em Tempo Real (On-chain Events): Emite um VoteEvent para cada voto registrado, permitindo que aplicações off-chain e exploradores rastreiem a atividade de votação em tempo real.

•
Enquetes Customizáveis: Permite a criação de enquetes personalizadas com uma pergunta e duas opções de voto predefinidas.

Interação via CLI (Sui Client)

Para interagir com o contrato, você precisará do sui client configurado. Substitua <PACKAGE_ID>, <POLL_OBJECT_ID> e <1_OR_2> pelos valores apropriados.

1. Criar uma Enquete

Cria um novo objeto de enquete (Poll) na rede.

Bash


sui client call --package <PACKAGE_ID> --module voting --function create_poll --args "Sua Pergunta" "Opção A" "Opção B" --gas-budget 10000000


2. Registrar um Voto

Registra um voto na enquete especificada. O valor <1_OR_2> deve ser 1 para a primeira opção ou 2 para a segunda.

Bash


sui client call --package <PACKAGE_ID> --module voting --function vote --args <POLL_OBJECT_ID> <1_OR_2> --gas-budget 10000000


Detalhes do Contrato

Endereço de Implantação (Mainnet)

Este é o ID do pacote do contrato implantado na rede principal (Mainnet).

Descrição
Valor
Package ID
0x780f03675fec5aa405133cb7629d25f355f186951453b353ed4337882f21c75c



