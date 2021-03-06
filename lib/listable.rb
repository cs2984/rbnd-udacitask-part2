module Listable
  # Listable methods go here
  def format_description(description)
  	"#{description}".ljust(30)
  end

  
  def format_date(due, event = nil)
      if event == nil 
          due ? due.strftime("%c") : "No due date"
      else
          dates = @start_date.strftime("%c") if @start_date
          dates << " -- " + @end_date.strftime("%c") if @end_date
          dates = "N/A" if !dates
          return dates
      end
  end

  def format_priority
  	value = " ⇧".colorize(:red) if @priority == "high"
    value = " ⇨".colorize(:yellow) if @priority == "medium"
    value = " ⇩".colorize(:green) if @priority == "low"
    value = "" if !@priority
    return value
  end

  def format_name(site_name)
  	@site_name ? @site_name : ""
  end


end
