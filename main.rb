require "telegram/bot"

TOKEN = "708394734:AAFMfhhsNIx6C8zlsaSLlGlA-udQohKhByw"

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
     bot.api.send_message(chat_id: message.chat.id,text: "Привет, #{message.from.first_name}")
    else
      bot.api.send_message(chat_id: message.chat.id,text:"Мой функционал слишком мал для общения с вами. Можете попросить моего создателя поработать надо мной. @aech61 ")
    end
  end
end

