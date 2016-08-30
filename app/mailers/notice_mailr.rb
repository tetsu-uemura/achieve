class NoticeMailr < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailr.sendmail_blog.subject
  #
  def sendmail_blog(blog)
    @blog = blog

    mail to: "tetsu1126uemura@gmail.com",
    subject:'[Achieve]ブログが投稿されました'
  end
end
