desc 'Sets Bookings without a payment to unused'

task :set_unused_bookings => :environment do

  Booking.where("created_at < ?", Date.yesterday).not_archived.each do |booking|
    if booking.status.pending? || booking.status.failed?
      booking.update(status: "archived")
    end
  end

end
