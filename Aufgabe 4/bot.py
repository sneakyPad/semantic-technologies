from rivescript import RiveScript

rs = RiveScript()
rs.load_directory("./data/")
rs.sort_replies()

while True:
    msg = input("You> ")
    if msg == '/quit':
        quit()
    reply = rs.reply("localuser", msg)
    print ("Bot>",reply) 