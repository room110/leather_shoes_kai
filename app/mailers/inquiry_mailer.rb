class InquiryMailer < ApplicationMailer
	def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'system@example.com',
      to:   'ito.room.room.110@gmail.com',
      subject: 'お問い合わせ通知'
    )
  end
end
