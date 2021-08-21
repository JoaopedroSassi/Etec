<?php

session_start();
$nome = $_POST["nome"];
$email = $_POST["email"];
$mensagem = $_POST["mensagem"];

require_once("PHPMailerAutoload.php");

$mail = new PHPMailer();
$mail->isSMTP();
$mail->Host = 'smtp.gmail.com';
$mail->Port = 465;
$mail->SMTPSecure ='ssl';
$mail->SMTPAuth = true;
$mail->Username = "napoleoimperio@gmail.com";
$mail->Password = "nicodeus";

$mail->setFrom("napoleoimperio@gmail.com", "Loja PHP e MySQL");
$mail->addAddress("napoleoimperio@gmail.com");
$mail->Subject = "Email de contato do site de história do Império Napoleônico";
$mail->msgHTML("<html>de: {$nome}<br/>email: {$email}<br/>mensagem: {$mensagem}</html>");
$mail->AltBody = "de: {$nome}\nemail:{$email}\nmensagem: {$mensagem}";

if($mail->send()) {
	$_SESSION["success"] = "Mensagem enviada com sucesso";
	header("Location: index.php#contatinho");
} else {
	$_SESSION["danger"] = "Erro ao enviar mensagem " . $mail->ErrorInfo;
	header("Location: index.php#contatinho");
}
die();


?>