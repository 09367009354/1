do

function run(msg, matches)
local reply_id = msg['info']

local info = '🔰FirstName : '..msg.from.first_name..'\n\n'
..'🔰Id : '..msg.from.id..'\n'
..'🔰Username : @'..msg.from.username..'\n'
..'🔰Msg ID : '..msg.id..'\n'
..'🔰Your Msg : '..msg.text..'\n\n'
..'🔰Group Id : '..msg.to.id..'\n'
..'🔰Group name : '..msg.to.title..'\n'
..'🔰 Your phone : +'..msg.from.phone

reply_msg(reply_id, info, ok_cb, false)
end

return {
patterns = {
"^[!/#][Ii][Nn][Ff][Oo]"

},
run = run
}

end
