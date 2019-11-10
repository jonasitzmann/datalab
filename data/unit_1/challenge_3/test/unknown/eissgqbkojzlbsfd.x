


<html>
<head>

<title>Brighton &amp; Hove Education Online: BHCC website for schools</title>





<!-- Brighton & Hove City Council - Education Online skin -->
<!-- Version 2.0 September 2003 -->
<!-- Technical enquiries: james.burton_at_brighton-hove.gov.uk -->
<META http-equiv="expire" content="0">
<META http-equiv="pragma" content="no-cache"> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="web/sites/education/page_display/may_03.css">
<style type="text/css" media="screen">
	@import url(page_display/may_03.css);
</style>
<link rel="SHORTCUT ICON" href="education/icon/favicon.ico" />
<link rel="stylesheet" type="text/css" href="web/sites/education/page_display/pageElementStyle.css">


<script language="JavaScript">

var isDOM = (document.getElementById ? true : false); 
var isIE4 = ((document.all && !isDOM) ? true : false);
var isIE = (navigator.appName.indexOf("Microsoft")==0 ? true : false);
var isNS4 = (document.layers ? true : false);
//alert(navigator.appName);

function getRef(id) {
	if (isDOM) return document.getElementById(id);
	if (isIE4) return document.all[id];
	if (isNS4) return document.layers[id];
}
function getSty(id) {
	return (isNS4 ? getRef(id) : getRef(id).style);
} 
// Hide timeout.
var popTimer = 0;
// Array showing highlighted menu items.
var litNow = new Array();

function popOver(menuNum, itemNum) {
	// hide select boxes
	if(isIE) toggleSelectBoxes('hide');
	clearTimeout(popTimer);
	hideAllBut(menuNum);
	litNow = getTree(menuNum, itemNum);
	changeCol(litNow, true);
	targetNum = menu[menuNum][itemNum].target;
	if (targetNum > 0) {
		thisX = parseInt(menu[menuNum][0].ref.left) + parseInt(menu[menuNum][itemNum].ref.left);
		thisY = parseInt(menu[menuNum][0].ref.top) + parseInt(menu[menuNum][itemNum].ref.top);
		
		var menuH = menu[targetNum].length * defLength;
		var menuW = 150; // hack
		var finalH = menuH+thisY;
		var finalW = menuW + thisX;
		var realHeight = (window.innerHeight) ? window.innerHeight : document.body.clientHeight;
		var realWidth = (window.innerWidth) ? window.innerWidth : document.body.clientWidth;
		var tempY  = (realHeight < finalH) ? parseInt(realHeight-(menuH + 10)) : parseInt(thisY + menu[targetNum][0].y);
		//document.searchForm.criteria.value = finalW
		var tempX;
		if(finalW>660 && finalW<790) {
			tempX = parseInt(thisX -135);
		} else if (finalW>790) {
			tempX = parseInt(thisX -50);
		} else {
			tempX = parseInt(thisX + menu[targetNum][0].x);
		}
		//var tempX = (finalW>= 700) ? parseInt(thisX -50) : parseInt(thisX + menu[targetNum][0].x);	// hack
		//var tempX = parseInt(thisX + menu[targetNum][0].x);	
		with (menu[targetNum][0].ref) {
			left = tempX;
			top = tempY;
			visibility = 'visible';
      	}

   }
}
function popOut(menuNum, itemNum) {
	// show select boxes
	if(isIE) toggleSelectBoxes('show');
	if ((menuNum == 0) && !menu[menuNum][itemNum].target) {
		hideAllBut(0);
	} else {
		popTimer = setTimeout('hideAllBut(0)', 500);
	}
}
function getTree(menuNum, itemNum) {

// Array index is the menu number. The contents are null (if that menu is not a parent)
// or the item number in that menu that is an ancestor (to light it up).
	itemArray = new Array(menu.length);

	while(1) {
		itemArray[menuNum] = itemNum;
		// If we've reached the top of the hierarchy, return.
		if (menuNum == 0) return itemArray;
		itemNum = menu[menuNum][0].parentItem;
		menuNum = menu[menuNum][0].parentMenu;
   }
}

// Pass an array and a boolean to specify colour change, true = over colour.
function changeCol(changeArray, isOver) {
	for (menuCount = 0; menuCount < changeArray.length; menuCount++) {
		if (changeArray[menuCount]) {
			newCol = isOver ? menu[menuCount][0].overCol : menu[menuCount][0].backCol;
			// Change the colours of the div/layer background.
			with (menu[menuCount][changeArray[menuCount]].ref) {
				if (isNS4) bgColor = newCol;
				else backgroundColor = newCol;
         	}
      	}
   }
}
function hideAllBut(menuNum) {
	var keepMenus = getTree(menuNum, 1);
	for (count = 0; count < menu.length; count++)
		if (!keepMenus[count])
		menu[count][0].ref.visibility = 'hidden';
	changeCol(litNow, false);
}
function toggleSelectBoxes(arg) {
	var n = document.getElementsByTagName('select');
	for(var i=0;i<n.length;i++) n[i].style.visibility = (arg=='hide') ? 'hidden' : 'visible';
}

// *** MENU CONSTRUCTION FUNCTIONS ***

function Menu(isVert, popInd, x, y, width, overCol, backCol, borderClass, textClass) {
	// True or false - a vertical menu?
	this.isVert = isVert;
	// The popout indicator used (if any) for this menu.
	this.popInd = popInd
	// Position and size settings.
	this.x = x;
	this.y = y;
	this.width = width;
	// Colours of menu and items.
	this.overCol = overCol;
	this.backCol = backCol;
	// The stylesheet class used for item borders and the text within items.
	this.borderClass = borderClass;
	this.textClass = textClass;
	// Parent menu and item numbers, indexed later.
	this.parentMenu = null;
	this.parentItem = null;
	// Reference to the object's style properties (set later).
	this.ref = null;
}

function Item(text, href, frame, length, spacing, target) {
	this.text = text;
	this.href = href;
	this.frame = frame;
	this.length = length;
	this.spacing = spacing;
	this.target = target;
	// Reference to the object's style properties (set later).
	this.ref = null;
}

function writeMenus() {
	if (!isDOM && !isIE4 && !isNS4) return;

	for (currMenu = 0; currMenu < menu.length; currMenu++) {
		with (menu[currMenu][0]) {
			// Variable for holding HTML for items and positions of next item.
			var str = '', itemX = 0, itemY = 0;
	
			// Remember, items start from 1 in the array (0 is menu object itself, above).
			// Also use properties of each item nested in the other with() for construction.
			for (currItem = 1; currItem < menu[currMenu].length; currItem++) {
				with (menu[currMenu][currItem]) {
					var itemID = 'menu' + currMenu + 'item' + currItem;
					//alert("trying to write item:"+itemID);
					// The width and height of the menu item - dependent on orientation!
					var w = (isVert ? width : length);
					var h = (isVert ? length : width);
		
					if (isDOM || isIE4) {
						str += '<span id="' + itemID + '" ';
						str += isVert ? 'class="sideContent"' : 'class="headerContent"';
						str+= ' style="position: absolute; left: ' + itemX + '; top: ' + itemY + ';';
						str += ' width: ' + w + '; visibility: inherit; ';
						if (backCol) str += 'background-color: ' + backCol + '; ';
						if (borderClass) str += 'border: 1px solid ' + borderClass + '; ';
						str += '"';
					}
					if (isNS4) {
						str += '<layer id="' + itemID + '" left="' + itemX + '" top="' + itemY + '" width="' +  w + '" height="' + h + '" visibility="inherit" ';
						if (backCol) str += 'bgcolor="' + backCol + '" ';
					}
					if (borderClass) str += 'class="' + borderClass + '" ';
			
					// Add mouseover handlers and finish div/layer.
					str += 'onMouseOver="popOver(' + currMenu + ',' + currItem + ')" onMouseOut="popOut(' + currMenu + ',' + currItem + ')">';
			
					str += '<span class="'+textClass+'" style="border:none;">';
					// Add a popout indicator.
					if (popInd && target > 0) str += ' <span class="rightText" style="padding-right:3px;">&gt;&gt;</span>';
					str += '<a href="' + href + '">' + text + '</a>';
					if (target > 0) {
						//alert("I am looking for: "+target);
						// Set target's parents to this menu item.
						menu[target][0].parentMenu = currMenu;
						menu[target][0].parentItem = currItem;
					
					}	
		
					str += '</span>';
					
					str += isNS4 ? '</layer>' : '</span>';
					if (isVert) {
						if (text.length > 26) spacing += 20;
						itemY += length + spacing;
					} else {
						itemX += length + spacing;
					}
				}
			}
			if (isDOM) {
				var newDiv = document.createElement('div');
				document.getElementsByTagName('body').item(0).appendChild(newDiv);
				newDiv.innerHTML = str;
				ref = newDiv.style;
				ref.position = 'absolute';
				ref.visibility = 'hidden';
			}
	
			// Insert a div tag to the end of the BODY with menu HTML in place for IE4.
			if (isIE4) {
				document.body.insertAdjacentHTML('beforeEnd', '<div id="menu' + currMenu + 'div" ' + 'style="position: absolute; visibility: hidden">' + str + '</div>');
				ref = getSty('menu' + currMenu + 'div');
			}
	
			// In NS4, create a reference to a new layer and write the items to it.
			if (isNS4) {
				ref = new Layer(0);
				ref.document.write(str);
				ref.document.close();
			}
	
			for (currItem = 1; currItem < menu[currMenu].length; currItem++) {
				itemName = 'menu' + currMenu + 'item' + currItem;
				if (isDOM || isIE4) menu[currMenu][currItem].ref = getSty(itemName);
				if (isNS4) menu[currMenu][currItem].ref = ref.document[itemName];
			}
		}
		with(menu[0][0]) {
			ref.left = x;
			ref.top = y;
			ref.visibility = 'visible';
		}
	} 
}

var menu = new Array();

var defOver = '#f8f8f8';
var defBack = '#cccccc';

// Default 'length' of menu items - item height if menu is vertical, width if horizontal.
var defLength = 23;

