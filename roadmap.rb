# frozen_string_literal: true

require 'date'

##
class Roadmap
  private

  def initialize(starting_at:, weekly_speed:, demands:)
    @starting_at = Date.parse(starting_at)
    @weekly_speed = weekly_speed
    @demands = demands.map { |title, size| Demand.new(title: title, size: size) }

    set_up
  end

  attr_reader :starting_at, :weekly_speed, :demands

  public

  def to_s
    @to_s ||= time_slots.join("\n")
  end

  private

  def set_up
    demands.each do |demand|
      add_time_slot while empty_space < demand.size
      time_slots.last << demand
    end
  end

  def add_time_slot
    time_slots << time_slots.last.next
  end

  def time_slots
    @time_slots ||= [TimeSlot.new(initial_date: starting_at, weekly_speed: weekly_speed)]
  end

  def empty_space
    time_slots.sum(&:empty_size)
  end

  ##
  class Demand
    private

    def initialize(title:, size:)
      @title = title
      @size = size
    end

    attr_reader :title

    public

    attr_reader :size

    def to_s
      @to_s ||= "#{title}\n"
    end
  end

  ##
  class TimeSlot
    MONTHS = %w[JAN FEV MAR ABR MAI JUN JUL AGO SET OUT NOV DEZ].freeze

    private

    def initialize(initial_date:, weekly_speed:)
      @initial_date = initial_date
      @weekly_speed = weekly_speed
    end

    attr_reader :initial_date, :weekly_speed

    public

    def demands
      @demands ||= []
    end

    def next
      @next ||= TimeSlot.new(initial_date: end_of_last_week + 1, weekly_speed: weekly_speed)
    end

    def <<(demand)
      demands << demand
    end

    def empty_size
      size - demands_size
    end

    def to_s
      @to_s ||= (["#{MONTHS[end_of_last_week.month - 1]}/#{end_of_last_week.year}\n"] + demands).join
    end

    private

    def size
      @size ||= ((end_of_last_week - end_of_first_week) / 7 + 1) * weekly_speed
    end

    def end_of_last_week
      @end_of_last_week ||= begin
        result = end_of_first_week
        result += 7 while (result + 7).to_s[0..6] == end_of_first_week.to_s[0..6]
        result
      end
    end

    def end_of_first_week
      @end_of_first_week ||= initial_date + 7 - 1
    end

    def demands_size
      demands.sum(&:size)
    end
  end
end
