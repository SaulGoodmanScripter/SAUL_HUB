import telebot
from telebot.types import InlineKeyboardMarkup, InlineKeyboardButton, ReplyKeyboardMarkup, KeyboardButton
import json
import time
import hashlib
import os

# ============= НАСТРОЙКИ =============
TOKEN = "8327750780:AAHo6Rn0wiAmN_sZNC1B13785Kg-LuSi-Oc"
OWNER_ID = 6397071501
CHANNEL = "@SaulGoodmanScript"
BOT_USERNAME = "SaulScript_Bot"

bot = telebot.TeleBot(TOKEN)

# ============= ХРАНЕНИЕ =============
scripts_db = {}
schedule_db = []

def load_data():
    global scripts_db, schedule_db
    try:
        if os.path.exists("scripts.json"):
            with open("scripts.json", "r", encoding="utf-8") as f:
                scripts_db = json.load(f)
    except:
        scripts_db = {}
    
    try:
        if os.path.exists("schedule.json"):
            with open("schedule.json", "r", encoding="utf-8") as f:
                schedule_db = json.load(f)
    except:
        schedule_db = []

def save_data():
    try:
        with open("scripts.json", "w", encoding="utf-8") as f:
            json.dump(scripts_db, f, ensure_ascii=False, indent=2)
    except:
        pass
    
    try:
        with open("schedule.json", "w", encoding="utf-8") as f:
            json.dump(schedule_db, f, ensure_ascii=False, indent=2)
    except:
        pass

load_data()
print(f"📦 Скриптов: {len(scripts_db)}")
print(f"📅 Запланировано: {len(schedule_db)}")

# ============= ВРЕМЕННЫЕ ДАННЫЕ =============
temp_data = {}

# ============= СТАРТ =============
@bot.message_handler(commands=['start'])
def start(message):
    args = message.text.split()
    
    if len(args) > 1:
        key = args[1].upper()
        if key in scripts_db:
            script = scripts_db[key]
            script['uses'] = script.get('uses', 0) + 1
            save_data()
            
            text = f"📌 {script['game_name']}\n\n"
            text += f"📝 Описание:\n{script['description']}\n\n"
            text += f"📥 Код для эксплоита:\n{script['loadstring']}\n\n"
            text += f"🔗 URL: {script['url']}\n"
            text += f"📅 Добавлен: {script['date']}\n"
            text += f"👥 Скачали: {script['uses']} раз\n\n"
            text += "📢 Больше скриптов: @SaulGoodmanScript\n"
            text += "🤝 Партнёр: @loriscript"
            
            markup = InlineKeyboardMarkup()
            markup.add(
                InlineKeyboardButton("📢 Канал", url=f"https://t.me/{CHANNEL.replace('@', '')}"),
                InlineKeyboardButton("🤝 Партнёр", url="https://t.me/loriscript")
            )
            
            bot.send_message(message.chat.id, text, reply_markup=markup)
        else:
            bot.send_message(message.chat.id, "❌ Скрипт не найден")
        return
    
    if message.from_user.id == OWNER_ID:
        bot.send_message(
            message.chat.id,
            "👑 Создатель SaulGoodmanScript\n\n"
            "Отправь фото (если нужно) и текст в формате:\n\n"
            "Название игры\n---\nURL\n---\nОписание через +\n\n"
            "Пример:\nAttack on Titan Revolution\n---\nhttps://...\n---\n+без ключа\n+без бана"
        )
    else:
        bot.send_message(
            message.chat.id,
            "👋 Добро пожаловать!\n\n📢 Канал: @SaulGoodmanScript"
        )

# ============= ФОТО =============
@bot.message_handler(content_types=['photo'])
def handle_photo(message):
    if message.from_user.id != OWNER_ID:
        return
    
    user_id = str(message.from_user.id)
    if user_id not in temp_data:
        temp_data[user_id] = {}
    
    temp_data[user_id]['photo'] = message.photo[-1].file_id
    bot.reply_to(message, "✅ Фото сохранено! Теперь отправь текст.")

