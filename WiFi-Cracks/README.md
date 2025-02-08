## Tipos de ataques para redes Wi-Fi

Na biblioteca do `wifite` temos os seguintes mecanismos de exploração de vulnerabilidades...

### WPS Pixie-Dust

**Descrição:** O ataque Pixie-Dust é uma técnica que explora falhas na implementação do WPS (Wi-Fi Protected Setup). Ele permite que um atacante capture os valores de nonce (E-S1 e E-S2) durante o processo de autenticação, que podem ser usados para calcular o PIN WPS sem precisar de uma força bruta.

**Ferramentas:** Ferramentas como Reaver e Bully são frequentemente utilizadas para executar esse ataque, permitindo que o atacante obtenha a chave de segurança da rede.

### WPS Null-Pin

**Descrição:** O ataque WPS Null-Pin se aproveita de implementações vulneráveis do WPS que aceitam um PIN vazio como válido. Isso permite que um atacante se conecte à rede sem precisar de um PIN correto.

**Impacto:** Se bem-sucedido, o atacante pode obter acesso total à rede, comprometendo a segurança da mesma.

### WPS Pin-Attack

**Descrição:** Este ataque envolve a tentativa sistemática de adivinhar o PIN de 8 dígitos usado pelo WPS. Como o WPS verifica os primeiros quatro dígitos antes dos últimos quatro, o atacante pode usar essa informação para reduzir o número de tentativas necessárias.

**Método:** O atacante pode usar ferramentas como Reaver ou Bully para realizar um ataque de força bruta, testando combinações até encontrar o PIN correto.

### PMKID-Capture

**Descrição:** O ataque PMKID-Capture permite que um atacante capture o PMKID (Pairwise Master Key Identifier) de um ponto de acesso sem a necessidade de um cliente estar conectado. Isso é feito interceptando pacotes de autenticação.

**Vantagem:** O PMKID é derivado de informações conhecidas, tornando o processo de quebra de senha mais eficiente, pois não requer interação com clientes.

### WPA Handshake-Capture
**Descrição:** O WPA Handshake-Capture envolve a captura do handshake que ocorre quando um cliente se conecta a um ponto de acesso. Este handshake contém informações que podem ser usadas para quebrar a senha da rede.

**Método:** Normalmente, um ataque de desautenticação é realizado para forçar um cliente a reconectar, permitindo que o atacante capture o handshake durante o processo de autenticação. Ferramentas como aircrack-ng são utilizadas para analisar e quebrar a senha a partir do handshake capturado.

## Quebra da senha

Há uma ferramenta chamada `aircrack-ng` que pode ajudar a resolver a senha da rede Wi-Fi. Digite `aircrack-ng -h` para mais detalhes
