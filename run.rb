# frozen_string_literal: true

require_relative 'roadmap'

puts ''
puts Roadmap.new(
  starting_at: '2022-01-05', # wed
  weekly_speed: 4.5,
  demands: {
    'Melhorias no Conversor [ANDAMENTO]' => 20,
    'DIRF 2022' => 2,
    'Períodos aquisitivos' => 10,
    'Leiaute S1.0 eSocial [ANDAMENTO]' => 20,
    'RAIS 2022' => 2,
    'Outros Vínculos (para todas as categorias)' => 10,
    'Conferência de Totais: INSS' => 10,
    'Conferência de Totais: FGTS' => 10,
    'Simulação de Rescisão' => 10,
    'Controle de férias a vencer' => 5,
    'Adiantamento de Folha: Calcular IR' => 10,
    'Controle de Empregados horistas' => 10,
    'Vínculos Concomitantes' => 20,
    'Estágio remunerado' => 10,
    'Integração Contábil: Empregador (Pró-labore)' => 5,
    'Integração Contábil: Rescisão' => 10,
    'Integração Contábil: Autônomo (RPA)' => 5,
    'Integração Contábil: Complementos' => 10,
    'Leiaute S2.0 eSocial' => 20,
    'Integração Contábil: Adiantamento de Folha' => 5,
    'Integração Contábil: 13º Salário - Adiantamento' => 5,
    'Integração Contábil: 13º Salário - Parcela Final' => 5,
    'Conferência de Totais: IR' => 10,
    'Relatório: Termo de resp. salário família' => 2
  }
)
puts '', '', '(*) dependência da equipe Fisco', ''
