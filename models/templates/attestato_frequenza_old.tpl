{* Smarty HTML 
@param
$data = Array(
	datetest
	titoloattestato
	durata
	cb_nome
	cb_cognome
	cb_datadinascita
	cb_luogodinascita
	cb_provinciadinascita
	cb_societa
	name
	dg
	logo
)
*}
{literal}
<style>
    #container {
       text-align:center;
    }
    #attestato {
        margin: 0 auto;
        text-align:center;
    }

    h1, h2 {
        text-align:center;
        color: navy;
        font-family: times;
    }

    h1 {
        font-size: 24pt;
    }
    h2 {
        font-size: 18pt;
    }
    p {
        color: #000;
        font-family: times;
        font-size: 14pt;
        text-align:center;
    }
    p.small {
        font-size: 10pt;
    }
    p.big {
        font-size: 16pt;
        text-align:right;
    }
</style>
{/literal}
<div id="container">
    <div id="attestato">
        <div style="text-align: center">
            <img width="100" src="components/com_gglms/models/libs/pdf/imgs/AttestatoHeader.png" /> 
        </div>

        <div>
            <h1>Attestato di Frequenza</h1>
            <p>
                Si attesta che
            </p>
            <h2>{$data.cb_cognome|capitalize} {$data.cb_nome|capitalize}</h2>
            <p>
                nata/o a {$data.cb_luogodinascita|capitalize} {if isset($data.cb_provinciadinascita)}({$data.cb_provinciadinascita}){/if}<br />
                il {$data.cb_datadinascita}
            </p>
            <p>
                ha frequentato in modalit&agrave; e-learning
            </p>
            <p>il corso</p>
            <h2>{$data.titoloattestato}</h2>
            <p>della durata di {$data.durata} ore</p>
            <p class="small">
                ai sensi dell'art.37,comma 1lettera a), del D.Lgs. 81/08<br />
                e dell'Accordo Conferenza Stato Regioni del 21 dicembre 2011
            </p>
            <p>
                terminato il {$data.datetest}
            </p>
        </div>

        <div>
            <p>
                IL RAPPRESENTANTE LEGALE DELL'ORGANIZZATORE<br />
                CISEF "Germana Gaslini"<br />
                Dott. Vincenzo Lorenzelli<br />
                <img width="200" src="components/com_gglms/models/libs/pdf/imgs/firma_lorenzelli.jpg" />
            </p>
        </div>
    </div>
</div>   
