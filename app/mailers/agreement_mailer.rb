class AgreementMailer < ActionMailer::Base
  default :from => "Costume Shop <costumeshop@wesleyan.edu>"

  def welcome_email(agg)
    @agreement = agg
    attachments['BorrowingTerms.pdf'] = File.read('public/BorrowingTerms.pdf')
    email_with_name = "#{agg.name} <#{agg.email}>"
    mail(:to => email_with_name, :subject => "Costume Shop Lending Confirmation - Costumes Due #{agg.duedate.strftime("%A, %B %d")}")
  end

  def reminder_email(agg)
    @agreement = agg
    email_with_name = "#{agg.name} <#{agg.email}>"
    mail(:to => email_with_name, :subject => "REMINDER: Costume Due #{agg.duedate.strftime("%A, %B %d")}")
  end

end