// Menu 0 is the special, 'root' menu from which everything else arises.
menu[0] = new Array();
// A non-vertical menu with a few different colours and no popout indicator, as an example.
// *** MOVE ROOT MENU AROUND HERE *** 
menu[0][0] = new Menu(false, '', 15, 60, 150, '', '', '', 'headerMenuItem');


	topLevel_num = 17;


	//SECTION
	
		 
		menu[0][1] = new Item('News', 'index.cfm?request=a301', '', 80, 5, 1);
			
		 // MENUITEMS 
	
		menu[1] = new Array();
		menu[1][0] = new Menu(true,'<', 5, 15, 150, defOver, defBack, '#999', 'menuItem');
		
				// MENUITEM, NO SUBITEMS --->
				menu[1][1] = new Item('Schools Bulletin', 'index.cfm?request=b1115355', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[1][2] = new Item('Local News', 'index.cfm?request=b1000332', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[1][3] = new Item('DfES News', 'index.cfm?request=b1141382', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[1][4] = new Item('children first', 'index.cfm?request=b1101562', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[1][5] = new Item('Events', 'index.cfm?request=b1000327', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[1][6] = new Item('Forums', 'index.cfm?request=b1000371', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[1][7] = new Item('Key Documents', 'index.cfm?request=b1114609', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[1][8] = new Item('School Self Evaluation (SSE) to support the SEF', 'index.cfm?request=b1148135', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[1][9] = new Item('Quality, Schemes and Awards: A Guide for Schools', 'index.cfm?request=b1147904', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[1][10] = new Item('Child Protection', 'index.cfm?request=b1141864', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[1][11] = new Item('The Children and Young People\'s Plan', 'index.cfm?request=b1145944', '', defLength, 0, 0);
				

	//SECTION
	
		 
		menu[0][2] = new Item('Central Services', 'index.cfm?request=a302', '', 130, 5, 2);
			
		 // MENUITEMS 
	
		menu[2] = new Array();
		menu[2][0] = new Menu(true,'<', 5, 15, 150, defOver, defBack, '#999', 'menuItem');
		
				// MENUITEM, NO SUBITEMS --->
				menu[2][1] = new Item('Agency Staff', 'index.cfm?request=b1147484', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[2][2] = new Item('BHCC Phonebook', 'index.cfm?request=b1000328', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[2][3] = new Item('Children & Young People\'s Trust', 'index.cfm?request=b1147004', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[2][4] = new Item('Finance Handbook', 'index.cfm?request=b1129822', '', defLength, 0, 3);
				
				// SUBITEMS --->
				
				menu[3] = new Array();
				menu[3][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[3][1] = new Item('Model Scheme of Delegation', 'index.cfm?request=c1130002', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[2][5] = new Item('Governor Support', 'index.cfm?request=b1100140', '', defLength, 0, 4);
				
				// SUBITEMS --->
				
				menu[4] = new Array();
				menu[4][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[4][1] = new Item('Contents', 'index.cfm?request=c1112861', '', defLength, 0, 0);
						
						menu[4][2] = new Item('Governor Support Team', 'index.cfm?request=c1129921', '', defLength, 0, 0);
						
						menu[4][3] = new Item('Copyright Licensing in Schools', 'index.cfm?request=c1160023', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[2][6] = new Item('Health & Safety', 'index.cfm?request=b1112506', '', defLength, 0, 5);
				
				// SUBITEMS --->
				
				menu[5] = new Array();
				menu[5][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[5][1] = new Item('News', 'index.cfm?request=c1112604', '', defLength, 0, 0);
						
						menu[5][2] = new Item('Infectious (Communicable) Diseases Policy', 'index.cfm?request=c1138801', '', defLength, 0, 0);
						
						menu[5][3] = new Item('Stress', 'index.cfm?request=c1148266', '', defLength, 0, 0);
						
						menu[5][4] = new Item('Policies & Standards', 'index.cfm?request=c1148265', '', defLength, 0, 0);
						
						menu[5][5] = new Item('Legionella', 'index.cfm?request=c1148267', '', defLength, 0, 0);
						
						menu[5][6] = new Item('Work Experience', 'index.cfm?request=c1127122', '', defLength, 0, 0);
						
						menu[5][7] = new Item('Health & Safety Advisor for your school', 'index.cfm?request=c1125801', '', defLength, 0, 0);
						
						menu[5][8] = new Item('Asbestos', 'index.cfm?request=c1125783', '', defLength, 0, 0);
						
						menu[5][9] = new Item('Water Coolers', 'index.cfm?request=c1148268', '', defLength, 0, 0);
						
						menu[5][10] = new Item('Forms and Documentation', 'index.cfm?request=c1112605', '', defLength, 0, 0);
						
						menu[5][11] = new Item('Offsites Visits Policy Jan 2005', 'index.cfm?request=c1150963', '', defLength, 0, 0);
						
						menu[5][12] = new Item('Offsite Visits', 'index.cfm?request=c1120944', '', defLength, 0, 0);
						
						menu[5][13] = new Item('Risk Assessment', 'index.cfm?request=c1125802', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[2][7] = new Item('Human Resources', 'index.cfm?request=b1000376', '', defLength, 0, 6);
				
				// SUBITEMS --->
				
				menu[6] = new Array();
				menu[6][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[6][1] = new Item('Personnel Handbook', 'index.cfm?request=c1001596', '', defLength, 0, 0);
						
						menu[6][2] = new Item('Childcare Vouchers', 'index.cfm?request=c1160923', '', defLength, 0, 0);
						
						menu[6][3] = new Item('Useful Documents & Links', 'index.cfm?request=c1103042', '', defLength, 0, 0);
						
						menu[6][4] = new Item('Stationery and Forms', 'index.cfm?request=c1159243', '', defLength, 0, 0);
						
						menu[6][5] = new Item('Vacancy Bulletin', 'index.cfm?request=c1103021', '', defLength, 0, 0);
						
						menu[6][6] = new Item('Vacancy Bulletin - Placing an advert', 'index.cfm?request=c1160043', '', defLength, 0, 0);
						
						menu[6][7] = new Item('NJC Generic Job Descriptions', 'index.cfm?request=c1132661', '', defLength, 0, 0);
						
						menu[6][8] = new Item('Update on childcare vouchers', 'index.cfm?request=c1164614', '', defLength, 0, 0);
						
						menu[6][9] = new Item('Safer Recruitment', 'index.cfm?request=c1164791', '', defLength, 0, 0);
						
						menu[6][10] = new Item('HM Revenues & Customs', 'index.cfm?request=c1165051', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[2][8] = new Item('LEA Performance', 'index.cfm?request=b1115864', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[2][9] = new Item('Planning for the Future', 'index.cfm?request=b1118403', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[2][10] = new Item('Property & Design-Education', 'index.cfm?request=b1115683', '', defLength, 0, 7);
				
				// SUBITEMS --->
				
				menu[7] = new Array();
				menu[7][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[7][1] = new Item('News', 'index.cfm?request=c1142102', '', defLength, 0, 0);
						
						menu[7][2] = new Item('Sustainability/Energy Efficiency', 'index.cfm?request=c1144170', '', defLength, 0, 0);
						
						menu[7][3] = new Item('Funding & Allocations', 'index.cfm?request=c1119002', '', defLength, 0, 0);
						
						menu[7][4] = new Item('Approved contractors', 'index.cfm?request=c1143944', '', defLength, 0, 0);
						
						menu[7][5] = new Item('Measured Term Contracts', 'index.cfm?request=c1144724', '', defLength, 0, 0);
						
						menu[7][6] = new Item('NPS Consultants', 'index.cfm?request=c1146143', '', defLength, 0, 0);
						
						menu[7][7] = new Item('Asbestos', 'index.cfm?request=c1159223', '', defLength, 0, 0);
						
						menu[7][8] = new Item('Fire safety', 'index.cfm?request=c1163816', '', defLength, 0, 0);
						
						menu[7][9] = new Item('Legionella', 'index.cfm?request=c1162663', '', defLength, 0, 0);
						
						menu[7][10] = new Item('Contacts', 'index.cfm?request=c1127821', '', defLength, 0, 0);
						
						menu[7][11] = new Item('Our Key Documents', 'index.cfm?request=c1119445', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[2][11] = new Item('Traveller Education', 'index.cfm?request=b1136164', '', defLength, 0, 8);
				
				// SUBITEMS --->
				
				menu[8] = new Array();
				menu[8][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[8][1] = new Item('who are we', 'index.cfm?request=c1155503', '', defLength, 0, 0);
						
						menu[8][2] = new Item('how to contact us', 'index.cfm?request=c1136461', '', defLength, 0, 0);
						
						menu[8][3] = new Item('who are \'Travellers\'?', 'index.cfm?request=c1136462', '', defLength, 0, 0);
						
						menu[8][4] = new Item('why bother?', 'index.cfm?request=c1136481', '', defLength, 0, 0);
						
						menu[8][5] = new Item('Traveller Education for all', 'index.cfm?request=c1137221', '', defLength, 0, 0);
						
						menu[8][6] = new Item('legislation', 'index.cfm?request=c1137101', '', defLength, 0, 0);
						
						menu[8][7] = new Item('support available', 'index.cfm?request=c1137161', '', defLength, 0, 0);
						
						menu[8][8] = new Item('early years', 'index.cfm?request=c1150724', '', defLength, 0, 0);
						
						menu[8][9] = new Item('advice for inclusion', 'index.cfm?request=c1137164', '', defLength, 0, 0);
						
						menu[8][10] = new Item('resources', 'index.cfm?request=c1144844', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[2][12] = new Item('School Contacts and Performance', 'index.cfm?request=b1126862', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[2][13] = new Item('Schools Performance 97 - 01', 'index.cfm?request=b1000334', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[2][14] = new Item('School Admissions', 'index.cfm?request=b1137764', '', defLength, 0, 9);
				
				// SUBITEMS --->
				
				menu[9] = new Array();
				menu[9][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[9][1] = new Item('Voluntary Aided School Admissions', 'index.cfm?request=c1137884', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[2][15] = new Item('Services to Schools', 'index.cfm?request=b1148252', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[2][16] = new Item('Schools\' Finance', 'index.cfm?request=b1000375', '', defLength, 0, 10);
				
				// SUBITEMS --->
				
				menu[10] = new Array();
				menu[10][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[10][1] = new Item('An Introduction to the Schools\' Finance Team', 'index.cfm?request=c1133063', '', defLength, 0, 0);
						
						menu[10][2] = new Item('Monthly Financial Information', 'index.cfm?request=c1133062', '', defLength, 0, 0);
						
						menu[10][3] = new Item('Useful Documents', 'index.cfm?request=c1135841', '', defLength, 0, 0);
						
						menu[10][4] = new Item('FMS Manual', 'index.cfm?request=c1145849', '', defLength, 0, 0);
						
						menu[10][5] = new Item('Standards Fund', 'index.cfm?request=c1133102', '', defLength, 0, 0);
						
						menu[10][6] = new Item('Scheme for Financing Schools', 'index.cfm?request=c1133104', '', defLength, 0, 0);
						
						menu[10][7] = new Item('Section 52', 'index.cfm?request=c1137303', '', defLength, 0, 0);
						
						menu[10][8] = new Item('Schools\' Forum', 'index.cfm?request=c1133105', '', defLength, 0, 0);
						
						menu[10][9] = new Item('Training', 'index.cfm?request=c1133109', '', defLength, 0, 0);
						
						menu[10][10] = new Item(' Looking Ahead', 'index.cfm?request=c1160223', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[2][17] = new Item('Schools  ICT', 'index.cfm?request=b1102162', '', defLength, 0, 11);
				
				// SUBITEMS --->
				
				menu[11] = new Array();
				menu[11][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[11][1] = new Item('ICT Purchasing', 'index.cfm?request=c1155704', '', defLength, 0, 0);
						
						menu[11][2] = new Item('Latest News', 'index.cfm?request=c1131341', '', defLength, 0, 0);
						
						menu[11][3] = new Item('Training Courses Summer 2007', 'index.cfm?request=c1165133', '', defLength, 0, 0);
						
						menu[11][4] = new Item('SIMS Software Support', 'index.cfm?request=c1128101', '', defLength, 0, 0);
						
						menu[11][5] = new Item('Hardware & Technical Support', 'index.cfm?request=c1114361', '', defLength, 0, 0);
						
						menu[11][6] = new Item('Primary and Special ICT Group', 'index.cfm?request=c1114809', '', defLength, 0, 0);
						
						menu[11][7] = new Item('Schools ICT Team Information', 'index.cfm?request=c1103842', '', defLength, 0, 0);
						
						menu[11][8] = new Item('Services to Schools', 'index.cfm?request=c1112541', '', defLength, 0, 0);
						
						menu[11][9] = new Item('Schools ICT Newsletter', 'index.cfm?request=c1163543', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[2][18] = new Item('School Recruitment Partnership', 'index.cfm?request=b1000372', '', defLength, 0, 12);
				
				// SUBITEMS --->
				
				menu[12] = new Array();
				menu[12][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[12][1] = new Item('Using the Online Booking System', 'index.cfm?request=c1001411', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[2][19] = new Item('Schools\' Training', 'index.cfm?request=b1144124', '', defLength, 0, 13);
				
				// SUBITEMS --->
				
				menu[13] = new Array();
				menu[13][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[13][1] = new Item('What we do', 'index.cfm?request=c1145683', '', defLength, 0, 0);
						
						menu[13][2] = new Item('Who\'s who', 'index.cfm?request=c1145684', '', defLength, 0, 0);
						
						menu[13][3] = new Item('Latest news', 'index.cfm?request=c1145685', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[2][20] = new Item('School Visits', 'index.cfm?request=b1000335', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[2][21] = new Item('Software', 'index.cfm?request=b1000373', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[2][22] = new Item('Key Documents', 'index.cfm?request=b1000336', '', defLength, 0, 0);
				

	//SECTION
	
		 
		menu[0][3] = new Item('Classroom', 'index.cfm?request=a303', '', 80, 5, 14);
			
		 // MENUITEMS 
	
		menu[14] = new Array();
		menu[14][0] = new Menu(true,'<', 5, 15, 150, defOver, defBack, '#999', 'menuItem');
		
				// MENUITEM WITH SUBITEMS --->
				
				menu[14][1] = new Item('Whole School', 'index.cfm?request=b1115349', '', defLength, 0, 15);
				
				// SUBITEMS --->
				
				menu[15] = new Array();
				menu[15][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[15][1] = new Item('Autistic Spectrum Disorder Support Service', 'index.cfm?request=c1117762', '', defLength, 0, 0);
						
						menu[15][2] = new Item('Safe At School Survey', 'index.cfm?request=c1117764', '', defLength, 0, 0);
						
						menu[15][3] = new Item('School Travel Plans', 'index.cfm?request=c1115429', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[14][2] = new Item('Healthy Schools Team', 'index.cfm?request=b1126084', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[14][3] = new Item('Equalities', 'index.cfm?request=b1146484', '', defLength, 0, 16);
				
				// SUBITEMS --->
				
				menu[16] = new Array();
				menu[16][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[16][1] = new Item('Equalities', 'index.cfm?request=c1148147', '', defLength, 0, 0);
						
						menu[16][2] = new Item('Race Relations Amendment Act', 'index.cfm?request=c1163674', '', defLength, 0, 0);
						
						menu[16][3] = new Item('Reporting Racist Incidents', 'index.cfm?request=c1155867', '', defLength, 0, 0);
						
						menu[16][4] = new Item('The Disability Equality Duty', 'index.cfm?request=c1163672', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[14][4] = new Item('Early Years', 'index.cfm?request=b1114605', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[14][5] = new Item('key stages 1 and 2', 'index.cfm?request=b1100362', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[14][6] = new Item('key stage 3', 'index.cfm?request=b1000169', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[14][7] = new Item('key stage 4', 'index.cfm?request=b1104886', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[14][8] = new Item('Festival of Sport', 'index.cfm?request=b1145824', '', defLength, 0, 17);
				
				// SUBITEMS --->
				
				menu[17] = new Array();
				menu[17][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[17][1] = new Item('Cluster Festivals', 'index.cfm?request=c1152303', '', defLength, 0, 0);
						
						menu[17][2] = new Item('Sports & Activities', 'index.cfm?request=c1152304', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[14][9] = new Item('RE Schemes of Work', 'index.cfm?request=b1146144', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[14][10] = new Item('SACRE', 'index.cfm?request=b1144384', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[14][11] = new Item('Observing Good Classroom Practice', 'index.cfm?request=b1101342', '', defLength, 0, 18);
				
				// SUBITEMS --->
				
				menu[18] = new Array();
				menu[18][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[18][1] = new Item('Arranging Good Practice visits', 'index.cfm?request=c1103862', '', defLength, 0, 0);
						
						menu[18][2] = new Item('Guidelines for Visitors', 'index.cfm?request=c1103863', '', defLength, 0, 0);
						
						menu[18][3] = new Item('Guidelines for Managers', 'index.cfm?request=c1103864', '', defLength, 0, 0);
						
						menu[18][4] = new Item('Search & Book Lead Teachers', 'index.cfm?request=c1101482', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[14][12] = new Item('Key Documents', 'index.cfm?request=b1114610', '', defLength, 0, 0);
				

	//SECTION
	
		 
		menu[0][4] = new Item('Your Career', 'index.cfm?request=a304', '', 100, 5, 19);
			
		 // MENUITEMS 
	
		menu[19] = new Array();
		menu[19][0] = new Menu(true,'<', 5, 15, 150, defOver, defBack, '#999', 'menuItem');
		
				// MENUITEM WITH SUBITEMS --->
				
				menu[19][1] = new Item('Teaching Assistants and Support Staff', 'index.cfm?request=b1123962', '', defLength, 0, 20);
				
				// SUBITEMS --->
				
				menu[20] = new Array();
				menu[20][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[20][1] = new Item('Bursaries', 'index.cfm?request=c1152085', '', defLength, 0, 0);
						
						menu[20][2] = new Item('News', 'index.cfm?request=c1140901', '', defLength, 0, 0);
						
						menu[20][3] = new Item('Training and Development', 'index.cfm?request=c1141242', '', defLength, 0, 0);
						
						menu[20][4] = new Item('HLTAs', 'index.cfm?request=c1140902', '', defLength, 0, 0);
						
						menu[20][5] = new Item('HLTA Primary Routes', 'index.cfm?request=c1163689', '', defLength, 0, 0);
						
						menu[20][6] = new Item('HLTA Secondary Routes', 'index.cfm?request=c1163690', '', defLength, 0, 0);
						
						menu[20][7] = new Item('Working as a Teaching Assistant', 'index.cfm?request=c1143809', '', defLength, 0, 0);
						
						menu[20][8] = new Item('LEA Contacts', 'index.cfm?request=c1144524', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[19][2] = new Item('Gaining Qualified Teacher Status', 'index.cfm?request=b1144144', '', defLength, 0, 21);
				
				// SUBITEMS --->
				
				menu[21] = new Array();
				menu[21][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[21][1] = new Item('News', 'index.cfm?request=c1145803', '', defLength, 0, 0);
						
						menu[21][2] = new Item('Overseas Trained Teachers', 'index.cfm?request=c1149123', '', defLength, 0, 0);
						
						menu[21][3] = new Item('LEA Contacts', 'index.cfm?request=c1149144', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[19][3] = new Item('Newly Qualified Teachers', 'index.cfm?request=b1116205', '', defLength, 0, 22);
				
				// SUBITEMS --->
				
				menu[22] = new Array();
				menu[22][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[22][1] = new Item('News', 'index.cfm?request=c1145806', '', defLength, 0, 0);
						
						menu[22][2] = new Item('Training & Development', 'index.cfm?request=c1145807', '', defLength, 0, 0);
						
						menu[22][3] = new Item('Good Practice', 'index.cfm?request=c1145804', '', defLength, 0, 0);
						
						menu[22][4] = new Item('Key Documents', 'index.cfm?request=c1145823', '', defLength, 0, 0);
						
						menu[22][5] = new Item('Links', 'index.cfm?request=c1145809', '', defLength, 0, 0);
						
						menu[22][6] = new Item('FAQs', 'index.cfm?request=c1145810', '', defLength, 0, 0);
						
						menu[22][7] = new Item('LEA Contacts', 'index.cfm?request=c1145811', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[19][4] = new Item('International Professional Development', 'index.cfm?request=b1144166', '', defLength, 0, 23);
				
				// SUBITEMS --->
				
				menu[23] = new Array();
				menu[23][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[23][1] = new Item('News', 'index.cfm?request=c1145813', '', defLength, 0, 0);
						
						menu[23][2] = new Item('Headteachers\' Visits', 'index.cfm?request=c1145814', '', defLength, 0, 0);
						
						menu[23][3] = new Item('Socrates Programme', 'index.cfm?request=c1146904', '', defLength, 0, 0);
						
						menu[23][4] = new Item('Teachers\' Visits', 'index.cfm?request=c1145815', '', defLength, 0, 0);
						
						menu[23][5] = new Item('Links', 'index.cfm?request=c1149467', '', defLength, 0, 0);
						
						menu[23][6] = new Item('LEA Contacts', 'index.cfm?request=c1148906', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[19][5] = new Item('ASTs / Excellent Teacher Scheme', 'index.cfm?request=b1144168', '', defLength, 0, 24);
				
				// SUBITEMS --->
				
				menu[24] = new Array();
				menu[24][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[24][1] = new Item('News', 'index.cfm?request=c1145816', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[19][6] = new Item('CPD Co-ordinators', 'index.cfm?request=b1144127', '', defLength, 0, 25);
				
				// SUBITEMS --->
				
				menu[25] = new Array();
				menu[25][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[25][1] = new Item('News', 'index.cfm?request=c1145687', '', defLength, 0, 0);
						
						menu[25][2] = new Item('Training & Development', 'index.cfm?request=c1145690', '', defLength, 0, 0);
						
						menu[25][3] = new Item('Good Practice', 'index.cfm?request=c1145691', '', defLength, 0, 0);
						
						menu[25][4] = new Item('Links', 'index.cfm?request=c1145693', '', defLength, 0, 0);
						
						menu[25][5] = new Item('LEA Contacts', 'index.cfm?request=c1145695', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[19][7] = new Item('Leadership & Management', 'index.cfm?request=b1144128', '', defLength, 0, 26);
				
				// SUBITEMS --->
				
				menu[26] = new Array();
				menu[26][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[26][1] = new Item('News', 'index.cfm?request=c1145697', '', defLength, 0, 0);
						
						menu[26][2] = new Item('Training & Development', 'index.cfm?request=c1145698', '', defLength, 0, 0);
						
						menu[26][3] = new Item('Links', 'index.cfm?request=c1145701', '', defLength, 0, 0);
						
						menu[26][4] = new Item('LEA Contacts', 'index.cfm?request=c1145703', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[19][8] = new Item('School Workforce Reform & Remodelling', 'index.cfm?request=b1136507', '', defLength, 0, 27);
				
				// SUBITEMS --->
				
				menu[27] = new Array();
				menu[27][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[27][1] = new Item('Background', 'index.cfm?request=c1139627', '', defLength, 0, 0);
						
						menu[27][2] = new Item('News', 'index.cfm?request=c1144446', '', defLength, 0, 0);
						
						menu[27][3] = new Item('Training and Development', 'index.cfm?request=c1144447', '', defLength, 0, 0);
						
						menu[27][4] = new Item('Good Practice', 'index.cfm?request=c1144448', '', defLength, 0, 0);
						
						menu[27][5] = new Item('Key Documents', 'index.cfm?request=c1144449', '', defLength, 0, 0);
						
						menu[27][6] = new Item('Links', 'index.cfm?request=c1139642', '', defLength, 0, 0);
						
						menu[27][7] = new Item('FAQs', 'index.cfm?request=c1144463', '', defLength, 0, 0);
						
						menu[27][8] = new Item('LEA contacts', 'index.cfm?request=c1138405', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[19][9] = new Item('Learning Development Centre', 'index.cfm?request=b1117522', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[19][10] = new Item('Performance Threshold', 'index.cfm?request=b1115930', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[19][11] = new Item('Training Planner', 'index.cfm?request=b1000330', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[19][12] = new Item('Administer Training', 'index.cfm?request=b1103402', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[19][13] = new Item('Vacancies', 'index.cfm?request=b1000377', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[19][14] = new Item('Serving the city awards', 'index.cfm?request=b1147124', '', defLength, 0, 28);
				
				// SUBITEMS --->
				
				menu[28] = new Array();
				menu[28][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[28][1] = new Item('Serving the city photos', 'index.cfm?request=c1158823', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[19][15] = new Item('Key Documents', 'index.cfm?request=b1114611', '', defLength, 0, 0);
				

	//SECTION
	
		 
		menu[0][5] = new Item('Your Life', 'index.cfm?request=a305', '', 80, 5, 29);
			
		 // MENUITEMS 
	
		menu[29] = new Array();
		menu[29][0] = new Menu(true,'<', 5, 15, 150, defOver, defBack, '#999', 'menuItem');
		
				// MENUITEM WITH SUBITEMS --->
				
				menu[29][1] = new Item('Health and Wellbeing', 'index.cfm?request=b1114826', '', defLength, 0, 30);
				
				// SUBITEMS --->
				
				menu[30] = new Array();
				menu[30][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[30][1] = new Item('Counselling Service', 'index.cfm?request=c1114981', '', defLength, 0, 0);
						
						menu[30][2] = new Item('Teacherline', 'index.cfm?request=c1114982', '', defLength, 0, 0);
						
						menu[30][3] = new Item('Eyesight Tests', 'index.cfm?request=c1115001', '', defLength, 0, 0);
						
						menu[30][4] = new Item('Lone Working', 'index.cfm?request=c1114984', '', defLength, 0, 0);
						
						menu[30][5] = new Item('Personal Safety Courses', 'index.cfm?request=c1115002', '', defLength, 0, 0);
						
						menu[30][6] = new Item('Equal Opportunities', 'index.cfm?request=c1114991', '', defLength, 0, 0);
						
						menu[30][7] = new Item('NHS', 'index.cfm?request=c1114990', '', defLength, 0, 0);
						
						menu[30][8] = new Item('Natural Health', 'index.cfm?request=c1114998', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[29][2] = new Item('Your Unions', 'index.cfm?request=b1114827', '', defLength, 0, 31);
				
				// SUBITEMS --->
				
				menu[31] = new Array();
				menu[31][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[31][1] = new Item('Teachers & Lecturer Unions', 'index.cfm?request=c1114941', '', defLength, 0, 0);
						
						menu[31][2] = new Item('Support Staff & Youth Worker Unions', 'index.cfm?request=c1114942', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[29][3] = new Item('Parenting/Caring', 'index.cfm?request=b1114828', '', defLength, 0, 32);
				
				// SUBITEMS --->
				
				menu[32] = new Array();
				menu[32][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[32][1] = new Item('Maternity & Paternity', 'index.cfm?request=c1115022', '', defLength, 0, 0);
						
						menu[32][2] = new Item('Children\'s Information Service', 'index.cfm?request=c1115123', '', defLength, 0, 0);
						
						menu[32][3] = new Item('Caring for the Carers', 'index.cfm?request=c1115124', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[29][4] = new Item('Housing', 'index.cfm?request=b1115486', '', defLength, 0, 33);
				
				// SUBITEMS --->
				
				menu[33] = new Array();
				menu[33][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[33][1] = new Item('Key Worker Homes Initiative', 'index.cfm?request=c1115566', '', defLength, 0, 0);
						
						menu[33][2] = new Item('Teacher Letting Scheme', 'index.cfm?request=c1115567', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[29][5] = new Item('Staff Benefits', 'index.cfm?request=b1114823', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[29][6] = new Item('Leisure', 'index.cfm?request=b1114829', '', defLength, 0, 34);
				
				// SUBITEMS --->
				
				menu[34] = new Array();
				menu[34][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[34][1] = new Item('Adult Education', 'index.cfm?request=c1116006', '', defLength, 0, 0);
						
						menu[34][2] = new Item('Active for Life', 'index.cfm?request=c1116007', '', defLength, 0, 0);
						
				// MENUITEM WITH SUBITEMS --->
				
				menu[29][7] = new Item('Retirement', 'index.cfm?request=b1114686', '', defLength, 0, 35);
				
				// SUBITEMS --->
				
				menu[35] = new Array();
				menu[35][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[35][1] = new Item('Pensions for Teachers', 'index.cfm?request=c1114801', '', defLength, 0, 0);
						
						menu[35][2] = new Item('Pensions for Support Staff', 'index.cfm?request=c1114802', '', defLength, 0, 0);
						
						menu[35][3] = new Item('Planning for Retirement', 'index.cfm?request=c1114803', '', defLength, 0, 0);
						
						menu[35][4] = new Item('University for the Third Age', 'index.cfm?request=c1114804', '', defLength, 0, 0);
						
						menu[35][5] = new Item('Older People\'s Council', 'index.cfm?request=c1114812', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[29][8] = new Item('Life Events', 'index.cfm?request=b1114684', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[29][9] = new Item('Key Documents', 'index.cfm?request=b1114612', '', defLength, 0, 0);
				

	//SECTION
	
		 
		menu[0][6] = new Item('Your Community', 'index.cfm?request=a310', '', 130, 5, 36);
			
		 // MENUITEMS 
	
		menu[36] = new Array();
		menu[36][0] = new Menu(true,'<', 5, 15, 150, defOver, defBack, '#999', 'menuItem');
		
				// MENUITEM, NO SUBITEMS --->
				menu[36][1] = new Item('Extended Services In and Around Schools', 'index.cfm?request=b1114091', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[36][2] = new Item('Family Learning', 'index.cfm?request=b1139282', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[36][3] = new Item('Children\'s Fund', 'index.cfm?request=b1114802', '', defLength, 0, 37);
				
				// SUBITEMS --->
				
				menu[37] = new Array();
				menu[37][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[37][1] = new Item('The Children\'s Fund Team', 'index.cfm?request=c1114882', '', defLength, 0, 0);
						
						menu[37][2] = new Item('Family Group Conference Project', 'index.cfm?request=c1114883', '', defLength, 0, 0);
						
						menu[37][3] = new Item('Grants for Children\'s Groups', 'index.cfm?request=c1115042', '', defLength, 0, 0);
						
						menu[37][4] = new Item('Community Schools Programmes', 'index.cfm?request=c1115061', '', defLength, 0, 0);
						
						menu[37][5] = new Item('Community Services', 'index.cfm?request=c1115062', '', defLength, 0, 0);
						
						menu[37][6] = new Item('Children\'s Consultation', 'index.cfm?request=c1115063', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[36][4] = new Item('Children\'s Social Care', 'index.cfm?request=b1115303', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[36][5] = new Item('City Languages Forum', 'index.cfm?request=b1114358', '', defLength, 0, 38);
				
				// SUBITEMS --->
				
				menu[38] = new Array();
				menu[38][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[38][1] = new Item('Current News', 'index.cfm?request=c1117724', '', defLength, 0, 0);
						
						menu[38][2] = new Item('Connections & Resources', 'index.cfm?request=c1115023', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[36][6] = new Item('Family Mediation Service', 'index.cfm?request=b1118402', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[36][7] = new Item('Looked After Children', 'index.cfm?request=b1114422', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[36][8] = new Item('Parentsonline', 'index.cfm?request=b1117342', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[36][9] = new Item('ru-ok Substance Misuse Service', 'index.cfm?request=b1114437', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[36][10] = new Item('Young Carers Project', 'index.cfm?request=b1115125', '', defLength, 0, 39);
				
				// SUBITEMS --->
				
				menu[39] = new Array();
				menu[39][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[39][1] = new Item('Definition of Young Carers', 'index.cfm?request=c1115207', '', defLength, 0, 0);
						
						menu[39][2] = new Item('Case Study', 'index.cfm?request=c1115208', '', defLength, 0, 0);
						
						menu[39][3] = new Item('Recommendations for Education', 'index.cfm?request=c1115211', '', defLength, 0, 0);
						
						menu[39][4] = new Item('Supporting Young Carers in School', 'index.cfm?request=c1115212', '', defLength, 0, 0);
						
						menu[39][5] = new Item('Why Support Young Carers in School?', 'index.cfm?request=c1115213', '', defLength, 0, 0);
						
						menu[39][6] = new Item('Young Carers Project in School', 'index.cfm?request=c1115209', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[36][11] = new Item('Key Documents', 'index.cfm?request=b1114613', '', defLength, 0, 0);
				

	//SECTION
	

	//SECTION
	

	//SECTION
	

	//SECTION
	

	//SECTION
	

	//SECTION
	

	//SECTION
	
		 
		menu[0][7] = new Item('Help', 'index.cfm?request=a312', '', 80, 5, 40);
			
		 // MENUITEMS 
	
		menu[40] = new Array();
		menu[40][0] = new Menu(true,'<', 5, 15, 150, defOver, defBack, '#999', 'menuItem');
		
				// MENUITEM WITH SUBITEMS --->
				
				menu[40][1] = new Item('Redesign FAQ', 'index.cfm?request=b1115422', '', defLength, 0, 41);
				
				// SUBITEMS --->
				
				menu[41] = new Array();
				menu[41][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[41][1] = new Item('Personalisation and the extranet', 'index.cfm?request=c1115502', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[40][2] = new Item('Online queries', 'index.cfm?request=b1114904', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[40][3] = new Item('Site Map', 'index.cfm?request=b1000364', '', defLength, 0, 0);
				
				// MENUITEM WITH SUBITEMS --->
				
				menu[40][4] = new Item('Searching this site', 'index.cfm?request=b1000367', '', defLength, 0, 42);
				
				// SUBITEMS --->
				
				menu[42] = new Array();
				menu[42][0] = new Menu(true,'<', 140, 5, 150, defOver, defBack, '#999', 'menuItem');
				
						menu[42][1] = new Item('Refining your search', 'index.cfm?request=c1001390', '', defLength, 0, 0);
						
				// MENUITEM, NO SUBITEMS --->
				menu[40][5] = new Item('Add your content to this site', 'index.cfm?request=b1000370', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[40][6] = new Item('Add a Bulletin', 'index.cfm?request=b1115922', '', defLength, 0, 0);
				
				// MENUITEM, NO SUBITEMS --->
				menu[40][7] = new Item('Key Documents', 'index.cfm?request=b1114620', '', defLength, 0, 0);
				

	//SECTION
	

	//SECTION
	

	//SECTION
	

</script> <meta name="keywords" content=""> <meta name="Description" content=""> 

	<script language="JavaScript">
		function emailPassword(rq) {
			window.open('noFuseIndex.cfm?currentX=ed_noPass','','width=470,height=300');
		}
		function menuHighlight(menuitem){
			menuitem.style.backgroundColor = '#E7E7FF';
			menuitem.style.borderBottom = '1px solid #999999';
			menuitem.style.borderTop = '1px solid #999999';
		}
		function menuOff(menuitem){
			menuitem.style.backgroundColor = 'transparent';
			menuitem.style.borderBottom = '1px solid #ffffff';
			menuitem.style.borderTop = '1px solid #ffffff';
		}
		function MouseOn(img){
			img.parentNode.className="buttonwrapperon"; 
		}

		function MouseOff(img){
			img.parentNode.className="buttonwrapper"
		}
		
		function openList(n) {
			var listObj = getObj(n);
		
			if(listObj) {
				if(listObj.style.display != "block") {
					listObj.style.display = "block";
					listObj.parentElement.className = "folderOpen";
				}
				else {
					listObj.style.display = "none";
					listObj.parentElement.className = "folder";
				}
			}
		}
		
		function getObj(obj) {
			var objRef;
		
			if(document.getElementById) {
				objRef = document.getElementById(obj);
				return objRef;
			}
			else if(document.all) {
				objRef = eval("document.all." + obj);
				return objRef;
			}
			else return false;
		}
		
	</script>
	
</head>


<body onLoad="writeMenus();">

<!-- div displayed by non-css browsers -->

<p class="Upgrade">This page looks plain and unstyled because you're using an out of date browser. <b>You may already have a recent enough version of Microsoft Internet Explorer installed - try Start/Programs/Internet Explorer</b>. Otherwise, please upgrade to a browser that supports web standards as soon as possible. Staff within Brighton & Hove City Council can call the ICT Helpdesk on 292001. Staff within schools should contact their ICT Coordinator or ICT Support Staff. For anyone else, We recommend that you download and install a modern browser such as <a href='http://www.opera.com/download/' title="Download the free Opera Browser">Opera</a> or <a href='http://www.mozilla.org/' title="Download the free Mozilla browser">Mozilla</a></p>

<div id="Container"> 

 	<!-- header goes here -->
	
<table id="header" cellpadding="0" cellspacing="0">
<tr>
	<td height="70" width="274" align="left">
	
		<a href="index.cfm?request=a300"><img src="web/sites/education/images/furniture/eonline.gif" border="0" width="274" height="36" align="top"></a>
	
	</td>
		
	<td width="467" align="right" style="color:#fff;font-weight:bolder;vertical-align:middle;text-align:right;">
		<form name="searchForm" action="index.cfm?request=b1114384" onSubmit="if(this.criteria.value=='') {alert('don\'t forget to fill in the search form!');return false;}" method="post">
		<INPUT type="hidden" name="StartRow" value="1">
		<input type="hidden" name="MaxRows" value="10">
		<input type="hidden" name="searchMode" value="all">
		Search: <input type="text" name="criteria"> <input type="submit" value="go"></form>
			
	</td>
	<td width="6">
		<img src="web/sites/education/images/furniture/corner_tr.gif" height="6" width="6" align="top">
	</td>
</tr>
</table>	


	<!-- login panel goes here -->
	
	<table id="loginPanel" border="0" cellpadding="0" cellspacing="0">
	<form action="index.cfm?request=C1130002" method="post" name="loginForm" onSubmit="if(this.username.value=='' || this.password.value == '') {alert('Don\'t forget to fill in the login form!');return false;}">

	<tr>
		
			   <td width="40" align="center"><img src="web/sites/education/images/furniture/login.gif" width="30" height="14" alt="Login to Education Online"></td>
			   <td width="45">user:&nbsp;</td>
			   <td width="55"><input type="text" name="username" size="10"></td>
			   <td width="70">password:&nbsp;</td>
			   <td width="55"><input type="password" name="password" size="10"></td>
			   <td width="45"><input type="submit" value="go" name="login"></td>
			   <td width="200"> <a href="index.cfm?request=b1114357">remember me</a> </td>
			   <td width="20"><input type="checkbox" name="remember" size="10"></td>
			   <td width="200"><a href="javascript:void(0);emailPassword();">forgot your password?</a>&nbsp;&nbsp;<a href="index.cfm?request=b1114356&action=register">register</a></td>
			   <td width="10">&nbsp;</td>
			
	</tr>
	</form>
</table>

  <div id="Sidebar"> 
		<!-- menu goes here -->
		 

<div class="Sidetitle"> 
	
					<strong>Finance Handbook</strong>
				
</div>
<div class="Sidecontent"> 
  <p> 
     
          <span class="sideMenuItem" style="background-color:#E7E7FF;"><a href="index.cfm?request=c1130002">Model Scheme of Delegation</a></span> 
		  
  </p>
</div>



<br />
<div class="Sidetitle"> 
	
		  <strong>Central Services</strong>
	
</div>
<div class="Sidecontent" id="menuHolder">
  <p> 
   
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1147484">Agency Staff</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1000328">BHCC Phonebook</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1147004">Children & Young People's Trust</a></span>
	 
	<span class="sideMenuItem" style="background-color:#E7E7FF;"><a href="index.cfm?request=b1129822">Finance Handbook</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1100140">Governor Support</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1112506">Health & Safety</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1000376">Human Resources</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1115864">LEA Performance</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1118403">Planning for the Future</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1115683">Property & Design-Education</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1136164">Traveller Education</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1126862">School Contacts and Performance</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1000334">Schools Performance 97 - 01</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1137764">School Admissions</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1148252">Services to Schools</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1000375">Schools' Finance</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1102162">Schools  ICT</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1000372">School Recruitment Partnership</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1144124">Schools' Training</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1000335">School Visits</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1000373">Software</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1000336">Key Documents</a></span>
	 
	</p>
</div>

   </div> 
    <!-- /sidebar -->
  <div id="Main"> 
		<!-- Main  -->
		
		
		    <div id="Topmenu">
				
		<a href="index.cfm?request=a302" title="eds_Central Services" class="breadCrumbsText">Central Services</a>
	
		 &nbsp;/ <a href="index.cfm?request=b1129822" title="menuTitle" class="breadCrumbsText">Finance Handbook</a>
		 
		 	&nbsp;/ <strong>Model Scheme of Delegation</strong>
		  
			</div>
			
			<div id="Content">
			
				<a name="Title1"></a>
			
	<h2 class="title">Model Scheme for the Delegation of Governing Bodies' Financial Powers and Duties to Others</h2>

				<a name="BodyText4"></a>
			
		<span id="blacktext">
			<P>There follows an&nbsp;online version of the Model Scheme of Delegation, which can be printed using the button at the bottom of the document. If you would prefer to download a copy in Microsoft Word format, please right-click <A href="/downloads/education/education_online/key_documents/central_services/schools_finance/finance_handbook/ModelSchemeofDelegation-RevisedOct2004V1.doc">here</A>&nbsp;and choose "Save Target As...".</P>
<P><EM>Filename:</EM> ModelSchemeofDelegation-RevisedOct2004V1.doc</P>
<P><EM>Size:</EM> 206KB</P>
		</span>
		
				<a name="SubTitle3"></a>
			
	<h4 class="plain">Summary of Contents</h4>

				<a name="BodyText3"></a>
			
		<span id="blacktext">
			<UL>
<LI>
<P><A href="#Subtitle1">Introduction</A><A href="#Introduction"></A></P></LI>
<LI>
<P><A href="#A">Powers and Duties Reserved for the Full Governing Body</A></P></LI>
<LI>
<P><A href="#B">Powers and Duties Delegated to the Finance Committee of the Governing Body</A></P></LI>
<LI>
<P><A href="#C">Financial Powers and Duties Delegated to the Headteacher/Principal</A></P></LI>
<LI>
<P><A href="#D">Financial Powers and Duties Delegated to the Finance Officer and Other Members of Staff</A></P></LI></UL>
		</span>
		
				<a name="SubTitle1"></a>
			
	<h4 class="plain">Introduction</h4>

				<a name="BodyText1"></a>
			
		<span id="blacktext">
			<P><A name=Introduction></A>The governing bodies of schools and colleges with full delegated powers under the local management scheme are responsible for ensuring that the Brighton &amp; Hove Financial Regulations (Handbook reference: A3) and the Standing Orders relating to contracts are adhered to. In practice many of the governing bodies&rsquo; responsibilities will need to be delegated to a committee of the governing body and/or to the Headteacher/Principal. To ensure that sound financial control is maintained it is essential that the extent of delegation is clearly specified in writing.</P>
<P>The attached scheme of delegation is suggested as a model for governing bodies to adapt to their own particular circumstances. The scheme adopted by a governing body should cover all the areas in the model although the degree of delegation can be varied to meet individual requirements. In some cases it may be appropriate to place financial limits on certain delegations and reserve decisions on the more significant items for the governing body.</P>
<P>Schools should &ldquo;personalise&rdquo; their scheme by incorporating their school name in the title page to their documentation. Reference should also be made to the date the scheme is/was approved by the governing body. Schemes also need to be specific when attaching responsibilities to particular posts (eg finance secretary, secretary etc) schemes should not simply refer to a &ldquo;member of the clerical staff&rdquo; </P>
<P>The Education (School Government) Regulations 1989 require that the meeting of the governing body deciding upon a scheme of delegation must have a quorum of three quarters of the total number of governors entitled to vote. </P>
<P>It should be noted that the scheme of delegation complements the Council&rsquo;s Financial Regulations and Standing Orders and should be operated in conjunction with those documents. </P>
<P>Guidance on financial matters is contained in the Schools Finance Handbook.</P>
		</span>
		
				<a name="SubTitle2"></a>
			
	<h4 class="plain">Scheme for the Delegation of Governing Bodies' Financial Powers and Duties to Others</h4>

				<a name="BodyText2"></a>
			
		<span id="blacktext">
			<P><STRONG><A name=A></A>A. POWERS AND DUTIES RESERVED FOR THE FULL GOVERNING BODY</STRONG></P>
<P>The full Governing Body shall be responsible for:-</P>
<P><STRONG>A1.</STRONG> Approving a written scheme of delegation of its financial powers and duties to its Finance Committee and the Headteacher/Principal. The scheme must satisfy the Full Governing Body&rsquo;s ultimate responsibility for ensuring that there are adequate operational controls in place for all the financial processes within the school/college. It should be noted that the Scheme of Delegation complements the Council&rsquo;s Financial Regulations and Standing Orders relating to contracts and should be operated in conjunction with these documents.</P>
<P>The Scheme of Delegation should be reviewed and approved on an annual basis. The approval and presentation should be formally minuted and the documents attached to and certified at the same as the minutes.</P><STRONG>
<P>Audit </P></STRONG>
<OL></OL>
<P><STRONG>A2.</STRONG> The full Audit Report on the school/college issued by the Council&rsquo;s Internal Audit Services section will be presented to the full Governing Body at their meeting following receipt of the report. This should be reflected in the minutes of that meeting.<BR></P>
<OL></OL>
<P><STRONG>A3.</STRONG> Informing Internal Audit Services, Corporate Services, if it suspects any irregularity affecting resources of the Council.<BR></P><STRONG>
<P>Note</P></STRONG>
<P>Voluntary funds are outside of the LEA's control but governing bodies may wish to include the following provision in their scheme of delegation. </P>
<P>The Finance Committee shall inform Internal Audit Services if it suspects an irregularity affecting the schools/colleges voluntary funds. The Head of Internal Audit Services shall take such steps as are necessary by way of investigation and report.</P>
<P><STRONG>Budgets/Budgetary Control</STRONG></P>
<P><STRONG>A4.</STRONG> Receive and consider a full report of the school/college&rsquo;s final financial position no later than four months after the end of each financial year. This item should be recorded in the minutes of the meeting.<BR></P>
<P>
<P><STRONG>A5.</STRONG> Formally approve (and minute the approval of) the school&rsquo;s budget plan annually. A copy of the plan, certified by the Head and Chair of Governors, should be submitted to the Schools Finance Section of Project and Financial Services (CFS).<BR></P>
<P>
<P><STRONG>A6.</STRONG> Receive and consider budgetary control reports at every meeting from the Finance Committee with relevant explanations and documentation where required. The receipt of such reports/documents shall be minuted and copies of the documents signed by the Chair.<BR></P>
<P>
<P><STRONG>A7.</STRONG> All virements in excess of &pound;xxxx (dependent on the requirements of the school) between or within budget headings shall be approved, authorised and minuted by the Full Governing Body and those in excess of &pound;10,000 to be notified termly to the Head of Financial Services (CFS). Details of all virements, approved and authorised by the Finance Committee are to be formally notified to the Full Governing Body who shall minute the notification except for sums earmarked by the Council.</P>
<P>
<P><STRONG>A8.</STRONG> Inform the Schools Finance Section of Project and Financial Services (CFS) when the school/college wishes to meet expenditure of a capital nature from the revenue budget. (Guidance on capital expenditure is contained in the Schools Finance Handbook).</P>
<P>
<P><STRONG>A9.</STRONG> Enter into operational leasing/contract hire arrangements provided that the Schools Finance Section of Project and Financial Services (CFS) is satisfied that the method of finance is appropriate for the asset concerned, and that the best terms available have been secured. The Finance Committee shall ensure that the resulting charges can be met within the budget for the current and future years.<BR></P>
<P><STRONG>Chairman&rsquo;s Urgency Powers</STRONG></P>
<P>
<P><STRONG>A10.</STRONG> In the event of Urgency Powers being invoked by the Chairman, this will be recorded in writing, advised to the LEA and reported to the next meeting of the Full Governing Body.<BR></P>
<P><STRONG>Contracts</STRONG></P>
<P>
<P><STRONG>A11.</STRONG> Tenders other than the most financially favourable, or late tenders, can only be accepted by the full Governing Body who shall minute the reasons for their decision.</P>
<P>
<P><STRONG>A12.</STRONG> Maintain a Register of Business Interests for all governors and those school staff involved in the shortlisting or awarding of contracts.<BR></P>
<P><STRONG>Ex-Gratia Payments</STRONG></P>
<P>
<P><STRONG>A13.</STRONG> Authorise ex-gratia payments up to &pound;500. However, they shall obtain the Children, Families and Schools Sub-Committee approval to any ex-gratia payment in excess of &pound;500. No ex-gratia payments in excess of &pound;2,500 approved by the Children, Families and Schools Sub-Committee shall be made without the approval of the Secretary of State. The full Governing Body should keep a record of all payments.<BR></P>
<P><STRONG>Income</STRONG></P>
<P>
<P><STRONG>A14.</STRONG> Authorise the write-off of debts below &pound;1,000 after consultation with the Schools Finance Section of Project and Financial Services (CFS). Debts in excess of &pound;1000 but not exceeding &pound;10,000 may only be written-off after consultation with the Director of Finance &amp; Property, Corporate Services and the Solicitor to the Council. Debts in excess of &pound;10,000 shall be authorised by the Policy and Resources Committee. The Full Governing Body should keep a record of all write-offs.<BR></P>
<P><STRONG>Lettings</STRONG></P>
<P><STRONG>A15.</STRONG> Receive, consider and approve the Lettings Policy for the school. The full Governing Body should also consider and agree the scale of charges for lettings. Both shall be reviewed and approved on an annual basis.<BR></P>
<P><STRONG>Loans, Investments and Trust Funds</STRONG></P>
<P><STRONG>A16.</STRONG> Consider any proposals to borrow monies that require the approval of the Council&rsquo;s Policy and Resources Committee and to seek the approval of the Director of Finance &amp; Property, Corporate Services.</P>
<P><STRONG>Security of Assets</STRONG></P>
<P><STRONG>A17.</STRONG> Authorise and formally minute the write off any deficiencies of individual items of stock and equipment with original purchase values in excess of &pound;1000. Where the original purchase value is not available, the current market value should be used. Agreement of the Director of Finance &amp; Property, Corporate Services must be sought to write off in excess of &pound;2500.<BR></P>
<P><STRONG>A18.</STRONG> Authorise and formally minute the disposal of individual items of equipment and materials that have become surplus to requirements, unusable or obsolete with a realisable value in excess of &pound;1000. Agreement of the Council&rsquo;s Director of Finance &amp; Property, Corporate Services must be sought to write off in excess of &pound;2500.<BR></P>
<P><STRONG>Voluntary Funds</STRONG></P>
<P><STRONG>A19.</STRONG> Receive and consider the independently audited accounts of all the school/college&rsquo;s voluntary funds either each Autumn term to cover the previous year ending 31st August or each Summer term to cover the previous year ending 31st March. This item should be recorded in the minutes of the meeting.<BR></P>
<P><STRONG><A name=B></A>B. POWERS AND DUTIES DELEGATED TO THE FINANCE COMMITTEE OF THE GOVERNING BODY</P></STRONG>
<P>The Finance Committee shall be responsible for:-</P>
<P><STRONG>General</STRONG></P>
<P><STRONG>B1.</STRONG> Exercising the powers and duties of the full Governing Body in respect of the financial administration of the school/college, except for those items specifically reserved for the full Governing Body and those delegated to the Headteacher/Principal, or those delegated to other staff by the Headteacher/Principal.<BR></P>
<P><STRONG>B2.</STRONG> Reporting on all decisions taken under delegated powers to the next meeting of the full Governing Body. (Education (School Government) Regulations 1989).<BR></P><STRONG>
<P>Budgets/Budgetary Control</P></STRONG>
<P><STRONG>B3.</STRONG> Considering budgetary control reports on the school/college&rsquo;s financial position at every meeting, take appropriate action to contain expenditure within the budget and report to the Full Governing Body.<BR></P>
<P><STRONG>B4.</STRONG> Freedom to vire sums between and within budget heads, except for sums earmarked by the Council, subject to a limit of &pound;xxxxxx (dependent on the requirements of the school). Details of all virements approved and authorised by the Headteacher are to be formally notified to the Finance Committee who shall minute the notification.<BR></P>
<P><STRONG>B5.</STRONG> Reporting to the Full Governing Body all significant financial matters and any actual or potential overspending.<BR></P>
<P><STRONG>B6.</STRONG> Submitting a draft budget plan to the Full Governing Body for approval and certification before being sent to the Schools Finance Section of Project and Financial Services (CFS) by 1st May.<BR></P>
<P><STRONG>Contracts</P></STRONG>
<P><STRONG>B7.</STRONG> Exercising the powers and duties of the Full Governing Body in respect of the Council&rsquo;s Standing Orders relating to contracts, except for those items specifically reserved for the Full Governing Body and those delegated to the Headteacher/Principal, without reference to the Full Governing Body, up to a limit of &pound;25,000 in Secondary Schools and Colleges, and &pound;15,000 in Primary and Special Schools.<BR></P>
<P><STRONG>Ex-Gratia Payments</P></STRONG>
<P><STRONG>B8.</STRONG> Proposing ex-gratia payments up to &pound;500 and shall notify the Full Governing Body who will authorise, approve and maintain a record of all payments.<BR></P><STRONG>
<P>Income</P></STRONG>
<P><STRONG>B9.</STRONG> Authorising the write-off of debts between &pound;100 and &pound;500 and shall notify the Full Governing Body of any write-offs. <BR></P>
<P><STRONG>B10.</STRONG> At least once a year, review all fees and charges, including lettings, and authorise any changes it considers appropriate save in respect of optional extras relating to pupils education which must be determined by the Full Governing Body. (Education (School Government) Regulations 1989).<BR></P>
<P><STRONG>Insurances</P></STRONG>
<P><STRONG>B11.</STRONG> Making arrangements for any insurance cover it considers necessary in liaison with the Council&rsquo;s Insurance Department.<BR></P>
<P><STRONG>Lettings</P>
<P></STRONG><STRONG>B12.</STRONG> Reviewing and submitting annually to the Full Governing Body the Lettings Policy and charges for the school.<BR></P>
<P><STRONG>Loans, Investments and Trust Funds</P></STRONG>
<P><STRONG>B13.</STRONG> Setting aside funds that are not required for immediate use, in accordance with arrangements agreed with the Schools Finance Section of Project and Financial Services (CFS).<BR></P>
<P><STRONG>B14.</STRONG> Ensuring that all securities etc, relating to trust funds are deposited with the Solicitor to the Council, unless the deed otherwise provides.<BR></P>
<P><STRONG>Security of Assets</P></STRONG>
<P><STRONG>B15.</STRONG> Ensuring that there are annual independent checks of stock and inventory records, in accordance with the requirements of the Finance Handbook. <BR></P>
<P><STRONG>B16.</STRONG> Authorising the write off of any deficiencies of individual stock and inventory items with original purchase values between &pound;250 and &pound;1000. Where the original purchase value is not available, the current market value should be used. All such write-off's must be in accordance with the Finance Handbook and be formally reported and minuted at the following full Governing Body meeting.<BR></P>
<P><STRONG>B17.</STRONG> Authorising the disposal of individual items of equipment and materials that have become surplus to requirements, unusable or obsolete with a realisable value of between &pound;250 and &pound;1000. All such authorisations must be in accordance with the Finance Handbook and be formally reported and minuted at the following full Governing Body meeting.<BR></P>
<P><STRONG>B18.</STRONG> Authorising when (if at all) school property may be removed from the premises otherwise than for educational purposes.<BR></P>
<P><STRONG>Voluntary Funds</P></STRONG>
<P><STRONG>B19.</STRONG> Responsibility for ensuring that all voluntary funds are properly administered and audited annually under the requirements of the Finance Handbook. Voluntary funds must be accounted for completely separately from any Council funds and reported annually to the full Governing Body.<BR></P><STRONG>
<P><A name=C></A>C. FINANCIAL POWERS AND DUTIES DELEGATED TO THE HEADTEACHER/PRINCIPAL.</P>
<P>Delegation of Headteacher/Principal&rsquo;s Responsibilities</P></STRONG>
<P>The Education (School Government) Regulations 1989 permit a governing body of a school or college to delegate some of its financial responsibilities to the Headteacher or Principal in recognition of the practicalities of running a school/college. Similarly, the Headteacher/Principal may allow some of his/her responsibilities to be exercised by other members of staff, subject to written approval by the governing body, although he/she will remain accountable for the actions of these staff.</P>
<P>The Deputy Headteacher/Vice Principal is authorised to act under this scheme in absence of the Headteacher/Principal.</P>
<P>The model scheme of delegation is intended for all schools and will therefore need to be adapted to suit individual schools/colleges. In particular, schools with a small number of staff may feel it inappropriate to delegate some of the responsibilities beyond the Headteacher.</P>
<P>It is recommended that each school/college develop its own detailed internal financial rules to support their scheme of delegation.</P>
<P>The Headteacher/Principal shall report all decisions taken under delegated powers to the next meeting of the Full Governing Body. (Education (School Government) Regulation 1989).</P>
<P>The Headteacher/Principal shall be responsible for:-</P>
<P><STRONG>Accounts</P></STRONG>
<P><STRONG>C1.</STRONG> The operation of financial processes within the school/college, ensuring that adequate operational controls are in place and that the principles of internal control are maintained.<BR></P>
<P><STRONG>C2.</STRONG> Ensuring that full, accurate and up to date records are maintained in order to provide financial and statistical information and that the figures have been reconciled with the school/college&rsquo;s bank account and the Council&rsquo;s central records.<BR></P>
<P><STRONG>C3.</STRONG> Consulting the Schools Finance Section of Project and Financial Services (CFS) on the development of any financial system and links with the central systems.<BR></P>
<P><STRONG>Audit</P></STRONG>
<P><STRONG>C4.</STRONG> Ensuring that all records and documents are available for audit by the Council&rsquo;s Internal Audit Services and arrange for the required accommodation of the auditors.<BR></P>
<P><STRONG>Banking Arrangements</P></STRONG>
<P><STRONG>C5.</STRONG> Maintaining proper records of account in accordance with arrangements approved by the Director of Finance &amp; Property, Corporate Services.<BR></P>
<P><STRONG>C6.</STRONG> Providing monthly reconciled bank statements to the Schools Finance Section of Project and Financial Services (CFS) promptly.<BR></P>
<P><STRONG>Budgets/Budgetary Control</P></STRONG>
<P><STRONG>C7.</STRONG> Ensuring that reconciliations are performed on a monthly basis between the School&rsquo;s and Council&rsquo;s accounts in accordance with guidance issued by the Schools Finance Section of Project and Financial Services (CFS).<BR></P>
<P><STRONG>C8.</STRONG> Regular monitoring of expenditure and income against the approved budget and submitting reports on the school/college&rsquo;s financial position to every meeting of the Finance Committee. Any actual or potential overspending shall be reported to the Finance Committee.<BR></P>
<P><STRONG>C9.</STRONG> Ensuring that all required monthly reports and closing of accounts information is sent to the Schools Finance Section of Project and Financial Services (CFS) within the required timescale.<BR></P>
<P><STRONG>C10.</STRONG> Preparing an annual draft budget plan for consideration by the Finance Committee before the start of the relevant financial year.<BR></P>
<P><STRONG>C11.</STRONG> Submitting updated budget plans at the beginning of each term if requested by the Schools Finance Section of Project and Financial Services (CFS).<BR></P>
<P><STRONG>C12.</STRONG> The Headteacher/Principal may vire between and within budget headings up to a value of &pound;xxxx (dependent on the requirements of the school), although this must be formally reported and minuted at the following Finance Committee meeting.<BR></P>
<P><STRONG>Contracts</P></STRONG>
<P><STRONG>C13.</STRONG> Exercising the following powers and duties of the Full Governing Body in respect of the Council&rsquo;s Standing Orders relating to Contracts.<BR></P>
<P>a) Ensuring that all contracts and agreements conform with the Standing Orders</P>
<P>b) Acceptance of quotations up to &pound;xxxx (dependent on the requirements of the school) in value.</P>
<P>c) Receipt and custody of all tenders.</P>
<P>d) Authorisation of senior members of staff to open tenders.</P>
<P>e) Signing contracts on behalf of the Full Governing Body.</P>
<P><STRONG>C14.</STRONG> Maintaining a register of formal contracts entered into, amounts paid and certificates of completion.<BR></P>
<P><STRONG>C15.</STRONG> Retention of quotes obtained for goods, works and services.<BR></P>
<P><STRONG>C16.</STRONG> Signing certificates where contracts require that interim and final payment are made on such certificates.<BR></P>
<P><STRONG>C17.</STRONG> Ensuring that the requirements of the Construction Industry Scheme are adhered to where applicable.<BR></P>
<P><STRONG>Income</P></STRONG>
<P><STRONG>C18.</STRONG> Ensuring the arrangements for collection of income are in accordance with the Council&rsquo;s Financial Regulations.<BR></P>
<P><STRONG>C19.</STRONG> Ensuring that all income is accurately accounted for and is promptly collected and banked intact.<BR></P>
<P><STRONG>C20.</STRONG> Ensuring that all receipt forms, books, tickets and other such items shall be ordered and issued in a form approved by the Councils Internal Audit Services.<BR></P>
<P><STRONG>C21.</STRONG> Writing-off debts up to &pound;100, and informing the full Governing Body who will record any write off.<BR></P>
<P><STRONG>Information and communication systems</P></STRONG>
<P><STRONG>C22.</STRONG> All necessary consultations, with the Director of Finance &amp; Property, Corporate Services, in respect of the introduction of any new information and communication system, or the development of an existing system.<BR></P>
<P><STRONG>C23.</STRONG> The standards of control for such systems in operation within the school/college to include the use of properly licensed software, and for the security and privacy of data in accordance with the Data Protection Act.<BR></P>
<P><STRONG>Insurances</P></STRONG>
<P><STRONG>C24.</STRONG> Notifying the Councils Insurance Officer on any eventuality that could affect the Council&rsquo;s insurance arrangements.<BR></P>
<P><STRONG>Lettings </P></STRONG>
<P><STRONG>C25.</STRONG> Varying lettings charges if/when it is considered necessary. The Finance Committee shall be informed of any variation to the agreed scale of charges.<BR></P>
<P><STRONG>Orders for goods, works and services</P></STRONG>
<P><STRONG>C26.</STRONG> Ensuring that arrangements for the ordering of goods, works and services are in accordance with the Council&rsquo;s Financial Regulations and Standing Orders.<BR></P>
<P><STRONG>C27.</STRONG> Authorising members of staff to order or receive goods and certify invoices for payment, ensuring the appropriate division of these duties between the staff. A record must be maintained of such authorisations.<BR></P>
<P><STRONG>Payments</P></STRONG>
<P><STRONG>C28.</STRONG> Ensuring the arrangements for processing payments are in accordance with the Council&rsquo;s Financial Regulations.<BR></P>
<P><STRONG>C29.</STRONG> Ensuring that all correct invoices are duly certified by authorised staff before payments are made.<BR></P>
<P><STRONG>C30.</STRONG> Ensuring that invoices, vouchers and other records are retained and stored in a secure way and are readily available for inspection by authorised persons.<BR></P>
<P><STRONG>Salaries, Wages and Pensions</P></STRONG>
<P><STRONG>C31.</STRONG> The arrangements for processing salaries, wages and pensions are in accordance with the Council&rsquo;s Financial Regulations.<BR></P>
<P><STRONG>C32.</STRONG> Notifying the Payroll Section of Brighton &amp; Hove City Council and the Children Families and Schools Department&rsquo;s Personnel Section of any matters affecting payments to employees of the Council.<BR></P>
<P><STRONG>C33.</STRONG> Authorising members of staff to certify pay documents and time records, maintaining a record including specimen signatures of such authorised staff and sending a copy to the Payroll Section.</P>
<P><STRONG>C34.</STRONG> Collecting any monies advanced to a member of staff who is to leave the school/college&rsquo;s employment.<BR></P>
<P><STRONG>Security of Assets</P></STRONG>
<P><STRONG>C35.</STRONG> Ensuring the arrangements for security of assets are in accordance with the Council&rsquo;s Financial Regulations and Standard Financial Procedures (B9).<BR></P>
<P><STRONG>C36.</STRONG> Ensuring that proper security is maintained at all times for all buildings, furniture, equipment, vehicles, stocks, stores, cash, information and records etc under his/her control.<BR></P>
<P><STRONG>C37.</STRONG> Maintaining an inventory, in accordance with the instructions in the Finance Handbook, of all items of furniture, equipment, vehicles and plant. The inventory record, whether manual or computerised, shall be a permanent and continuous record.<BR></P>
<P><STRONG>C38.</STRONG> Where appropriate, arranging for the security marking or such items.<BR></P>
<P><STRONG>C39.</STRONG> Arranging for annual independent checks and certification of stock and inventory records, in accordance with the instructions in the Finance Handbook.<BR></P>
<P><STRONG>C40.</STRONG> Authorising the write off of any deficiencies of individual stock and inventory items with original purchase values up to &pound;250. Where the original purchase value is not available, the current market value should be used. All such write offs should be in accordance with the Finance Handbook and be formally reported and minuted at the following Finance Committee meeting.<BR></P>
<P><STRONG>C41.</STRONG> Authorisation, in accordance with the instructions in the Finance Handbook, of the disposal of individual items of equipment and materials that have become surplus to requirements, unusable or obsolete with a realisable value of less than &pound;250. All such authorisations should be in accordance with the Finance Handbook and be formally reported and minuted at the following Finance Committee meeting.<BR></P>
<P><STRONG>C42.</STRONG> Ensuring that keys to safes and other similar receptacles are held under the close personal security of responsible staff at all times.<BR></P>
<P><A name=D></A><STRONG>D. FINANCIAL POWERS AND DUTIES DELEGATED TO THE FINANCE OFFICER AND OTHER MEMBERS OF STAFF</STRONG></P>
<P>Members of staff with delegated responsibilities should be aware that these must be exercised in accordance with Financial Regulations and Standing Orders.</P>
<P>The following responsibilities are delegated to the Finance Officer unless otherwise stated.</P><STRONG>
<P>Accounts</P></STRONG>
<P><STRONG>D1.</STRONG> Operation of financial processes within the school/college, ensuring that adequate operational controls are in place, and that the principles of internal control are maintained in accordance with this Scheme of Delegation and Financial Regulations.<BR></P>
<P><STRONG>D2.</STRONG> Ensuring that full, accurate and up to date records and documents are maintained in order to provide financial and statistical information and that the figures have been reconciled with the school/college&rsquo;s bank account and the Council&rsquo;s central records.<BR></P>
<P><STRONG>Audit</P></STRONG>
<P><STRONG>D3.</STRONG> Ensuring that all records and documents are available for audit by the Internal Audit Services and arrange for the required accommodation of the auditors.<BR></P>
<P><STRONG>Banking Arrangements</P></STRONG>
<P><STRONG>D4.</STRONG> Maintaining proper records of accounts in accordance with arrangements approved by the Schools Finance Section of Project and Financial Services (CFS).<BR></P>
<P><STRONG>D5.</STRONG> Providing monthly reconciled bank statements to the Schools Finance Section of Project and Financial Services (CFS), promptly.<BR></P>
<P><STRONG>Budget/Budgetary Control</P></STRONG>
<P><STRONG>D6.</STRONG> Notifying the Schools Finance Section of Project and Financial Services (CFS) of variations in the school&rsquo;s/college&rsquo;s budget plan, approved by the Finance Committee at the beginning of each term. <BR></P>
<P><STRONG>D7.</STRONG> Viring sums between and within budget headings up to a value of &pound;xxxx (dependent on the requirements of the school), although this must be formally reported and minuted at the following Finance Committee meeting. The Finance Officer will also process any other virements notified to him/her as authorised by the Full Governing Body, Finance Committee or the Headteacher/Principal.<BR></P>
<P><STRONG>D8.</STRONG> Submitting all required monthly reports to the Schools Finance Section of Project and Financial Services (CFS)&nbsp; promptly.<BR></P><STRONG>
<P>Contracts</P></STRONG>
<P><STRONG>D9.</STRONG> Ensuring that all contracts and agreements conform with the Standing Orders relating to contracts.<BR></P>
<P><STRONG>D10.</STRONG> The following members of staff, in addition to the Headteacher/Principal, are authorised to open tenders in the presence of another authorised person:-<BR></P>
<UL>
<LI>Deputy Headteacher/Vice Principal</LI>
<LI>Finance Officer</LI></UL><STRONG>
<P>Income</P></STRONG>
<P><STRONG>D11.</STRONG> Maintaining a record of all income held in the school/college and ensure that all income is accurately accounted for, promptly collected and banked intact.<BR></P>
<P><STRONG>D12.</STRONG> Ensuring that no cheques are cashed out of money held on behalf of the Council and that a suitable receipt is given when cash is handed over from one person to another.<BR></P>
<P><STRONG>D13.</STRONG> Ensuring that all receipt forms, books, tickets and other such items shall be ordered and issued in a form approved by the Council&rsquo;s Internal Audit Services.<BR></P>
<P><STRONG>Information and communication systems</P></STRONG>
<P><STRONG>D14.</STRONG> The designated Systems Manager shall be responsible for the control of systems and for the security and privacy of data.<BR></P>
<P><STRONG>Lettings</P></STRONG>
<P><STRONG>D15.</STRONG> Ensuring the correct administration and authorisation of lettings.</P>
<P><STRONG>Orders for goods, works and services</P></STRONG>
<P><STRONG>D16.</STRONG> The following members of staff, in addition to the Headteacher/Principal, are authorised to issue (sign) orders for goods, works and services as specified:-<STRONG></P></STRONG>
<P>
<TABLE cellSpacing=0 cellPadding=5 width="100%" align=center border=1>
<TBODY>
<TR vAlign=center align=middle>
<TD>
<P>&nbsp;<STRONG>Staff</STRONG></P></TD>
<TD><STRONG>Types of Order</STRONG> 
<P>(NB. Varying financial limits can be set to aid control).</P></TD></TR>
<TR>
<TD>
<P>Deputy Headteacher/Vice Principal</P></TD>
<TD>All</TD></TR>
<TR vAlign=top>
<TD>Finance Officer</TD>
<TD>All</TD></TR>
<TR vAlign=top>
<TD>Head of Department</TD>
<TD>
<P>For goods for that departments use, subject to there being sufficient provision within the departmental budget.</P></TD></TR></TBODY></TABLE></P>
<P>All orders must be processed via the Finance Officer who shall be responsible for the safe custody and proper use of official orders, maintaining a record of order books in use and marking orders appropriately when they have been paid.<BR></P>
<P><STRONG>Payments</STRONG></P>
<P><STRONG>D17.</STRONG> The following members of staff, in addition to the Headteacher/Principal, are authorised to receive goods:-<BR></P>
<UL>
<LI>Deputy Headteacher/Vice Principal</LI>
<LI>Finance Officer</LI>
<LI>Clerical staff (please specify)</LI>
<LI>Caretaker</LI></UL>
<P><STRONG>D18.</STRONG> The following members of staff are authorised to certify payments:-<BR></P>
<UL>
<LI>Deputy Headteacher/Vice Principal</LI>
<LI>Finance Officer</LI></UL>
<P>NB. The certifying officer shall NOT be the person who ordered or received the goods.</P>
<P><STRONG>D19.</STRONG> Ensuring that invoices, vouchers and other records are retained and stored in a secure way.<BR></P>
<P><STRONG>Salaries and Wages</P></STRONG>
<P><STRONG>D20.</STRONG> Notifying the Payroll Section of Brighton &amp; Hove City Council and the Children Families and Schools Department&rsquo;s Personnel Section of any matters affecting payments to employees of the Council.<BR></P>
<P><STRONG>D21.</STRONG> The following members of staff, in addition to the Headteacher/Principal, are authorised to certify pay documents and time records (excluding documents relating to themselves):-<BR></P>
<UL>
<LI>Deputy Headteacher/Vice Principal</LI>
<LI>Finance Officer</LI></UL>
<P><STRONG>D22.</STRONG> Collecting any monies advanced to a member of staff who is to leave the school/college&rsquo;s employment and maintain a record of all cash holdings in the school/college.<BR></P>
<P><STRONG>Security of Assets</P></STRONG>
<P><STRONG>D23.</STRONG> Responsibility for the receipt, care and safe custody and issue of stocks and stores. <BR></P>
<P><STRONG>D24.</STRONG> Maintaining an inventory, in accordance with the instructions in the Finance Handbook, of all items of furniture, equipment, vehicles and plant. The inventory record, whether manual or computerised, shall be a permanent and continuos record.<BR></P>
<P><STRONG>D25.</STRONG> Where appropriate, arranging for the security marking of such items.<BR></P>
<P><STRONG>D26.</STRONG> Maintaining a record (Loans Book) in accordance with the instructions in the Finance Handbook, of all school property removed from the premises. Where the use is for other than school/college business, the Finance Officer shall ensure the approval of the Finance Committee.<BR></P>
<P><STRONG>D27.</STRONG> Ensuring that maximum limits of cash held do not exceed the Council&rsquo;s insurance cover.</P>
<P><STRONG>Petty Cash</STRONG></P>
<P><STRONG>D28.</STRONG> Maintaining a petty cash balance that does not exceed &pound;xx (dependent on the requirements of the school).</P>
		</span>
		
						<br clear="all"/>
						
							<span class="date">Last updated 13-Mar-06</span>
						
				<br clear="all"/>
				<hr />
				
			
		</div>
		<!-- /content -->


			<!-- footer -->
				
			
<div id="Bottommenu">
	<span class="leftText">
		
		<a href="site02.cfm?request=C1130002" title="Click to browse the text only version of this website" style="color:#fff;">Text only version</a>
		
	</span>
		<span class="rightText"><a href="index.cfm?request=b1114904" title="Send your feedback" style="color:#fff;">Send your views</a>
	</span>
	
				<div id="footerIcons">
				
						<a href="index.cfm?request=C1130002&subscribe=true" title="Subscribe to updates on this page"><img src="web/sites/education/images/footer_icons/ico_subs.gif" border="0" width="40" height="38" onMouseOver="MouseOn(this)" onMouseOut="MouseOff(this)"></a>
				
				<a href="index.cfm?request=C1130002&quicklink=true" title="Add this page to your homepage bookmarks"><img src="web/sites/education/images/footer_icons/ico_book.gif" border="0" width="40" height="38" onMouseOver="MouseOn(this)" onMouseOut="MouseOff(this)"></a>
				<a href="index.cfm?request=C1130002&print=true&" target="_blank" title="Click for a printable version of this page"><img src="web/sites/education/images/footer_icons/ico_prnt.gif" border="0" width="40" height="38" onMouseOver="MouseOn(this)" onMouseOut="MouseOff(this)"></a> 
					<a href="mailto:chris.barclay@brighton-hove.gov.uk" title="Send an email to the owner of this page"><img src="web/sites/education/images/footer_icons/ico_mail.gif" border="0" width="40" height="38" onMouseOver="MouseOn(this)" onMouseOut="MouseOff(this)"></a> 
				
				</div>
			
</div>
<!-- /bottomMenu -->
		
<div id="Bottom">
	<span class="leftText">
		<a href="index.cfm?request=b1000365" title="Read our Liability Statement">Liability and Privacy Statement</a>
	</span> 
	<span class="rightText">
		&copy; <a href="http://www.brighton-hove.gov.uk" title="Brighton & Hove City Council Website">Brighton & Hove City Council</a> 2003
	</span>
</div>
<!-- /bottom -->
				
	 </div>
	<!--< /main -->
</div>
<!-- /container-->

</body>
</html> 

	.."sen/Ew