desc 'Sets Seminars that are over to archived'

task :set_archived_seminars => :environment do

  Seminar.where("end_date < ?", Date.yesterday).each do |seminar|
    seminar.update(archived: true)
  end

end
