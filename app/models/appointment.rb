class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def date
    datestring = ""
    months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    datestring += months[self.appointment_datetime.month-1]
    datestring += " #{self.appointment_datetime.day}, #{self.appointment_datetime.year} at #{self.appointment_datetime.hour}:#{self.appointment_datetime.min}"
    datestring
  end
end
