global class sendEmailToUser_Cls
{
   webService static String sendEmail(String emailFinalTextApex,string descriptionFinalTextApex)
    {
       List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
       if(String.isNotBlank(emailFinalTextApex) && String.isNotBlank(descriptionFinalTextApex))
       {
           Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
           List<String> sendTo = new List<String>();
           sendTo.add(emailFinalTextApex);
           mail.setToAddresses(sendTo);
           mail.setSenderDisplayName('Official Bank of Nigeria');
           mail.setReplyTo('fgangana@cisco.com');
           mail.setHtmlBody(descriptionFinalTextApex);
           mails.add(mail);
           Messaging.sendEmail(mails);
           return 'Success: Mail has been sent';
        }else
       {
           return 'Error:Please fillout Email and Description fields';
       }
   }
}