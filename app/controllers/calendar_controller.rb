class CalendarController < ApplicationController
  def month
    @date = Date.parse(params.fetch(:date, Date.today.to_s))
    # @events = Event.where(start_date: @date.all_month)
    @events = Event.where(start_date: @date.all_month).group_by { |e| e.start_date.to_date }
  end
end
