<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of mailer
 *
 * @author Cornelius
  Class: singleton
 */
class mailer {

    private static $m_pInstance;

    public function __construct() {
        
    }

    public static function getInstance() {
        if (!self::$m_pInstance) {
            self::$m_pInstance = new mailer();
        }
        return self::$m_pInstance;
    }

	

		private function check_email($email) {

        return filter_var($email, FILTER_VALIDATE_EMAIL);
    }

    public function genericMail($body, $subject, $FROM,$to="ianq_cornel@yahoo.com") {
        if ($this->check_email($FROM)) {
            require_once 'Swift_ssl/swift_required.php';


            $transport = Swift_SmtpTransport::newInstance('ssl://smtp.gmail.com',465)
//            $transport = Swift_SmtpTransport::newInstance('mail.hidhut.com', 26)
//                    ->setUsername('testmail@hidhut.com')
//                    ->setPassword('%kBoTNLT_&+]');
                    ->setUsername('ianq.cornel91@gmail.com')
                    ->setPassword('bucuresti91');


            $mailer = Swift_Mailer::newInstance($transport);
            $message = Swift_Message::newInstance($subject)
                    ->setContentType("text/html")
                    ->setFrom(array($FROM => $FROM))
                    ->setTo(array($to))
//                    ->setTo(array("customersupport@hidhut.com"))
                    ->setBody($body);
            $mailer->send($message);
        } else {
            //invalid email
        }
    }

}

?>