# ============= ТЕКСТ =============
@bot.message_handler(content_types=['text'])
def handle_text(message):
    if message.from_user.id != OWNER_ID:
        return
    
    user_id = str(message.from_user.id)
    
    parts = message.text.split('\n---\n')
    if len(parts) < 3:
        bot.send_message(message.chat.id, "❌ Неправильный формат!")
        return
    
    game_name = parts[0].strip()
    url = parts[1].strip()
    description = parts[2].strip()
    
    if not url.startswith(('http://', 'https://')):
        bot.send_message(message.chat.id, "❌ Неверный URL")
        return
    
    key = hashlib.md5(f"{game_name}{time.time()}".encode()).hexdigest()[:8].upper()
    loadstring = f'loadstring(game:HttpGet("{url}"))()'
    
    if user_id not in temp_data:
        temp_data[user_id] = {}
    
    temp_data[user_id].update({
        'game_name': game_name,
        'url': url,
        'description': description,
        'loadstring': loadstring,
        'key': key,
        'has_photo': 'photo' in temp_data[user_id]
    })
    
    # Меню с предпросмотром
    markup = InlineKeyboardMarkup(row_width=2)
    markup.add(
        InlineKeyboardButton("👁️ Предпросмотр", callback_data=f"preview_{user_id}"),
        InlineKeyboardButton("🚀 Сейчас", callback_data=f"publish_{user_id}"),
        InlineKeyboardButton("⏰ 1 час", callback_data=f"schedule_{user_id}_3600"),
        InlineKeyboardButton("⏰ 3 часа", callback_data=f"schedule_{user_id}_10800"),
        InlineKeyboardButton("⏰ 6 часов", callback_data=f"schedule_{user_id}_21600")
    )
    
    has_photo = temp_data[user_id].get('has_photo', False)
    bot.send_message(
        message.chat.id,
        f"✅ Данные сохранены!\n🎮 Игра: {game_name}\n📷 Фото: {'Да' if has_photo else 'Нет'}\n\nВыбери действие:",
        reply_markup=markup
    )

# ============= ПРЕДПРОСМОТР =============
@bot.callback_query_handler(func=lambda call: call.data.startswith('preview_'))
def preview_post(call):
    user_id = call.data.replace('preview_', '')
    
    if user_id not in temp_data:
        bot.answer_callback_query(call.id, "❌ Данные не найдены")
        return
    
    data = temp_data[user_id]
    
    post_text = (
        f"📌 {data['game_name']} SCRIPT!\n"
        f"{data['description']}\n\n"
        f"⚡️Гайд как скачать\n"
        f"@saulGoodmanScript_Guides\n\n"
        f"🤖Получить ключ от Delta\n"
        f"https://t.me/Saul_KeyBypass\n\n"
        f"❓️Как использовать\n"
        f"1. Копируете код выше\n"
        f"2. Вставляете в ваш эксплоит\n"
        f"3. Нажимаете Execute\n\n"
        f"-- Больше скриптов: @SaulGoodmanScript\n"
        f"🤝 Партнёр: @loriscript"
    )
    
    bot_link = f"https://t.me/{BOT_USERNAME}?start={data['key']}"
    markup = InlineKeyboardMarkup()
    markup.add(InlineKeyboardButton("📥 Получить скрипт", url=bot_link))
    
    bot.send_message(
        call.message.chat.id,
        "👁️ *ПРЕДПРОСМОТР ПОСТА:*\n(как будет выглядеть в канале)\n" + "─" * 20,
        parse_mode="Markdown"
    )
    
    if data.get('has_photo') and 'photo' in data:
        bot.send_photo(
            call.message.chat.id,
            photo=data['photo'],
            caption=post_text,
            reply_markup=markup
        )
    else:
        bot.send_message(
            call.message.chat.id,
            post_text,
            reply_markup=markup,
            disable_web_page_preview=True
        )
    
    bot.answer_callback_query(call.id, "👁️ Предпросмотр отправлен")

