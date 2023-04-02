# Discord Messenger

A lightweight wrapper for sending Discord messages in Ruby.

# Installation

Add the gem to your project

```
# Gemfile
gem 'discord-messenger'
```

Then bundle install and you are ready to go.

## Usage

Initialize the provided `Discord` class with your channel's webhook url and call the `send_message` method with a string.

```rb
require 'discord-messenger'

discord = Discord.new(YOUR_WEBHOOK_URL)
discord.send_message("Howdy partner 🤠")
```
