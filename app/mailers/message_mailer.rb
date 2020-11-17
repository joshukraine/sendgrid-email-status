class MessageMailer < ApplicationMailer
  def email
    @message = params[:message]
    # mail(
    #   to: @message.to,
    #   subject: @message.subject,
    #   from: ENV["FROM_EMAIL"],
    #   custom_args: {
    #     id: @message.id
    #   }
    # )

    mail(
      to: @message.to,
      from: ENV["FROM_EMAIL"],
      custom_args: {
        id: @message.id
      },
      dynamic_template_data: {
        subject: @message.subject,
        message_body: @message.body
      },
      template_id: ENV["TEMPLATE_ID"]
    )
  end
end
