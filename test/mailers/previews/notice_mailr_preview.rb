# Preview all emails at http://localhost:3000/rails/mailers/notice_mailr
class NoticeMailrPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notice_mailr/sendmail_blog
  def sendmail_blog
    NoticeMailr.sendmail_blog
  end

end
