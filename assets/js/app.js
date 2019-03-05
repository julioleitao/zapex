import css from "../css/app.css"
import "phoenix_html"
import socket from "./socket"

var ul = document.getElementById('msg-list');
var name = document.getElementById('name');
var msg = document.getElementById('msg');

// "listen" for the [Enter] keypress event to send a message:
msg.addEventListener('keypress', function (event) {
    if (event.keyCode == 13 && msg.value.length > 0) { // don't sent empty msg.
        channel.push('shout', { // send the message to the server on "shout" channel
            name: name.value,     // get value of "name" of person sending the message
            message: msg.value    // get message text (value) from msg input field.
        });
        msg.value = '';         // reset the message input field for next message.
    }
});

var channel = socket.channel('room:lobby', {});

channel.on('shout', function (payload) {
    var li = document.createElement("li");
    var name = payload.name || 'guest';
    li.innerHTML = '<b>' + name + '</b>: ' + payload.message;
    ul.appendChild(li);
});

channel.join();
