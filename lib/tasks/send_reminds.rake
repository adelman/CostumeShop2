task :send_reminds => :environment do
  Agreement.all.each do |remind|
    AgreementMailer.reminder_email(remind).deliver if (remind.duedate == (Date.today + 2.days))
  end
end
