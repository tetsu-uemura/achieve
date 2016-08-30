require 'test_helper'

class NoticeMailrTest < ActionMailer::TestCase
  test "sendmail_blog" do
    mail = NoticeMailr.sendmail_blog
    assert_equal "Sendmail blog", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
