<?php
if(!defined('OSTCLIENTINC') || !is_object($ticket)) die('Kwaheri rafiki!'); //Say bye to our friend..

//Please customize the message below to fit your organization speak!
?>
<div>
    <?if($errors['err']) {?>
        <p align="center" id="errormessage"><?=$errors['err']?></p>
    <?}elseif($msg) {?>
        <p align="center" id="infomessage"><?=$msg?></p>
    <?}elseif($warn) {?>
        <p id="warnmessage"><?=$warn?></p>
    <?}?>
</div>
<div style="margin:5px 100px 100px 0;">
    <?=Format::htmlchars($ticket->getName())?>,<br>
    <p>
     Il ticket è stato creato, verrà ricontattato se necessario al più presto</p>
          
    <?if($cfg->autoRespONNewTicket()){ ?>
    <p>Ti è anche stata inviata un email a <b><?=$ticket->getEmail()?></b> con i dati appena inseriti
    </p>
    <p>
     Per aggiungere o modificare informazioni segui le istruzioni nella mail.
    </p>
    <?}?>
    <p>Evoluzioni Tecnologiche Support Team </p>
</div>
<?
unset($_POST); //clear to avoid re-posting on back button??
?>
