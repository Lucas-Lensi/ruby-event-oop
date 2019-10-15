require 'time'
require 'pry'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(new_event, duration_time, event_title, list_user)
    @start_date = Time.parse(new_event)
    @duration = duration_time
    @title = event_title
    @attendees = list_user
  end

  def postpone_24h
    return @start_date += (24*60*60)
  end

  def end_date
    return @start_date + @duration
  end

  def is_past?
    return @start_date < Time.now
  end

  def is_futur?
    return @start_date > Time.now
  end

  def is_soon?
    if @start_date > Time.now && Time.now >= @start_date - (30*60)
      return true
    else
      return false
    end
  end

  def to_s
    print " >Titre : "
    puts @title
    print ">Date de début : "
    puts @start_date
    print ">Durée : "
    puts @duration
    print ">Invités : "
    print @attendees.join(', ')
  end

end
