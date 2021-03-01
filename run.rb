# frozen_string_literal: true

require_relative 'roadmap'

puts ''
puts Roadmap.new(
  starting_at: '2021-03-31',
  weekly_speed: 8,
  demands: {
    'Conferência de Totalizadores' =>	10,
    'SST S1.0' =>	40,
    'Complemento de 13' =>	20,
    '[A] Leiaute S1.0 eSocial' =>	60,
    'Leiaute S2.0 eSocial' =>	60,
    '[A] Outros Vinculos para todas as categorias' =>	20,
    '[A] Listagem de férias a vencer' =>	6,
    '[A] Diversos Comple. de Rescisão' =>	20,
    '[A] Vinculos Concomitantes' =>	20,
    '[A] Cál. IRRF em folha de adiant.' =>	20,
    'Controle de Horistas' => 30,
    'Estagiário Remunerado' => 10,
    'Contabilização de Pró-Labore' => 4,
    'Contabilização de Rescisão' => 10,
    'Contabilização de Autônomo (RPA)' => 4,
    'Contabilização de Adiantamento de folha' => 6,
    'Contabilização de Parcela final de 13º salário' => 10,
    'Contabilização de Adiantamento de 13º salário' => 6,
    'Termo de resp. e ficha de SF' => 4,
    'Processos Judiciais' => 30
  }
)
puts ''
