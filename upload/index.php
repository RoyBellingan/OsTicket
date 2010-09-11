<?php
/*********************************************************************
    index.php

    Helpdesk landing page. Please customize it to fit your needs.

    Peter Rotich <peter@osticket.com>
    Copyright (c)  2006-2010 osTicket
    http://www.osticket.com

    Released under the GNU General Public License WITHOUT ANY WARRANTY.
    See LICENSE.TXT for details.

    vim: expandtab sw=4 ts=4 sts=4:
    $Id: $
**********************************************************************/
require('client.inc.php');
//We are only showing landing page to users who are not logged in.
if($thisclient && is_object($thisclient) && $thisclient->isValid()) {
    require('tickets.php');
    exit;
}


require(CLIENTINC_DIR.'header.inc.php');
?>
<div id="index">
<h1>Centro di supporto Evoluzioni Tecnologiche</h1>
<p class="big">
Al fine di velocizzare e offrire un controllo migliore sullo stato del servizio vi ricordiamo che ad ogni RICHIESTA di assistenza
viene assegnato un numero di riferimento, utilizzabile per seguire lo stato dell'assistenza online.<br>

I ticket non vengono mai cancellati, eventuali ticket errati se possibile son da segnalare per la chiusura con apposito ticket<br>

Un indirizzo email valido è richiesto per il corretto uso</p>
<hr />
<br />
<div class="lcol">
  <img src="./images/new_ticket_icon.jpg" width="48" height="48" align="left" style="padding-bottom:150px;">
  <h3>Apri un nuovo Ticket</h3>
  Per favore scegli un template e compilalo più possibile.<br>
  Se devi aggiornare un ticket gia esistente usa il form a destra.
  <br /><br />
  <form method="link" action="open.php">
  <input type="submit" class="button2" value="Open New Ticket">
  </form>
</div>
<div class="rcol">
  <img src="./images/ticket_status_icon.jpg" width="48" height="48" align="left" style="padding-bottom:150px;">
  <h3>Stato dei Ticket</h3>Viene fornito l'archivio completo.
  <br /><br />
  <form class="status_form" action="login.php" method="post">
    <fieldset>
      <label>Email:</label>
      <input type="text" name="lemail">
    </fieldset>
    <fieldset>
     <label>Ticket#:</label>
     <input type="text" name="lticket">
    </fieldset>
    <fieldset>
        <label>&nbsp;</label>
         <input type="submit" class="button2" value="Check Status">
    </fieldset>
  </form>
</div>
<div class="clear"></div>
<br />
</div>
<br />
<?require(CLIENTINC_DIR.'footer.inc.php'); ?>
