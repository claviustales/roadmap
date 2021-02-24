# frozen_string_literal: true

require_relative 'roadmap'

describe Roadmap do
  subject do
    described_class.new(
      starting_at: '2020-03-31',
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
        '[A] Processos Judiciais' =>	30,
        '[A] Contabilização do Pró-Labore' =>	10,
        'Controle de Empregados Horistas' =>	30,
        'Termo do Salário Família' =>	4
      }
    )
  end

  it do
    expect(subject.to_s).to eq File.read('roadmap_spec.txt')
  end
end
