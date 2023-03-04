import 'package:twilio_flutter/twilio_flutter.dart';

class TwilioServices {
  TwilioFlutter twilioFlutter = TwilioFlutter(
      accountSid: "AC40c5aa71068752f3f2f9421b831c8b35", // found on console
      authToken: "b226169a88c295b181d15f1dd565fdb0", // found on console
      twilioNumber:
          "+18449311327" // trial phone number is the one from which the messages will be sent. It will probably be a USA phone number.
      );
   void sendSMS() {
     twilioFlutter.sendSMS(toNumber: "<Your verified phone number>", messageBody: 
    "Hello from Twilio");
   }
}
