require_relative 'models/cliente'
require_relative 'models/fornecedor'
require 'terminal-table'

clientes = Models::Cliente.todos 

rows = clientes.map do |cliente|
  [cliente.id, cliente.nome, cliente.telefone, cliente.cpf]
end

tabela_cliente = Terminal::Table.new(
  :headings => ['ID', 'Nome', 'Telefone', 'CPF'],
  :rows => rows
)

puts tabela_cliente

puts "----------------------------------------------"

fornecedores = Models::Fornecedor.todos 

rows = fornecedores.map do |fornecedor|
  [fornecedor.id, fornecedor.nome, fornecedor.cnpj, fornecedor.endereco, fornecedor.telefone]
end

tabela_fornecedores = Terminal::Table.new(
  :headings => ['ID', 'Nome', 'CNPJ', 'Endereco', 'Telefone'],
  :rows => rows
)

puts tabela_fornecedores