# ============= ПУБЛИКАЦИЯ =============
@bot.callback_query_handler(func=lambda call: call.data.startswith('publish_'))
def publish_now(call):
    user_id = call.data.replace('publish_', '')
    
    if user_id not in temp_data:
        bot.answer_callback_query(call.id, "❌ Данные не найдены")
        return
    
    publish_post(user_id)
    bot.answer_callback_query(call.id, "✅ Опубликовано!")

@bot.callback_query_handler(func=lambda call: call.data.startswith('schedule_'))
def schedule_post(call):
    parts = call.data.split('_')
    user_id = parts[1]
    delay = int(parts[2])
    
    if user_id not in temp_data:
        bot.answer_callback_query(call.id, "❌ Данные не найдены")
        return
    
    publish_time = time.time() + delay
    time_str = time.strftime("%d.%m.%Y %H:%M", time.localtime(publish_time))
    
    schedule_db.append({
        'user_id': user_id,
        'data': temp_data[user_id].copy(),
        'publish_time': publish_time,
        'time_str': time_str
    })
    save_data()
    
    hours = delay // 3600
    bot.answer_callback_query(call.id, f"✅ Через {hours}ч")
    bot.send_message(
        call.message.chat.id,
        f"📅 Запланировано!\n⏰ Время: {time_str}"
    )
    
    del temp_data[user_id]

def publish_post(user_id):
    if user_id not in temp_data:
        return
    
    data = temp_data[user_id]
    
    key = data['key']
    scripts_db[key] = {
        'game_name': data['game_name'],
        'url': data['url'],
        'description': data['description'],
        'loadstring': data['loadstring'],
        'date': time.strftime("%d.%m.%Y %H:%M"),
        'uses': 0
    }
    save_data()
    
    post_text = (
        f"📌 {data['game_name']} SCRIPT!\n"
        f"{data['description']}\n\n"
        f"⚡️Гайд как скачать\n"
        f"@saulGoodmanScript_Guides\n\n"
        f"🤖Получить ключ от Delta\n"
        f"https://t.me/Saul_KeyBypass\n\n"
        f"❓️Как использовать\n"
        f"1. Копируете код выше\n"
        f"2. Вставляете в ваш эксплоит\n"
        f"3. Нажимаете Execute\n\n"
        f"-- Больше скриптов: @SaulGoodmanScript\n"
        f"🤝 Партнёр: @loriscript"
    )
    
    bot_link = f"https://t.me/{BOT_USERNAME}?start={key}"
    markup = InlineKeyboardMarkup()
    markup.add(InlineKeyboardButton("📥 Получить скрипт", url=bot_link))
    
    try:
        if data.get('has_photo') and 'photo' in data:
            bot.send_photo(
                CHANNEL,
                photo=data['photo'],
                caption=post_text,
                reply_markup=markup
            )
        else:
            bot.send_message(
                CHANNEL,
                post_text,
                reply_markup=markup,
                disable_web_page_preview=True
            )
        
        bot.send_message(
            int(user_id),
            f"✅ Опубликовано!\n\n🎮 Игра: {data['game_name']}\n🔑 Ключ: {key}\n🔗 Ссылка: {bot_link}"
        )
        
        del temp_data[user_id]
        
    except Exception as e:
        bot.send_message(
            int(user_id),
            f"❌ Ошибка: {str(e)}"
        )

# ============= ЗАПУСК =============
print("=" * 50)
print("🤖 Бот запущен!")
print(f"📦 Скриптов: {len(scripts_db)}")
print(f"📅 Запланировано: {len(schedule_db)}")
print("=" * 50)

try:
    bot.polling(none_stop=True, skip_pending=True)
except Exception as e:
    print(f"❌ Ошибка: {e}")