/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["TLLG:",name player] hintC
	[
		parseText "<t color='#00FF00'>Hey there! Welcome to our custom Tanoa Life! brought to you by www.tllgaming.com</t><br/>
		1. Respect each other at all times
		<br/>
		2. <t color='#FF0000'>Make sure you have read the server rules!!!</t>
		<br/>
		<t color='#FF0000'>www.tllgaming.com</t>		
		<br/>
		Please join our teamspeak 3 <t color='#FFFF00'>tllgaming.com</t>
		<br/>
		website: tllgaming.com
		<br/>
		" 
	];