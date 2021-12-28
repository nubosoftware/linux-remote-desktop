module.exports = {
    //activate desktop
    "desktopSignupEmailSubject": "Confirm Remote Desktop Signup",
    "desktopSignupEmailSubjectToAdmin": "Confirm Remote Desktop Signup for <%= first %> <%= last %> (<%= email %>)",
    "desktopSignupEmailBody": `
    Hi <%= first %> <%= last %>,

    You've recently been asked to sign up for remote desktop access with the following details:
    Email: <%= email %>
    Browser: <%= browser %>
    IP Address: <%= ip %>
    
    Please click the link below to confirm the remote desktop access:
    <%= link %>`,
    "desktopSignupEmailBodyHTML": `
    <p>Hi <%= first %> <%= last %>,</p>

    <p>You've recently been asked to sign up for remote desktop access with the following details:<br/>
    Email: <%= email %><br/>
    Browser: <%= browser %><br/>
    IP Address: <%= ip %></p>
    
    <p>Please click the link below to confirm the remote desktop access:<br/>
    <a href="<%= link %>">Confirm</a></p>`,
    "desktopSignupReqNotifTitle": "Remote Desktop Activation Request",
    "desktopSignupReqNotifText": "User <%= first %> <%= last %> (<%= email %>) has requested Remote Desktop activation",


    //unlock password desktop
    "desktopUnlockPasscodeEmailSubject": "Unlock Remote Desktop Password",
    "desktopUnlockPasscodeEmailSubjectToAdmin": "Unlock Remote Desktop Password for <%= first %> <%= last %> (<%= email %>)",
    "desktopUnlockPasscodeEmailBody": `
    Hi <%= first %> <%= last %>,

    Please click the link below to unlock your remote desktop password:
    <%= link %>`,
    "desktopUnlockPasscodeEmailBodyHTML": `
    <p>Hi <%= first %> <%= last %>,</p>
    
    <p>Please click the link below to unlock your remote desktop password:<br/>
    <a href="<%= link %>">Unlock</a></p>`,
    "desktopUnlockPasscodeNotifTitle": "Remote Desktop Password Locked",
    "desktopUnlockPasscodeNotifText": "Password locked for user <%= first %> <%= last %> (<%= email %>)",

    //reset passcode
    "desktopResetPasscodeEmailSubject": "Reset Remote Desktop Password",
    "desktopResetPasscodeEmailSubjectToAdmin": "Reset Remote Desktop Password for <%= first %> <%= last %> (<%= email %>)",
    "desktopResetPasscodeEmailBody": `
    Hi <%= first %> <%= last %>,

    You've recently been asked to reset your remote desktop password with the following details:
    Email: <%= email %>
    Browser: <%= browser %>
    IP Address: <%= ip %>
    
    Please click the link below to set a new password:
    <%= link %>`,
    "desktopResetPasscodeEmailBodyHTML": `
    <p>Hi <%= first %> <%= last %>,</p>

    <p>You've recently been asked to reset your remote desktop password with the following details:<br/>
    Email: <%= email %><br/>
    Browser: <%= browser %><br/>
    IP Address: <%= ip %></p>
    
    <p>Please click the link below to set a new password:<br/>
    <a href="<%= link %>">Reset Password</a></p>`,
    "desktopResetPasscodeNotifTitle": "Remote Desktop Password Reset Request",
    "desktopResetPasscodeNotifText": "User <%= first %> <%= last %> (<%= email %>) has requested a password reset",


    //activate
    "createPlayerEmailSubject": "Create a Player",
    "createPlayerEmailSubjectToAdmin": "Create a Player for %s %s",
    "createPlayerEmailBody": "Dear %s %s, \nClick the following link to connect to your working environment, and then continue working from your mobile device.\n\n%s\n\n- The Nubo Team",
    "createPlayerEmailBodyHTML": "<p>Dear %s %s,</p><p> \nClick the following link to connect to your working environment, and then continue working from your mobile device.</p>\n\n" + "<p><a href=\"%s\">%s %s – Player Activation</a></p>  \n\n<p>- The Nubo Team</p>",
    "activationReqNotifTitle": "Nubo Player Activation Request",
    "activationReqNotifText": "User %s %s (%s) has requested Player activation",

    //unlock passcode
    "unlockPasscodeEmailSubject": "Unlock Nubo Passcode",
    "unlockPasscodeEmailSubjectToAdmin": "Unlock Nubo Passcode for %s %s",
    "unlockPasscodeEmailBody": "Dear %s %s, \n Unlock your passcode, and then go to your Nubo app from your mobile device." + "\n\n- The Nubo Team",
    "unlockPasscodeEmailBodyHTML": "<p>Dear %s %s,</p><p> \n Click the following link to unlock your passcode, and then go to your Nubo app from your mobile device:</p>\n\n" + "<p><a href=\"%s\">" + "Unlock Passcode</a></p>  \n\n<p>- The Nubo Team</p>",
    "unlockPasscodeNotifTitle": "Nubo Player Password Locked",
    "unlockPasscodeNotifText": "Password locked for user %s %s (%s)",

    //reset passcode
    "resetPasscodeEmailSubject": "Reset Passcode",
    "resetPasscodeEmailSubjectToAdmin": "Reset Passcode for %s %s",
    "resetPasscodeEmailBody": "Dear %s %s, \nPlease click the following link to reset your passcode, and then continue working%s\n\n%s\n\n- The Nubo Team",
    "resetPasscodeEmailBodyHTML": "<p>Dear %s %s,</p><p> \nPlease click the following link to reset your passcode, and then continue working%s</p>\n\n" + "<p><a href=\"%s\">%s %s – Reset Passcode</a></p>  \n\n<p>- The Nubo Team</p>",
    "resetPasscodeNotifTitle": "Nubo Player Password Reset Request",
    "resetPasscodeNotifText": "User %s %s (%s) has requested a password reset",

    "activationNotifToDevice": "Your device has been activated!",


    // admin activation
    "adminActivationEmailSubject": "Administrator Login Verification",
    "adminActivationEmailBody": "Dear %s %s, \nClick the following link to activate your web based control panel login.\n\n%s\n\n- The Nubo Team",
    "adminActivationBodyHTML": "<p>Dear %s %s,</p><p> \nClick the following link to activate your web based control panel login.</p>\n\n" + "<p><a href=\"%s\">%s %s – Control Panel Activation</a></p>  \n\n<p>- The Nubo Team</p>",

    // admin reset
    "adminResetEmailSubject": "Reset Password",
    "adminResetEmailBody": "Dear %s %s, \nClick the following link to reset your password.\n\n%s\n\n- The Nubo Team",
    "adminResetBodyHTML": "<p>Dear %s %s,</p><p> \nClick the following link to reset your password.</p>\n\n" + "<p><a href=\"%s\">%s %s – Reset password</a></p>  \n\n<p>- The Nubo Team</p>",


    // otp
    "otpCode": "Your OTP code: %s",

    "adminDeviceActivated": "Your control panel activation request has been validated successfully!",
    "adminResetActivated": "Your reset password request has been validated successfully!",
    "adminTokenNotValid": "Your token has been expired. Please try again."
}
