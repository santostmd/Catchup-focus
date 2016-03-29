# focus-tracker

## What is it dude?

So, this is me trying to build an app to help me track what I was doing

## What dude?

Did you ever find yourself in a work session or in a time that you are fully focused, working your ass and fingers off, pressing the keys with so much determination that even the ink of the keys started to dissapear and then... 

## Then what??

Then something happens (your mom calls you to dinner, your dad arrives with a fully loaded jar of Nutella, your girlfriend arrives home with that sexy skirt, your boyfriend tells you that he is arriving home early so that you two can... )!! **Yes, something happens!!** And you have to interrupt your focus and your work, so you can do something else that just emerged in you "to-do-list"!

You leave your poor computer alone, and then you do what you got to do so you can come back and continue to press the fuck off the ink in those keys to finish the work you were doing, but....

## But...??

Then you sit, and you ask yourself: ```"What the fuck was I doing??"```

---

##My Main Goal

So, this is a real problem to me. It happens a lot, and while I do not remember what was I doing, I go to facebook, reddit, hackernews... And 15 minutes later I remember what was I doing.
Well, not good enough for me.

So, my main goal is to develop an app that allows me to suspend/sleep my computer and ask for a message to show me latter, when I log in again

---

## So far, what have you done?

Well, I've found a  very good [point to start](https://github.com/taichino/PopupTest) (so, thank you a lot [taichino](https://github.com/taichino)!) and now I'm trying to execute a system call with sudo privileges.

The command should be something like this:
```shell
    sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText \" Your message goes here! \""
```

But I'm having troubles with this (well, some help would be... helpfull :v )