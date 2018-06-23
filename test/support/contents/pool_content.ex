defmodule Stats.Contents.PoolContent do
  def raw_content do
    {:ok,
     """
     <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
     <html>
     <head>
     <title>Balso&#353;anas rezult&#257;ti</title><meta name = "format-detection" content = "telephone=no" />
     <link rel="shortcut icon" href="/LIVS12/SaeimaLIVS2_DK.nsf/mainicon.ico" type="image/x-icon" />
     <link rel="stylesheet" href="../WEB_VotesStyles.css?ReadForm" />
     <script language="JavaScript" type="text/javascript">
     <!--
     function redrawMainTable(lst){
     	var totalResults=new Array();
     	totalResults["Par"]=0;
     	totalResults["Pret"]=0;
     	totalResults["Atturas"]=0;
     	var isOdd=Math.floor(lst.length/2)==lst.length/2;
     	var lines=Math.floor(lst.length/2)+(isOdd?0:1);

     	var res='<table class="mainInfoTable" border="0" cellspacing="0" cellpadding="0">';
     	res+='<tr class="headRow">';
     	res+='<td width=10>&nbsp;</td>';
     	res+='<td width=185>V&#257;rds</td>';
     	res+='<td width=90>Frakcija</td>';
     	res+='<td width=50>Balss</td>';
     	res+='<td width=15 class="emptyCell">&nbsp;</td>';
     	res+='<td width=10>&nbsp;</td>';
     	res+='<td width=185>V&#257;rds</td>';
     	res+='<td width=90>Frakcija</td>';
     	res+='<td width=50>Balss</td>';
     	res+="</tr>";

     	var elms=lst[0].split("¤").length;
     	for(var i=0; i<lines; i++){
     		var arr=lst[i].split("¤");
     		res+='<tr class="c1">';
     		for(var j=0; j<elms; j++){
     			res+='<td>'+decodeURI(arr[j])+'</td>';
     		}

     		if(!totalResults[decodeURI(arr[elms-1])]) totalResults[decodeURI(arr[elms-1])]=0;
     		totalResults[decodeURI(arr[elms-1])]++;

     		res+='<td class="emptyCell">&nbsp</td>';
     		var arr=(lst[i+lines])?lst[i+lines].split("¤"):["&nbsp;","&nbsp;","&nbsp;","&nbsp;"];		// last empty line
     		for(var j=0; j<elms; j++){
     			res+='<td>'+decodeURI(arr[j])+'</td>';
     		}
     		res+"</tr>";
     		if(lst[i+lines]){
     				if(!totalResults[decodeURI(arr[elms-1])]) totalResults[decodeURI(arr[elms-1])]=0;
     				totalResults[decodeURI(arr[elms-1])]++;
     		}
     	}
     	res+="</table>"
     	var obj=document.getElementById("mainContentHolder");
     	if(obj) obj.innerHTML=res

     	/*
     	res="";
     	obj=document.getElementById("totalResultRow");
     	if(obj){
     		res+="Par: "+totalResults["Par"]+" &nbsp;&nbsp;&nbsp;";
     		res+="Pret: "+totalResults["Pret"]+" &nbsp;&nbsp;&nbsp;";
     		res+="Atturas: "+totalResults["Atturas"]+" &nbsp;&nbsp;&nbsp;";
     		obj.innerHTML=res;
     	}
     	*/
     	if(lst[0]!="1.¤¤¤" && lst[0]!=""){
     		obj=document.getElementById("showFullInfo");
     		if(obj) obj.style.display="block";
     	}
     }
     function redrawMainTableShort(lst){

     	var res='<table class="mainInfoTable" border="0" cellspacing="0" cellpadding="0">';
     	res+='<tr class="headRow">';
     	res+='<td width=10>&nbsp;</td>';
     	res+='<td width=450>Kandid&#257;ts</td>';
     	res+='<td width=80>Par</td>';
     	res+='<td width=80>Pret</td>';
     	res+"</tr>";

     	var elms=lst[0].split("¤").length;
     	for(var i=0; i<lst.length; i++){
     		var arr=lst[i].split("¤");
     		res+='<tr class="c1">';
     		for(var j=0; j<elms; j++){
     			res+='<td>'+decodeURI(arr[j])+'</td>';
     		}
     		res+"</tr>";
     	}
     	res+="</table>"

     	var obj=document.getElementById("mainContentHolder");
     	if(obj) obj.innerHTML=res

     	if(lst[0]!="1.¤¤¤" && lst[0]!=""){
     		obj=document.getElementById("showFullInfo");
     		if(obj) obj.style.display="block";
     	}
     }

     function relocateMe(id, tm){
     	var lc=window.location.href;
     	if(!tm){
     		lc=lc.toLowerCase().split(".nsf/0/")[0]+".nsf/0/"+id+"?OpenDocument"
     	}else{
     		lc=lc.toLowerCase().split(".nsf/")[0]+".nsf/Voting?ReadForm&parentID="+id+"&tm="+tm;
     	}
     	window.location=lc;
     }
     // -->
     </script>

     <script language="JavaScript" type="text/javascript">
     <!--
     document._domino_target = "_self";
     function _doClick(v, o, t) {
       var returnValue = false;
       var url="/LIVS12/SaeimaLIVS2_DK.nsf/0/896b8b28ce7de8ddc22582890078d9dd?OpenDocument&Click=" + v;
       if (o.href != null) {
         o.href = url;
         returnValue = true;
       } else {
         if (t == null)
           t = document._domino_target;
         window.open(url, t);
       }
       return returnValue;
     }
     // -->
     </script>
     </head>
     <body text="#000000" bgcolor="#FFFFFF" rightmargin="0"  leftmargin="0" marginheight="0" marginwidth="0" topmargin="0"  onload="window.focus()">

     <form onsubmit="return false;
     return true;" action="">
     <div style="display:none">
     	<!-- CACHE FLAG -->
     	readedFromCache=none XML
     </div>
     <script language="javascript">
     var voteFullListByNames=["1.¤Abu%20Meri%20Hosams¤VIENOT&#298;BA¤Atturas","2.¤Adamovi%C4%8Ds%20Aldis¤VIENOT&#298;BA¤Atturas","3.¤%C4%80damsons%20J%C4%81nis¤SASKA&#325;A ¤Atturas","4.¤Balodis%20Ringolds¤ ¤Par","5.¤Bar%C4%8Da%20Aija¤ZZS¤Atturas","6.¤B%C4%93rzi%C5%86%C5%A1%20Andris¤ZZS¤Atturas","7.¤B%C4%93rzi%C5%86%C5%A1%20Gaidis¤VL-TB/LNNK¤Par","8.¤Bo%C4%B7is%20Inesis¤ ¤Atturas","9.¤Brigmanis%20Augusts¤ZZS¤Atturas","10.¤Br%C4%ABvers%20Ivars¤LRA¤Pret","11.¤Bui%C4%B7is%20Andris¤VL-TB/LNNK¤Par","12.¤Cilevi%C4%8Ds%20Boriss¤SASKA&#325;A ¤Atturas","13.¤Cilinskis%20Ein%C4%81rs¤VL-TB/LNNK¤Par","14.¤%C4%8Cig%C4%81ne%20Lolita¤VIENOT&#298;BA¤Nebalsoja","15.¤Dambe%20Valters¤ZZS¤Atturas","16.¤Daudze%20Gundars¤ZZS¤Atturas","17.¤D%C4%81lderis%20Ints¤VIENOT&#298;BA¤Atturas","18.¤Dombrava%20J%C4%81nis¤VL-TB/LNNK¤Par","19.¤Gustovskis%20Artis¤VIENOT&#298;BA¤Atturas","20.¤Harju%20Astr%C4%ABda¤VIENOT&#298;BA¤Atturas","21.¤Jakimovs%20Aleksandrs¤SASKA&#325;A ¤Atturas","22.¤Jansons%20Ritvars¤VL-TB/LNNK¤Par","23.¤Judins%20Andrejs¤VIENOT&#298;BA¤Atturas","24.¤Kaimi%C5%86%C5%A1%20Artuss¤ ¤Par","25.¤Kalni%C5%86%C5%A1%20Guntis¤ZZS¤Atturas","26.¤Kalni%C5%86%C5%A1%20Oj%C4%81rs%20%C4%92riks¤VIENOT&#298;BA¤Atturas","27.¤Kalnozols%20Valdis¤ZZS¤Atturas","28.¤Kir%C5%A1teins%20Aleksandrs¤VL-TB/LNNK¤Par","29.¤Kleinberga%20Nellija¤LRA¤Pret","30.¤Klementjevs%20Andrejs¤SASKA&#325;A ¤Atturas","31.¤K%C4%BCavi%C5%86%C5%A1%20Askolds¤ZZS¤Atturas","32.¤Kr%C4%93sli%C5%86%C5%A1%20K%C4%81rlis¤VL-TB/LNNK¤Par","33.¤Kr%C5%ABmi%C5%86%C5%A1%20Varis¤LRA¤Pret","34.¤Kurs%C4%ABte-Pakule%20Jan%C4%ABna¤VL-TB/LNNK¤Par","35.¤K%C5%ABtris%20Gun%C4%81rs¤ ¤Par","36.¤Laiz%C4%81ne%20Inese¤VL-TB/LNNK¤Par","37.¤Latkovskis%20Ainars¤VIENOT&#298;BA¤Atturas","38.¤Latkovskis%20Ilm%C4%81rs¤ ¤Par","39.¤Leji%C5%86%C5%A1%20Atis¤VIENOT&#298;BA¤Atturas","40.¤L%C4%ABbi%C5%86a-Egnere%20Inese¤VIENOT&#298;BA¤Atturas","41.¤Mat%C4%ABss%20Anrijs¤VIENOT&#298;BA¤Atturas","42.¤Meija%20Aivars¤ ¤Atturas","43.¤Melgailis%20Rihards¤LRA¤Pret","44.¤Me%C5%BEulis%20Ain%C4%81rs¤ZZS¤Atturas","45.¤Mirskis%20Sergejs¤SASKA&#325;A ¤Atturas","46.¤M%C5%ABrniece%20In%C4%81ra¤VL-TB/LNNK¤Par","47.¤Naudi%C5%86%C5%A1%20Rom%C4%81ns¤VL-TB/LNNK¤Par","48.¤Nikonovs%20Vladimirs¤SASKA&#325;A ¤Atturas","49.¤Orlovs%20Vit%C4%81lijs¤SASKA&#325;A ¤Atturas","50.¤Par%C4%81dnieks%20Imants¤VL-TB/LNNK¤Par","51.¤Pimenovs%20Igors¤SASKA&#325;A ¤Pret","52.¤Potapkins%20Sergejs¤SASKA&#325;A ¤Atturas","53.¤Rasmanis%20Artis¤ZZS¤Atturas","54.¤Ra%C5%BEuks%20Romualds¤VIENOT&#298;BA¤Atturas","55.¤Ribakovs%20Ivans¤SASKA&#325;A ¤Atturas","56.¤Rubiks%20Art%C5%ABrs¤SASKA&#325;A ¤Atturas","57.¤Rubiks%20Raimonds¤SASKA&#325;A ¤Atturas","58.¤Ruks%20J%C4%81nis¤LRA¤Pret","59.¤R%C4%ABbena%20Inguna¤VL-TB/LNNK¤Par","60.¤Ser%C5%BEants%20K%C4%81rlis¤ZZS¤Atturas","61.¤Sili%C5%86%C5%A1%20Andris¤ZZS¤Atturas","62.¤Skuji%C5%86%C5%A1%20Valdis¤ZZS¤Atturas","63.¤Smilt%C4%93ns%20Edvards¤ ¤Atturas","64.¤Stepa%C5%86enko%20J%C5%ABlija¤SASKA&#325;A ¤Atturas","65.¤Straujuma%20Laimdota¤VIENOT&#298;BA¤Atturas","66.¤Sudraba%20Inguna¤ ¤Nebalsoja","67.¤%C5%A0ics%20M%C4%81rti%C5%86%C5%A1¤LRA¤Pret","68.¤%C5%A0imfa%20Silvija¤ ¤Pret","69.¤%C5%A0nore%20Edv%C4%ABns¤VL-TB/LNNK¤Par","70.¤%C5%A0ulcs%20Juris¤VIENOT&#298;BA¤Atturas","71.¤Tretjaka%20Zenta¤SASKA&#325;A ¤Atturas","72.¤Tutins%20J%C4%81nis¤SASKA&#325;A ¤Atturas","73.¤Upenieks%20J%C4%81nis¤VIENOT&#298;BA¤Atturas","74.¤Urbanovi%C4%8Ds%20J%C4%81nis¤SASKA&#325;A ¤Atturas","75.¤Valainis%20Viktors¤ ¤Atturas","76.¤Vi%C4%BCums%20Juris¤LRA¤Pret","77.¤Vuc%C4%81ns%20J%C4%81nis¤ZZS¤Atturas","78.¤Zari%C5%86%C5%A1%20Ivars¤SASKA&#325;A ¤Atturas","79.¤Zem%C4%BCinskis%20Mihails¤SASKA&#325;A ¤Atturas","80.¤Zujevs%20Igors¤SASKA&#325;A ¤Atturas"];
     var voteFullListByResult=["&nbsp;¤<b>PAR:&nbsp;&nbsp;18</b>¤&nbsp;¤&nbsp;","1.¤Ringolds%20Balodis¤ ¤Par","2.¤Gaidis%20B%C4%93rzi%C5%86%C5%A1¤VL-TB/LNNK¤Par","3.¤Andris%20Bui%C4%B7is¤VL-TB/LNNK¤Par","4.¤Ein%C4%81rs%20Cilinskis¤VL-TB/LNNK¤Par","5.¤J%C4%81nis%20Dombrava¤VL-TB/LNNK¤Par","6.¤Ritvars%20Jansons¤VL-TB/LNNK¤Par","7.¤Artuss%20Kaimi%C5%86%C5%A1¤ ¤Par","8.¤Aleksandrs%20Kir%C5%A1teins¤VL-TB/LNNK¤Par","9.¤K%C4%81rlis%20Kr%C4%93sli%C5%86%C5%A1¤VL-TB/LNNK¤Par","10.¤Jan%C4%ABna%20Kurs%C4%ABte-Pakule¤VL-TB/LNNK¤Par","11.¤Gun%C4%81rs%20K%C5%ABtris¤ ¤Par","12.¤Inese%20Laiz%C4%81ne¤VL-TB/LNNK¤Par","13.¤Ilm%C4%81rs%20Latkovskis¤ ¤Par","14.¤In%C4%81ra%20M%C5%ABrniece¤VL-TB/LNNK¤Par","15.¤Rom%C4%81ns%20Naudi%C5%86%C5%A1¤VL-TB/LNNK¤Par","16.¤Imants%20Par%C4%81dnieks¤VL-TB/LNNK¤Par","17.¤Inguna%20R%C4%ABbena¤VL-TB/LNNK¤Par","18.¤Edv%C4%ABns%20%C5%A0nore¤VL-TB/LNNK¤Par","&nbsp;¤<b>PRET:&nbsp;&nbsp;9</b>¤&nbsp;¤&nbsp;","1.¤Ivars%20Br%C4%ABvers¤LRA¤Pret","2.¤Nellija%20Kleinberga¤LRA¤Pret","3.¤Varis%20Kr%C5%ABmi%C5%86%C5%A1¤LRA¤Pret","4.¤Rihards%20Melgailis¤LRA¤Pret","5.¤Igors%20Pimenovs¤SASKA&#325;A ¤Pret","6.¤J%C4%81nis%20Ruks¤LRA¤Pret","7.¤M%C4%81rti%C5%86%C5%A1%20%C5%A0ics¤LRA¤Pret","8.¤Silvija%20%C5%A0imfa¤ ¤Pret","9.¤Juris%20Vi%C4%BCums¤LRA¤Pret","&nbsp;¤<b>ATTURAS:&nbsp;&nbsp;51</b>¤&nbsp;¤&nbsp;","1.¤Hosams%20Abu%20Meri¤VIENOT&#298;BA¤Atturas","2.¤Aldis%20Adamovi%C4%8Ds¤VIENOT&#298;BA¤Atturas","3.¤J%C4%81nis%20%C4%80damsons¤SASKA&#325;A ¤Atturas","4.¤Aija%20Bar%C4%8Da¤ZZS¤Atturas","5.¤Andris%20B%C4%93rzi%C5%86%C5%A1¤ZZS¤Atturas","6.¤Inesis%20Bo%C4%B7is¤ ¤Atturas","7.¤Augusts%20Brigmanis¤ZZS¤Atturas","8.¤Boriss%20Cilevi%C4%8Ds¤SASKA&#325;A ¤Atturas","9.¤Valters%20Dambe¤ZZS¤Atturas","10.¤Gundars%20Daudze¤ZZS¤Atturas","11.¤Ints%20D%C4%81lderis¤VIENOT&#298;BA¤Atturas","12.¤Artis%20Gustovskis¤VIENOT&#298;BA¤Atturas","13.¤Astr%C4%ABda%20Harju¤VIENOT&#298;BA¤Atturas","14.¤Aleksandrs%20Jakimovs¤SASKA&#325;A ¤Atturas","15.¤Andrejs%20Judins¤VIENOT&#298;BA¤Atturas","16.¤Guntis%20Kalni%C5%86%C5%A1¤ZZS¤Atturas","17.¤Oj%C4%81rs%20%C4%92riks%20Kalni%C5%86%C5%A1¤VIENOT&#298;BA¤Atturas","18.¤Valdis%20Kalnozols¤ZZS¤Atturas","19.¤Andrejs%20Klementjevs¤SASKA&#325;A ¤Atturas","20.¤Askolds%20K%C4%BCavi%C5%86%C5%A1¤ZZS¤Atturas","21.¤Ainars%20Latkovskis¤VIENOT&#298;BA¤Atturas","22.¤Atis%20Leji%C5%86%C5%A1¤VIENOT&#298;BA¤Atturas","23.¤Inese%20L%C4%ABbi%C5%86a-Egnere¤VIENOT&#298;BA¤Atturas","24.¤Anrijs%20Mat%C4%ABss¤VIENOT&#298;BA¤Atturas","25.¤Aivars%20Meija¤ ¤Atturas","26.¤Ain%C4%81rs%20Me%C5%BEulis¤ZZS¤Atturas","27.¤Sergejs%20Mirskis¤SASKA&#325;A ¤Atturas","28.¤Vladimirs%20Nikonovs¤SASKA&#325;A ¤Atturas","29.¤Vit%C4%81lijs%20Orlovs¤SASKA&#325;A ¤Atturas","30.¤Sergejs%20Potapkins¤SASKA&#325;A ¤Atturas","31.¤Artis%20Rasmanis¤ZZS¤Atturas","32.¤Romualds%20Ra%C5%BEuks¤VIENOT&#298;BA¤Atturas","33.¤Ivans%20Ribakovs¤SASKA&#325;A ¤Atturas","34.¤Art%C5%ABrs%20Rubiks¤SASKA&#325;A ¤Atturas","35.¤Raimonds%20Rubiks¤SASKA&#325;A ¤Atturas","36.¤K%C4%81rlis%20Ser%C5%BEants¤ZZS¤Atturas","37.¤Andris%20Sili%C5%86%C5%A1¤ZZS¤Atturas","38.¤Valdis%20Skuji%C5%86%C5%A1¤ZZS¤Atturas","39.¤Edvards%20Smilt%C4%93ns¤ ¤Atturas","40.¤J%C5%ABlija%20Stepa%C5%86enko¤SASKA&#325;A ¤Atturas","41.¤Laimdota%20Straujuma¤VIENOT&#298;BA¤Atturas","42.¤Juris%20%C5%A0ulcs¤VIENOT&#298;BA¤Atturas","43.¤Zenta%20Tretjaka¤SASKA&#325;A ¤Atturas","44.¤J%C4%81nis%20Tutins¤SASKA&#325;A ¤Atturas","45.¤J%C4%81nis%20Upenieks¤VIENOT&#298;BA¤Atturas","46.¤J%C4%81nis%20Urbanovi%C4%8Ds¤SASKA&#325;A ¤Atturas","47.¤Viktors%20Valainis¤ ¤Atturas","48.¤J%C4%81nis%20Vuc%C4%81ns¤ZZS¤Atturas","49.¤Ivars%20Zari%C5%86%C5%A1¤SASKA&#325;A ¤Atturas","50.¤Mihails%20Zem%C4%BCinskis¤SASKA&#325;A ¤Atturas","51.¤Igors%20Zujevs¤SASKA&#325;A ¤Atturas","&nbsp;¤<b>NEBALSO:&nbsp;&nbsp;2</b>¤&nbsp;¤&nbsp;","1.¤Lolita%20%C4%8Cig%C4%81ne¤VIENOT&#298;BA¤Nebalsoja","2.¤Inguna%20Sudraba¤ ¤Nebalsoja"];
     var voteShortListByNames=[""];
     var dbPathLp=opener?opener.dbPathLp:"";
     var dbPathLm=opener?opener.dbPathLm:"";
     var IsActual="" ;
     var hideSend2Com=[];
     hideSend2Com['Noraid&#299;ts']=true;
     hideSend2Com['Atsaukts']=true;	//hideSend2Com
     </script>
     <div id="pb" class="printButton" >
     <a onclick="javascript:window.print()"><IMG SRC="/LIVS12/SaeimaLIVS2_DK.nsf//web_bigPrint.jpg" BORDER="0"><span style="vertical-align:top;height:18px;"> &nbsp;Druk&#257;t</span></a>
      &nbsp;
     <a onclick="javascript:window.close()"><IMG SRC="/LIVS12/SaeimaLIVS2_DK.nsf//web_bigClose.jpg" BORDER="0"><span style="vertical-align:top;height:18px;"> &nbsp;Aizv&#275;rt</span></a>
     </div>
     <div class="mainHolder">
     <table  class="mainVoteTable" border="0" cellspacing="0" cellpadding="0" width=100%><tr><td >
     <div class="formHead1"><span >Balso&#353;anas rezult&#257;ti </span> <span style="color:red;font-weight:normal;"></span></div>
     <div class="formHead3" id="totalResultRow">par 18, pret 9, atturas 51 &nbsp; </div><br>
     <div class="formHead2"><span style="width:120px;">Datums: </span><b>10/05/2018 09:03:08 </b></div>
     <div class="formHead2"><span style="width:120px;">Balso&#353;anas mot&#299;vs: </span><b>Par l&#275;muma projekta Par atbild&#299;g&#257;s komisijas mai&#326;u likumprojektam &#8220;Groz&#299;jums Priek&#353;v&#275;l&#275;&#353;anu a&#291;it&#257;cijas likum&#257;&#8221; (1165/Lp12) (718/Lm12) iek&#316;au&#353;anu Saeimas s&#275;des darba k&#257;rt&#299;b&#257;</b></div>
     <div id="showFullInfo" style="display:none">
     <div class="scrOnly" style="margin-top:5px;font-size:9pt;"><span class="formHead2">Grup&#275;t: </span>
     <input type=radio name="displayType" CHECKED  onclick="redrawMainTable(voteFullListByResult)">p&#275;c balsojuma rezult&#257;ta
     <input type=radio name="displayType" onclick="redrawMainTable(voteFullListByNames)">alfab&#275;tisk&#257; k&#257;rt&#299;b&#257;
     </div>
     <div id="mainContentHolder"></div>
     </div>
     </td></tr></table>
     <script language="javascript">
     redrawMainTable(voteFullListByResult)
     </script>
     <div style='font-style:italic;'></div>
     </div></form>
     </body>
     </html>
     """}
  end

  def found_votes(pool) do
    [
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Abu Meri Hosams"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Adamovičs Aldis"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Ādamsons Jānis"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Balodis Ringolds"},
        party: %Stats.Party{title: " "},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Barča Aija"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Bērziņš Andris"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Bērziņš Gaidis"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Boķis Inesis"},
        party: %Stats.Party{title: " "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Brigmanis Augusts"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Brīvers Ivars"},
        party: %Stats.Party{title: "LRA"},
        vote: "Pret"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Buiķis Andris"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Cilevičs Boriss"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Cilinskis Einārs"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Čigāne Lolita"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Nebalsoja"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Dambe Valters"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Daudze Gundars"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Dālderis Ints"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Dombrava Jānis"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Gustovskis Artis"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Harju Astrīda"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Jakimovs Aleksandrs"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Jansons Ritvars"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Judins Andrejs"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Kaimiņš Artuss"},
        party: %Stats.Party{title: " "},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Kalniņš Guntis"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Kalniņš Ojārs Ēriks"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Kalnozols Valdis"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Kiršteins Aleksandrs"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Kleinberga Nellija"},
        party: %Stats.Party{title: "LRA"},
        vote: "Pret"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Klementjevs Andrejs"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Kļaviņš Askolds"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Krēsliņš Kārlis"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Krūmiņš Varis"},
        party: %Stats.Party{title: "LRA"},
        vote: "Pret"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Kursīte-Pakule Janīna"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Kūtris Gunārs"},
        party: %Stats.Party{title: " "},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Laizāne Inese"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Latkovskis Ainars"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Latkovskis Ilmārs"},
        party: %Stats.Party{title: " "},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Lejiņš Atis"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Lībiņa-Egnere Inese"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Matīss Anrijs"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Meija Aivars"},
        party: %Stats.Party{title: " "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Melgailis Rihards"},
        party: %Stats.Party{title: "LRA"},
        vote: "Pret"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Mežulis Ainārs"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Mirskis Sergejs"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Mūrniece Ināra"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Naudiņš Romāns"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Nikonovs Vladimirs"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Orlovs Vitālijs"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Parādnieks Imants"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Pimenovs Igors"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Pret"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Potapkins Sergejs"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Rasmanis Artis"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Ražuks Romualds"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Ribakovs Ivans"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Rubiks Artūrs"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Rubiks Raimonds"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Ruks Jānis"},
        party: %Stats.Party{title: "LRA"},
        vote: "Pret"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Rībena Inguna"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Seržants Kārlis"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Siliņš Andris"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Skujiņš Valdis"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Smiltēns Edvards"},
        party: %Stats.Party{title: " "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Stepaņenko Jūlija"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Straujuma Laimdota"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Sudraba Inguna"},
        party: %Stats.Party{title: " "},
        vote: "Nebalsoja"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Šics Mārtiņš"},
        party: %Stats.Party{title: "LRA"},
        vote: "Pret"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Šimfa Silvija"},
        party: %Stats.Party{title: " "},
        vote: "Pret"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Šnore Edvīns"},
        party: %Stats.Party{title: "VL-TB/LNNK"},
        vote: "Par"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Šulcs Juris"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Tretjaka Zenta"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Tutins Jānis"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Upenieks Jānis"},
        party: %Stats.Party{title: "VIENOTĪBA"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Urbanovičs Jānis"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Valainis Viktors"},
        party: %Stats.Party{title: " "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Viļums Juris"},
        party: %Stats.Party{title: "LRA"},
        vote: "Pret"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Vucāns Jānis"},
        party: %Stats.Party{title: "ZZS"},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Zariņš Ivars"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Zemļinskis Mihails"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      ),
      Ecto.build_assoc(
        pool,
        :votes,
        politician: %Stats.Politician{name: "Zujevs Igors"},
        party: %Stats.Party{title: "SASKAŅA "},
        vote: "Atturas"
      )
    ]
  end
end
