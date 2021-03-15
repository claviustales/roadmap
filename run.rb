# frozen_string_literal: true

require_relative 'roadmap'

puts ''
puts Roadmap.new(
  starting_at: '2021-02-24',
  weekly_speed: 8,
  demands: {
    'Rais 2021' => 0,
    'Conversão via eSocial Downloads' => 40,
    'Conferência de Totalizadores' =>	10,
    'SST S1.0' =>	40,
    'Controle de Empregados horistas' => 30,
    'Estagiário remunerado' => 10,
    'Controle de férias a vencer' =>	6,
    'Leiaute S1.0 eSocial' =>	60,
    'Complem. de 13' =>	20,
    'Outros Vinculos para todas as categorias' =>	20,
    'Diversos Comple. de Rescisão' =>	20,
    'Vinculos Concomitantes' =>	20,
    'Cál. IRRF em folha de adiantamento.' =>	20,
    'Leiaute S2.0 eSocial' =>	60,
    'Contabil. do Pró-Labore (*)' => 4,
    'Contabil. de Rescisão (*)' => 10,
    'Contabil. de Autônomos (RPA) (*)' => 4,
    'Contabil. de Adiant. de folha (*)' => 6,
    'Contabil. de Parcela Inicial 13 (*)' => 6,
    'Contabil. de Parcela Final 13 (*)' => 10,
    'Termo de resp. e ficha do salário-família' => 4,
    'Processos Judiciais' => 30
  }
)
puts '', '', '(*) dependência da equipe Fisco', ''
