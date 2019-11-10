


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
	<form action="index.cfm?request=B1000330" method="post" name="loginForm" onSubmit="if(this.username.value=='' || this.password.value == '') {alert('Don\'t forget to fill in the login form!');return false;}">

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
	
					<strong>Training Planner</strong>
				
</div>
<div class="Sidecontent"> 
  <p> 
    <span class='sideMenuItem' onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href = 'index.cfm?request=B1000330&action=coursesByMonth'>Courses by month</a></span><span class='sideMenuItem' onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href = 'index.cfm?request=B1000330&action=coursesBySubject'>Course by subject</a></span><span class='sideMenuItem' onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href = 'index.cfm?request=B1000330&action=coursesByProvider'>Course by provider</a></span><span class='sideMenuItem' onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href = 'index.cfm?request=B1000330&action=search'>Search for a course</a></span><span class='sideMenuItem' onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href = 'index.cfm?request=B1000330&action=venues'>Venues</a></span> 
  </p>
</div>



<br />
<div class="Sidetitle"> 
	
		  <strong>Your Career</strong>
	
</div>
<div class="Sidecontent" id="menuHolder">
  <p> 
   
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1123962">Teaching Assistants and Support Staff</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1144144">Gaining Qualified Teacher Status</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1116205">Newly Qualified Teachers</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1144166">International Professional Development</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1144168">ASTs / Excellent Teacher Scheme</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1144127">CPD Co-ordinators</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1144128">Leadership & Management</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1136507">School Workforce Reform & Remodelling</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1117522">Learning Development Centre</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1115930">Performance Threshold</a></span>
	 
	<span class="sideMenuItem" style="background-color:#E7E7FF;"><a href="index.cfm?request=b1000330">Training Planner</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1103402">Administer Training</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1000377">Vacancies</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1147124">Serving the city awards</a></span>
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1114611">Key Documents</a></span>
	 
	</p>
</div>

   </div> 
    <!-- /sidebar -->
  <div id="Main"> 
		<!-- Main  -->
		
		
		    <div id="Topmenu">
				
		<a href="index.cfm?request=a304" title="eds_Your Career" class="breadCrumbsText">Your Career</a>
	
			&nbsp;/ <strong>Training Planner</strong>
		 
			</div>
			
			<div id="Content">
			

<h2 class="training">IT Training Planner: search by subject</h2>

<p></p>
<div>
Select a subject below to see a list of the Training Courses available.
<p></p>
<form method="post" action="/index.cfm?request=b1000330&action=dsp_subject">
	<select name="subject">
		
		<option value="14 - 19 AREA INSPECTION MEETING">14 - 19 AREA INSPECTION MEETING 
		<option value="14 â 19 Teaching & Learning Group">14 â 19 Teaching & Learning Group 
		<option value="ACTIVE LEARNING APPROACHES FOR KS3 AND KS4 SEX AND RELATIONSHIP AND DRUG AND ALCOHOL EDUCATION">ACTIVE LEARNING APPROACHES FOR KS3 AND K 
		<option value="ADMISSIONS IN CE VOLUNTARY AIDED SCHOOLS">ADMISSIONS IN CE VOLUNTARY AIDED SCHOOLS 
		<option value="AN INTRODUCTION TO GB SELF-EVALUATION">AN INTRODUCTION TO GB SELF-EVALUATION 
		<option value="AN INTRODUCTION TO TEACHING AND LEARNING IN SEX AND RELATIONSHIP AND DRUG AND ALCOHOL EDUCATION IN PRIMARY AND PRIMARY SPECIAL SCHOOLS ">AN INTRODUCTION TO TEACHING AND LEARNING 
		<option value="ANNUAL MATHEMATICS CO-ORDINATORSâ CONFERENCE">ANNUAL MATHEMATICS CO-ORDINATORSâ CONFER 
		<option value="ANTI-BULLYING STRATEGIES">ANTI-BULLYING STRATEGIES 
		<option value="ASSERTION SKILLS">ASSERTION SKILLS 
		<option value="ASSESSMENT FOR LEARNING">ASSESSMENT FOR LEARNING 
		<option value="ASSESSMENT FOR LEARNING â SCHOOL LEADERSâ NETWORK MEETING">ASSESSMENT FOR LEARNING â SCHOOL LEADERS 
		<option value="Access Arrangements for the Key Stage 2 SATS â SENCO Training">Access Arrangements for the Key Stage 2 
		<option value="Administration of the KS2 NC Tests - 2007">Administration of the KS2 NC Tests - 200 
		<option value="Administrative Staff Conference">Administrative Staff Conference 
		<option value="Advanced Reporting in SIMS .net (Primary Schools)">Advanced Reporting in SIMS .net (Primary 
		<option value="Advanced Reporting in SIMS.net (Secondary Schools)">Advanced Reporting in SIMS.net (Secondar 
		<option value="Annual Mini-Conference - Gifted and Talented Provision and the Personalisation Agenda">Annual Mini-Conference - Gifted and Tale 
		<option value="Areas of Special Need: Further Development of Support for SEN at the Foundation Stage (Children Aged 3 â 5)">Areas of Special Need: Further Developme 
		<option value="Art & Design at Key Stage 2 - Developing More Advanced Skills">Art & Design at Key Stage 2 - Developing 
		<option value="Aspiring Deputy Headteacher Programme">Aspiring Deputy Headteacher Programme 
		<option value="Assertiveness and Time Management for NQTs">Assertiveness and Time Management for NQ 
		<option value="Assessment in the Non-Core Subjects">Assessment in the Non-Core Subjects 
		<option value="B&H School Council Pupil Day">B&H School Council Pupil Day 
		<option value="BEING A CHURCH SCHOOL GOVERNOR">BEING A CHURCH SCHOOL GOVERNOR 
		<option value="BEST VALUE PRINCIPLES">BEST VALUE PRINCIPLES 
		<option value="BOOSTING ATTAINMENT OF MORE ADVANCED BILINGUAL PUPILS IN KS2 ">BOOSTING ATTAINMENT OF MORE ADVANCED BIL 
		<option value="BRINGING RELIGIOUS EDUCATION ALIVE; A CREATIVE APPROACH">BRINGING RELIGIOUS EDUCATION ALIVE; A CR 
		<option value="BUDGET MONITORING & FORECASTING">BUDGET MONITORING & FORECASTING 
		<option value="BUSINESS LINKS TO LEARNING">BUSINESS LINKS TO LEARNING 
		<option value="BUSINESS SUPPORT FOR THE CURRICULUM - MODERN FOREIGN LANGUAGES">BUSINESS SUPPORT FOR THE CURRICULUM - MO 
		<option value="Basic/Intermediate Reporting in SIMS .net">Basic/Intermediate Reporting in SIMS .ne 
		<option value="Behaviour Management for Primary NQTs">Behaviour Management for Primary NQTs 
		<option value="Behaviour Management for Primary Support Staff (HLTAs or Cover Supervisors)">Behaviour Management for Primary Support 
		<option value="Behaviour Management for Secondary NQTs">Behaviour Management for Secondary NQTs 
		<option value="Behaviour Management for Secondary Support Staff (HLTAs or Cover Supervisors)">Behaviour Management for Secondary Suppo 
		<option value="Brighton & Hove Healthy Schools Conference">Brighton & Hove Healthy Schools Conferen 
		<option value="Brighton &Hove Developing School Council Training">Brighton &Hove Developing School Council 
		<option value="CHAIRING FOR PROSPECTIVE CHAIRS">CHAIRING FOR PROSPECTIVE CHAIRS 
		<option value="CHAIRING SKILLS: EXPERIENCED CHAIRS">CHAIRING SKILLS: EXPERIENCED CHAIRS 
		<option value="CHAIRING SKILLS:INEXPERIENCED CHAIRS">CHAIRING SKILLS:INEXPERIENCED CHAIRS 
		<option value="CHAIRS' FORUM">CHAIRS' FORUM 
		<option value="CHILD PROTECTION AWARENESS UPDATE">CHILD PROTECTION AWARENESS UPDATE 
		<option value="CHILD PROTECTION ISSUES">CHILD PROTECTION ISSUES 
		<option value="CHILDREN WITH EAL (ENGLISH AS AN ADDITIONAL LANGUAGE)  IN THE RECEPTION CLASS">CHILDREN WITH EAL (ENGLISH AS AN ADDITIO 
		<option value="CHURCH OF ENGLAND:ROLES & RESPONSIBILITIES IN CE SCHOOLS">CHURCH OF ENGLAND:ROLES & RESPONSIBILITI 
		<option value="CIRCLE TIME SUPPORT GROUP">CIRCLE TIME SUPPORT GROUP 
		<option value="CLERKS' FORUM">CLERKS' FORUM 
		<option value="CLERKSâ AUTUMN FORUM  - MANAGING INFORMATION">CLERKSâ AUTUMN FORUM  - MANAGING INFORMA 
		<option value="CO-ORDINATING ASSESSMENT IN INFANT, JUNIOR AND PRIMARY SCHOOLS">CO-ORDINATING ASSESSMENT IN INFANT, JUNI 
		<option value="COMMITTEE CLERKING FOR GOVERNORS">COMMITTEE CLERKING FOR GOVERNORS 
		<option value="CONNEXIONS">CONNEXIONS 
		<option value="CPD Co-ordinatorsâ Updates">CPD Co-ordinatorsâ Updates 
		<option value="CREATING A LEARNING CULTURE THROUGH FORMATIVE ASSESSMENT STRATEGIES">CREATING A LEARNING CULTURE THROUGH FORM 
		<option value="CULTIVATING CREATIVITY IN THE FOUNDATION STAGE IN SCHOOLS">CULTIVATING CREATIVITY IN THE FOUNDATION 
		<option value="CURRICULUM UPDATE IN SPECIAL SCHOOLS">CURRICULUM UPDATE IN SPECIAL SCHOOLS 
		<option value="Calculating in the Foundation Stage (Children Aged 3 â 5)">Calculating in the Foundation Stage (Chi 
		<option value="Child Development: How Children Learn and Develop in the Early Years">Child Development: How Children Learn an 
		<option value="Child Protection for Designated Persons">Child Protection for Designated Persons 
		<option value="Child Protection for NQTs">Child Protection for NQTs 
		<option value="Child Protection for School Support Staff">Child Protection for School Support Staf 
		<option value="Child Protection:  Headteachersâ Roles & Responsibilities">Child Protection:  Headteachersâ Roles & 
		<option value="Classroom Observation for Performance Management, Subject Evaluation and Monitoring">Classroom Observation for Performance Ma 
		<option value="Clerksâ Christmas Forum">Clerksâ Christmas Forum 
		<option value="Common Transfer File (STAR part 2)">Common Transfer File (STAR part 2) 
		<option value="Control Technology Workshops">Control Technology Workshops 
		<option value="Control of Substances Hazardous to Health (COSHH)">Control of Substances Hazardous to Healt 
		<option value="Creative Use of ICT in the Foundation Stage and Key Stage 1">Creative Use of ICT in the Foundation St 
		<option value="Creative Workshops for the Foundation Stage (Children Aged 3 â 5)">Creative Workshops for the Foundation St 
		<option value="Current Research in Early Years">Current Research in Early Years 
		<option value="DATA HANDLING WITH ICT IN HUMANITIES ">DATA HANDLING WITH ICT IN HUMANITIES 
		<option value="DATA-LOGGING IN THE FIELD ">DATA-LOGGING IN THE FIELD 
		<option value="DESIGNATED GOVERNORS WORKSHOP">DESIGNATED GOVERNORS WORKSHOP 
		<option value="DEVELOPING A SCHOOL-BASED INDUCTION PROGRAMME FOR NEW GOVERNORS & CLERKS">DEVELOPING A SCHOOL-BASED INDUCTION PROG 
		<option value="DEVELOPING CREATIVE THINKING IN MATHEMATICS">DEVELOPING CREATIVE THINKING IN MATHEMAT 
		<option value="DEVELOPING EAL POLICY AND PRACTICE IN YOUR SCHOOL">DEVELOPING EAL POLICY AND PRACTICE IN YO 
		<option value="DEVELOPING EXTENDED SCHOOLS">DEVELOPING EXTENDED SCHOOLS 
		<option value="DEVELOPING LITERACY AND ICT">DEVELOPING LITERACY AND ICT 
		<option value="DEVELOPING POLICY FOR GIFTED AND TALENTED PROVISION">DEVELOPING POLICY FOR GIFTED AND TALENTE 
		<option value="DEVELOPING SKILLS IN ART AND DESIGN â AN INTRODUCTION TO 3D WORK">DEVELOPING SKILLS IN ART AND DESIGN â AN 
		<option value="DEVELOPING SKILLS IN ART AND DESIGN â AN INTRODUCTION TO PRINTMAKING AND TEXTILES">DEVELOPING SKILLS IN ART AND DESIGN â AN 
		<option value="DIGGING UP THE PAST: LEARNING THROUGH HISTORY: UPDATE AND CROSS CURRICULAR LINKS">DIGGING UP THE PAST: LEARNING THROUGH HI 
		<option value="DRUG AND ALCOHOL EDUCATION & DRUG RELATED SITUATIONS ">DRUG AND ALCOHOL EDUCATION & DRUG RELATE 
		<option value="Deputy Headteacher Development Programme">Deputy Headteacher Development Programme 
		<option value="Developing Awareness of Cultures and Beliefs in the Foundation Stage (Children Aged 3 - 5)">Developing Awareness of Cultures and Bel 
		<option value="Developing Creative Thinking in Mathematics">Developing Creative Thinking in Mathemat 
		<option value="Developing Language through Art and Design">Developing Language through Art and Desi 
		<option value="Developing Problem Solving Skills for Children in the Foundation Stage (Children Aged 3 â 5)">Developing Problem Solving Skills for Ch 
		<option value="Developing Teaching and Learning in Art">Developing Teaching and Learning in Art 
		<option value="Developing Teaching and Learning in Design & Technology">Developing Teaching and Learning in Desi 
		<option value="Developing Teaching and Learning in Geography">Developing Teaching and Learning in Geog 
		<option value="Developing Teaching and Learning in History">Developing Teaching and Learning in Hist 
		<option value="Developing Teaching and Learning in Music">Developing Teaching and Learning in Musi 
		<option value="Developing Teaching and Learning in Physical Education">Developing Teaching and Learning in Phys 
		<option value="Developing Teaching and Learning in Religious Education">Developing Teaching and Learning in Reli 
		<option value="EARLY YEARS">EARLY YEARS 
		<option value="EBSD DROP IN SESSIONS">EBSD DROP IN SESSIONS 
		<option value="EFFECTIVE CLERKING">EFFECTIVE CLERKING 
		<option value="EFFECTIVE CLERKING: NEW CLERKS TO GOVERNORS">EFFECTIVE CLERKING: NEW CLERKS TO GOVERN 
		<option value="EFFECTIVE LESSONS IN SCIENCE">EFFECTIVE LESSONS IN SCIENCE 
		<option value="EFFECTIVE SCHOOL IMPROVEMENT THROUGH MONITORING & EVALUATION">EFFECTIVE SCHOOL IMPROVEMENT THROUGH MON 
		<option value="EMPLOYEE RELATIONS & STAFFING MANAGEMENT">EMPLOYEE RELATIONS & STAFFING MANAGEMENT 
		<option value="ENHANCING QUESTIONING">ENHANCING QUESTIONING 
		<option value="ENSURING RACIAL EQUALITY">ENSURING RACIAL EQUALITY 
		<option value="EQUALITIES AWARENESS FOR GOVERNORS">EQUALITIES AWARENESS FOR GOVERNORS 
		<option value="EVALUATING AND DEVELOPING GIFTED AND TALENTED PROVISION  ">EVALUATING AND DEVELOPING GIFTED AND TAL 
		<option value="EVERY CHILD MATTERS:CHANGE FOR CHILDREN">EVERY CHILD MATTERS:CHANGE FOR CHILDREN 
		<option value="EXCLUDING PUPILS">EXCLUDING PUPILS 
		<option value="EXPLORING GOVERNORS' RESPONSIBILITIES FOR SEN">EXPLORING GOVERNORS' RESPONSIBILITIES FO 
		<option value="EXTENDED SERVICES IN AND AROUND SCHOOLS">EXTENDED SERVICES IN AND AROUND SCHOOLS 
		<option value="Early Literacy Support (ELS)">Early Literacy Support (ELS) 
		<option value="Early Professional Development â Primary (for teachers in their second year of teaching)">Early Professional Development â Primary 
		<option value="Early Professional Development â Primary (for teachers in their third year of teaching)">Early Professional Development â Primary 
		<option value="Early Professional Development â Secondary (for teachers in their second year of teaching)">Early Professional Development â Seconda 
		<option value="Early Professional Development â Secondary (for teachers in their third year of teaching)">Early Professional Development â Seconda 
		<option value="Educational Visitsâ Co-ordinator (Full Course)">Educational Visitsâ Co-ordinator (Full C 
		<option value="Educational Visitsâ Co-ordinator Update Training">Educational Visitsâ Co-ordinator Update 
		<option value="End Of Key Stage:Secondary Schools">End Of Key Stage:Secondary Schools 
		<option value="End of Key Stage Results">End of Key Stage Results 
		<option value="Engaging Learners in Mathematical Thinking">Engaging Learners in Mathematical Thinki 
		<option value="English Subject Leadersâ Conference">English Subject Leadersâ Conference 
		<option value="English Subject Leadersâ Development Meeting 1">English Subject Leadersâ Development Mee 
		<option value="English Subject Leadersâ Development Meeting 2">English Subject Leadersâ Development Mee 
		<option value="Enhancing the Climate for Learning as part of the Secondary Behaviour and Attendance Strategy">Enhancing the Climate for Learning as pa 
		<option value="Exam Results: Importing and Analysing">Exam Results: Importing and Analysing 
		<option value="FEEDBACK">FEEDBACK 
		<option value="FINANCIAL MANAGEMENT - SESSION 2">FINANCIAL MANAGEMENT - SESSION 2 
		<option value="FISCHER FAMILY TRUST PERFORMANCE DATA">FISCHER FAMILY TRUST PERFORMANCE DATA 
		<option value="FOCUSED SCHOOL VISITS">FOCUSED SCHOOL VISITS 
		<option value="FRESH APPROACHES TO MANAGING CHALLENGING BEHAVIOUR: AN INCLUSIVE SOLUTIONS TRAINING DAY ">FRESH APPROACHES TO MANAGING CHALLENGING 
		<option value="FUNDING FOR CHILDREN WITH SEN">FUNDING FOR CHILDREN WITH SEN 
		<option value="FURTHER DEVELOPMENT OF BEHAVIOUR MANAGEMENT SKILLS IN SECONDARY SCHOOLS">FURTHER DEVELOPMENT OF BEHAVIOUR MANAGEM 
		<option value="File Management">File Management 
		<option value="Fire Risk Assessorsâ Course">Fire Risk Assessorsâ Course 
		<option value="First Aid at Work â 4 Day Qualification">First Aid at Work â 4 Day Qualification 
		<option value="First-Aid at Work Recertification Course (2-Day)">First-Aid at Work Recertification Course 
		<option value="First-Aid â Appointed Persons">First-Aid â Appointed Persons 
		<option value="Foundation Stage Planning, Observation, Assessment and Record Keeping in Schools (Children Aged 3 â 5)">Foundation Stage Planning, Observation, 
		<option value="Further Literacy Support (FLS)">Further Literacy Support (FLS) 
		<option value="Future School Leadership">Future School Leadership 
		<option value="GIFTED AND TALENTED MINI-CONFERENCE">GIFTED AND TALENTED MINI-CONFERENCE 
		<option value="GOVERNANCE ISSUES IN SECONDARY SCHOOLS">GOVERNANCE ISSUES IN SECONDARY SCHOOLS 
		<option value="GOVERNORS' BRIEFING">GOVERNORS' BRIEFING 
		<option value="GOVERNORS' NETWORK MEETING">GOVERNORS' NETWORK MEETING 
		<option value="Games and Visuals Workshop">Games and Visuals Workshop 
		<option value="Getting Started with Primary Languages - Session 3 (of 3)">Getting Started with Primary Languages - 
		<option value="Getting Started with Primary Languages â Session 1 (of 3)">Getting Started with Primary Languages â 
		<option value="Getting Started with Primary Languages â Session 2 (of 3)">Getting Started with Primary Languages â 
		<option value="Gifted and Talented â Introduction to the Institutional and Classroom Quality Standards">Gifted and Talented â Introduction to th 
		<option value="Gifted and Talented â Using Data to Improve Provision">Gifted and Talented â Using Data to Impr 
		<option value="HANDS ON SUPPORT - HISTORY">HANDS ON SUPPORT - HISTORY 
		<option value="HANDS ON SUPPORT ICT IN HISTORY">HANDS ON SUPPORT ICT IN HISTORY 
		<option value="HOMEWORK GUIDANCE">HOMEWORK GUIDANCE 
		<option value="HOW TO MAKE YOUR MEETINGS MORE PRODUCTIVE : ">HOW TO MAKE YOUR MEETINGS MORE PRODUCTIV 
		<option value="Headteachers' Business Conference">Headteachers' Business Conference 
		<option value="Health and Safety â Roles and Responsibilities for Headteachers">Health and Safety â Roles and Responsibi 
		<option value="Healthy School Network Meeting">Healthy School Network Meeting 
		<option value="Helping Pupils With ASD and Challenging Behaviour">Helping Pupils With ASD and Challenging 
		<option value="Higher Level Teaching Assistant (HLTA) Briefing Session for Training & Assessment Programmes">Higher Level Teaching Assistant (HLTA) B 
		<option value="How Am I Doing Then?  Assessing and Evaluating RE">How Am I Doing Then?  Assessing and Eval 
		<option value="ICT Co-ordinatorsâ Support Group - Assessing ICT">ICT Co-ordinatorsâ Support Group - Asses 
		<option value="ICT Subject Leader Day â Autumn Term">ICT Subject Leader Day â Autumn Term 
		<option value="ICT Subject Leader Day â Spring Term">ICT Subject Leader Day â Spring Term 
		<option value="ICT Subject Leaders â Summer Term">ICT Subject Leaders â Summer Term 
		<option value="ICT TO SUPPORT DESIGN AND TECHNOLOGY">ICT TO SUPPORT DESIGN AND TECHNOLOGY 
		<option value="ICT for Teaching Assistants">ICT for Teaching Assistants 
		<option value="IMPROVING PUPIL ATTAINMENT IN GCSE ENGLISH">IMPROVING PUPIL ATTAINMENT IN GCSE ENGLI 
		<option value="INCLUSIVE EDUCATION">INCLUSIVE EDUCATION 
		<option value="INDUCTION 1: THE CONTEXT OF GOVERNANCE">INDUCTION 1: THE CONTEXT OF GOVERNANCE 
		<option value="INDUCTION 2: THE CRITICAL FRIEND">INDUCTION 2: THE CRITICAL FRIEND 
		<option value="INDUCTION 3: ENSURING ACCOUNTABILITY">INDUCTION 3: ENSURING ACCOUNTABILITY 
		<option value="INDUCTION 4: EXPANDING THE ISSUES IN THE B&H CONTEXT">INDUCTION 4: EXPANDING THE ISSUES IN THE 
		<option value="INDUCTION FOR NEW SENCOS">INDUCTION FOR NEW SENCOS 
		<option value="INDUCTION PLUS - 6 MONTHS ON">INDUCTION PLUS - 6 MONTHS ON 
		<option value="INFUSING ASSESSMENT FOR LEARNING INTO TEACHING">INFUSING ASSESSMENT FOR LEARNING INTO TE 
		<option value="INTERACTING WITH MATHEMATICS IN YEAR 9 (1)  (CORE)">INTERACTING WITH MATHEMATICS IN YEAR 9 ( 
		<option value="INTERACTING WITH MATHEMATICS IN YEAR 9 (2)  (CORE)">INTERACTING WITH MATHEMATICS IN YEAR 9 ( 
		<option value="Implementing the Renewed Framework for Teaching Literacy">Implementing the Renewed Framework for T 
		<option value="Implementing the Renewed Framework for Teaching Mathematics">Implementing the Renewed Framework for T 
		<option value="Including Pupils with Speech and Language Difficulties in the Foundation Stage Classroom  (1 Course over 2 half days)">Including Pupils with Speech and Languag 
		<option value="Induction Training For New Heads, Governors & Clerks to Governors">Induction Training For New Heads, Govern 
		<option value="Induction Training for Teaching Assistants in Primary School - Understanding How Children Learn">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Primary Schools - All Modules">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Primary Schools - ICT">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Primary Schools - Inclusion - English as an additional language">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Primary Schools - Inclusion - Special Educational Needs">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Primary Schools - Literacy">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Primary Schools - Mathematics">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Primary Schools - Promoting Positive Behaviour">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Primary Schools - Role & Context">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Secondary Schools - All Modules">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Secondary Schools - English as an Additional Language">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Secondary Schools - Literacy">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Secondary Schools - Mathematics">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Secondary Schools - Promoting Positive Behaviour">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Secondary Schools - Role & Context">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Secondary Schools - Science">Induction Training for Teaching Assistan 
		<option value="Induction Training for Teaching Assistants in Secondary Schools - Special Educational Needs">Induction Training for Teaching Assistan 
		<option value="Internet Introduction">Internet Introduction 
		<option value="Introduction to Assessment Manager & End of Key Stage Processes">Introduction to Assessment Manager & End 
		<option value="Introduction to Autistic Spectrum Disorder (ASD) On-Line Training">Introduction to Autistic Spectrum Disord 
		<option value="Introduction to Communication, Language And Literacy in the Foundation Stage (Children Aged 3 â 5)">Introduction to Communication, Language 
		<option value="Introduction to Creative Development in the Foundation Stage (Children Aged 3 â 5)">Introduction to Creative Development in 
		<option value="Introduction to ICT">Introduction to ICT 
		<option value="Introduction to Knowledge and Understanding of the World in the Foundation Stage (Children Aged 3 â 5)">Introduction to Knowledge and Understand 
		<option value="Introduction to Mathematical Development in the Foundation Stage (Children Aged 3 - 5) ">Introduction to Mathematical Development 
		<option value="Introduction to PCs">Introduction to PCs 
		<option value="Introduction to Personal, Social And Emotional Development in the Foundation Stage (Children Aged 3 â 5)">Introduction to Personal, Social And Emo 
		<option value="Introduction to Physical Development in the Foundation Stage (Children Aged 3 - 5)">Introduction to Physical Development in 
		<option value="Introduction to the Foundation Stage (Children Aged 3 â 5)">Introduction to the Foundation Stage (Ch 
		<option value="Introductory Training for School Support Staff - All Modules">Introductory Training for School Support 
		<option value="Introductory Training for School Support Staff - ICT">Introductory Training for School Support 
		<option value="Introductory Training for School Support Staff - Inclusion SEN & EAL">Introductory Training for School Support 
		<option value="Introductory Training for School Support Staff - Promoting Positive Behaviour ">Introductory Training for School Support 
		<option value="Introductory Training for School Support Staff - Risk & Reflection">Introductory Training for School Support 
		<option value="Introductory Training for School Support Staff - Role and Context">Introductory Training for School Support 
		<option value="KEY STAGE 3 UPDATE">KEY STAGE 3 UPDATE 
		<option value="KS1 Statutory Assessment 2007">KS1 Statutory Assessment 2007 
		<option value="KS1 TEACHER ASSESSMENT CHANGES FOR 2006">KS1 TEACHER ASSESSMENT CHANGES FOR 2006 
		<option value="KS2 STATUTORY ASSESSMENT ARRANGMENTS 2006">KS2 STATUTORY ASSESSMENT ARRANGMENTS 200 
		<option value="Key Stage 2: Using Objects to Inspire Learning">Key Stage 2: Using Objects to Inspire Le 
		<option value="LDC Test">LDC Test 
		<option value="LEADING IN LEARNING - LAUNCH OF WHOLE SCHOOL INITIATIVE">LEADING IN LEARNING - LAUNCH OF WHOLE SC 
		<option value="LITERACY AND LEARNING â THE NEXT STEPS">LITERACY AND LEARNING â THE NEXT STEPS 
		<option value="LITERACY CO-ORDINATORSâ CONFERENCE">LITERACY CO-ORDINATORSâ CONFERENCE 
		<option value="LOCAL AUTHORITY GOVERNORS' MEETING">LOCAL AUTHORITY GOVERNORS' MEETING 
		<option value="LOOKED AFTER CHILDREN">LOOKED AFTER CHILDREN 
		<option value="Leading Behaviour Improvement in Secondary Schools">Leading Behaviour Improvement in Seconda 
		<option value="Leading Behaviour Improvement in Secondary Schools 2">Leading Behaviour Improvement in Seconda 
		<option value="Leading Developments In Mathematics">Leading Developments In Mathematics 
		<option value="Leading Developments: Assessing and Tracking Pupilsâ Progress in Mathematics">Leading Developments: Assessing and Trac 
		<option value="Leading Developments: Exploring Pedagogy in Mathematics">Leading Developments: Exploring Pedagogy 
		<option value="Learn the Child - Attachment, Trauma and Loss Supporting the education of Looked After Children and Children in Need">Learn the Child - Attachment, Trauma and 
		<option value="Learning through Drawing">Learning through Drawing 
		<option value="Listening To Children in the Foundation Stage (Children Aged 3 â 5)">Listening To Children in the Foundation 
		<option value="Literacy Coordinatorsâ Conference">Literacy Coordinatorsâ Conference 
		<option value="Literacy Coordinatorsâ Network Meeting">Literacy Coordinatorsâ Network Meeting 
		<option value="Literacy Development for More Advanced Bilingual Learners in KS2">Literacy Development for More Advanced B 
		<option value="Lotus Notes (advanced email)">Lotus Notes (advanced email) 
		<option value="Lotus Notes (calendar functions)">Lotus Notes (calendar functions) 
		<option value="Lotus Notes Introduction">Lotus Notes Introduction 
		<option value="MAKATON ENHANCEMENT COURSE (3 DAY COURSE)">MAKATON ENHANCEMENT COURSE (3 DAY COURSE 
		<option value="MAKATON Foundation Course (Foundation Stage) (2 Days)">MAKATON Foundation Course (Foundation St 
		<option value="MAKING AND USING ICT RESOURCES FOR MFL ">MAKING AND USING ICT RESOURCES FOR MFL 
		<option value="MAKING THE GRADE - AN INTRODUCTION TO THE AUDIT PROCESS">MAKING THE GRADE - AN INTRODUCTION TO TH 
		<option value="MANAGING YOUR BUILDINGS">MANAGING YOUR BUILDINGS 
		<option value="MATHEMATICS CO-ORDINATORSâ NETWORK MEETING">MATHEMATICS CO-ORDINATORSâ NETWORK MEETI 
		<option value="MATHEMATICS SUBJECT KNOWLEDGE COURSE: KEY STAGE 1">MATHEMATICS SUBJECT KNOWLEDGE COURSE: KE 
		<option value="MATHEMATICS SUBJECT KNOWLEDGE COURSE: KS2">MATHEMATICS SUBJECT KNOWLEDGE COURSE: KS 
		<option value="MEETING THE CHALLENGE OF THE MORE ABLE, GIFTED AND TALENTED">MEETING THE CHALLENGE OF THE MORE ABLE, 
		<option value="MEETING THE NEEDS OF PUPILS WITH AUTISTIC SPECTRUM DISORDER AND CHALLENGING BEHAVIOUR">MEETING THE NEEDS OF PUPILS WITH AUTISTI 
		<option value="MINUTE TAKING FOR CLERKS">MINUTE TAKING FOR CLERKS 
		<option value="MONITORING SEN, INCLUSION & DISABILTY ISSUES IN YOUR SCHOOL">MONITORING SEN, INCLUSION & DISABILTY IS 
		<option value="MULTICULTURAL WORKSHOP">MULTICULTURAL WORKSHOP 
		<option value="MUSIC IN THE INFANT CLASSROOM (FOUNDATION AND KS1)">MUSIC IN THE INFANT CLASSROOM (FOUNDATIO 
		<option value="MUSIC IN THE JUNIOR CLASSROOM">MUSIC IN THE JUNIOR CLASSROOM 
		<option value="Makaton Enhancement Course (3 days)">Makaton Enhancement Course (3 days) 
		<option value="Makaton Foundation Course (2 days)">Makaton Foundation Course (2 days) 
		<option value="Mathematics Coordinatorsâ Conference">Mathematics Coordinatorsâ Conference 
		<option value="Mathematics Coordinatorsâ Network Meeting">Mathematics Coordinatorsâ Network Meetin 
		<option value="Maths Outdoors">Maths Outdoors 
		<option value="Meeting the Needs of Children with English as an Additional Language in Reception Classes ">Meeting the Needs of Children with Engli 
		<option value="Microsoft Access 97: Basics">Microsoft Access 97: Basics 
		<option value="Microsoft Excel 97: Charts">Microsoft Excel 97: Charts 
		<option value="Microsoft Excel 97: Database">Microsoft Excel 97: Database 
		<option value="Microsoft Excel 97: Formulas">Microsoft Excel 97: Formulas 
		<option value="Microsoft Excel 97: Intermediate">Microsoft Excel 97: Intermediate 
		<option value="Microsoft Excel 97: Introduction">Microsoft Excel 97: Introduction 
		<option value="Microsoft Excel 97: Plus!">Microsoft Excel 97: Plus! 
		<option value="Microsoft PowerPoint 97 Introduction">Microsoft PowerPoint 97 Introduction 
		<option value="Microsoft Publisher 2000">Microsoft Publisher 2000 
		<option value="Microsoft Word 97: Graphics">Microsoft Word 97: Graphics 
		<option value="Microsoft Word 97: Introduction">Microsoft Word 97: Introduction 
		<option value="Microsoft Word 97: Mail Merge">Microsoft Word 97: Mail Merge 
		<option value="Microsoft Word 97: Styles">Microsoft Word 97: Styles 
		<option value="Microsoft Word 97: Tables">Microsoft Word 97: Tables 
		<option value="Microsoft Word 97: Templates">Microsoft Word 97: Templates 
		<option value="Minute Taking for Clerks">Minute Taking for Clerks 
		<option value="Music at Key Stage One">Music at Key Stage One 
		<option value="Music at Key Stage Two">Music at Key Stage Two 
		<option value="Music at the Foundation Stage">Music at the Foundation Stage 
		<option value="Music in Primary Classes">Music in Primary Classes 
		<option value="Music in the Foundation Stage (Children Aged 3 â 5)">Music in the Foundation Stage (Children 
		<option value="Music: Student Assessment and Transition">Music: Student Assessment and Transition 
		<option value="NATIONAL BEHAVIOUR & ATTENDANCE STRATEGY">NATIONAL BEHAVIOUR & ATTENDANCE STRATEGY 
		<option value="NATIONAL INDUCTION TRAINING FOR NEW HEADS, GOVERNORS & CLERKS TO GOVERNORS">NATIONAL INDUCTION TRAINING FOR NEW HEAD 
		<option value="NEXT STEPS IN THE USE OF ICT FOR MATHEMATICS ">NEXT STEPS IN THE USE OF ICT FOR MATHEMA 
		<option value="NQT Induction Tutor Training">NQT Induction Tutor Training 
		<option value="NQT Network Meetings">NQT Network Meetings 
		<option value="NQT Welcome Evening">NQT Welcome Evening 
		<option value="NQTs â Caring for Your Voice">NQTs â Caring for Your Voice 
		<option value="NURTURE AND SMALL GROUP WORK SUPPORT GROUP">NURTURE AND SMALL GROUP WORK SUPPORT GRO 
		<option value="New (and Acting) Headteachersâ Welcome Day">New (and Acting) Headteachersâ Welcome D 
		<option value="New Deputy Headteacher Induction">New Deputy Headteacher Induction 
		<option value="OH NO, IS IT MY ASSEMBLY AGAIN?! COLLECTIVE WORSHIP UNPACKED ">OH NO, IS IT MY ASSEMBLY AGAIN?! COLLECT 
		<option value="Opportunities to Develop Writing through Role Play in the Foundation Stage (Children Aged 3 â 5)">Opportunities to Develop Writing through 
		<option value="Outdoor Educational Advisersâ Panel Leader Training">Outdoor Educational Advisersâ Panel Lead 
		<option value="Outdoor Play in the Foundation Stage (Children Aged 3 â 5)">Outdoor Play in the Foundation Stage (Ch 
		<option value="PARENT GOVERNOR WORKSHOP">PARENT GOVERNOR WORKSHOP 
		<option value="PARENTS' MEETING">PARENTS' MEETING 
		<option value="PARTNERSHIP WITH PARENTS">PARTNERSHIP WITH PARENTS 
		<option value="PARTNERSHIPS WITH PARENTS & PUPILS">PARTNERSHIPS WITH PARENTS & PUPILS 
		<option value="PERFORMANCE MANAGEMENT">PERFORMANCE MANAGEMENT 
		<option value="PERFORMANCE MANAGEMENT FORUM - SHARING EXPERIENCES">PERFORMANCE MANAGEMENT FORUM - SHARING E 
		<option value="PERSONAL SAFETY">PERSONAL SAFETY 
		<option value="PLANNING AND TEACHING MATHEMATICS">PLANNING AND TEACHING MATHEMATICS 
		<option value="PLANNING, OBSERVATION, ASSESSMENT AND RECORD KEEPING IN SCHOOLS ">PLANNING, OBSERVATION, ASSESSMENT AND RE 
		<option value="PLASC for Primary Schools">PLASC for Primary Schools 
		<option value="PLASC for Special Schools">PLASC for Special Schools 
		<option value="POLICY & PROCEDURES FOR CLERKS TO GOVERNORS">POLICY & PROCEDURES FOR CLERKS TO GOVERN 
		<option value="PRACTICAL GUIDANCE ON THE HEADTEACHER'S PERFORMANCE MANAGEMENT REVIEW">PRACTICAL GUIDANCE ON THE HEADTEACHER'S 
		<option value="PRIMARY ICT CO-ORDINATORSâ ANNUAL CONFERENCE ">PRIMARY ICT CO-ORDINATORSâ ANNUAL CONFER 
		<option value="PRIMARY ICT CO-ORDINATORSâ SUPPORT GROUP">PRIMARY ICT CO-ORDINATORSâ SUPPORT GROUP 
		<option value="PRIMARY INCLUSION â SUPPORT FOR SELF-EVALUATION ">PRIMARY INCLUSION â SUPPORT FOR SELF-EVA 
		<option value="PRIMARY LEADERSHIP PROGRAMME ">PRIMARY LEADERSHIP PROGRAMME 
		<option value="PRIMARY PSHE CO-ORDINATORS CONFERENCE-TOWARDS AN EMOTIONALLY HEALTHY PRIMARY SCHOOL">PRIMARY PSHE CO-ORDINATORS CONFERENCE-TO 
		<option value="PRIMARY STRATEGY IN BRIGHTON & HOVE">PRIMARY STRATEGY IN BRIGHTON & HOVE 
		<option value="PRINCIPLES FOR TEACHING THINKING">PRINCIPLES FOR TEACHING THINKING 
		<option value="PROMOTING SPIRITUAL, MORAL, SOCIAL & CULTURAL DEVELOPMENT & CITIZENSHIP IN CE SCHOOLS">PROMOTING SPIRITUAL, MORAL, SOCIAL & CUL 
		<option value="PSHE Consortium">PSHE Consortium 
		<option value="PSHE in The Primary School â Teaching Sensitive Issues">PSHE in The Primary School â Teaching Se 
		<option value="PUPIL ACHIEVEMENT TRACKER">PUPIL ACHIEVEMENT TRACKER 
		<option value="PUPILS WITH SPEECH AND LANGUAGE DIFFICULTIES: - FURTHER TRAINING FOR LEARNING SUPPORT ASSISTANTS WORKING WITH PUPILS WITH SPEECH AND LANGUAGE DIFFICULTIES IN PRIMARY SCHOOL">PUPILS WITH SPEECH AND LANGUAGE DIFFICUL 
		<option value="PUPILS WITH SPEECH AND LANGUAGE DIFFICULTIESâ INITIAL TRAINING FOR LEARNING SUPPORT ASSISTANTS WORKING WITH PUPILS WITH SPEECH AND LANGUAGE DIFFICULTIES IN PRIMARY SCHOOL SETTINGS">PUPILS WITH SPEECH AND LANGUAGE DIFFICUL 
		<option value="Performance Analysis for Key Stage 1">Performance Analysis for Key Stage 1 
		<option value="Performance Management: Good Practice for Managers of School Support Staff and School Support Staff who are Managers">Performance Management: Good Practice fo 
		<option value="Persona Dolls in Action">Persona Dolls in Action 
		<option value="Planning an Enterprise Activity for KS4">Planning an Enterprise Activity for KS4 
		<option value="Planning for Progression in Primary Languages">Planning for Progression in Primary Lang 
		<option value="Practical Ideas for Stories, Songs and Rhymes with a Focus on Bilingual Learners">Practical Ideas for Stories, Songs and R 
		<option value="Practical Ideas for Using a Computer in the Foundation Stage for Maintained and Independent Schools (Children Aged 3 â 5)">Practical Ideas for Using a Computer in 
		<option value="Primary Behaviour: Auditing Behaviour Across the School">Primary Behaviour: Auditing Behaviour Ac 
		<option value="Primary Behaviour: Writing an Effective Behaviour Policy">Primary Behaviour: Writing an Effective 
		<option value="Primary ICT Co-ordinatorsâ Annual Conference">Primary ICT Co-ordinatorsâ Annual Confer 
		<option value="Primary ICT Co-ordinatorsâ Support Group - Planning for ICT Development">Primary ICT Co-ordinatorsâ Support Group 
		<option value="Primary Midday Supervisory Assistant (MSA) Conference">Primary Midday Supervisory Assistant (MS 
		<option value="Primary/Secondary Cluster Training for Primary Languages - Session 1 (of 2)">Primary/Secondary Cluster Training for P 
		<option value="Primary/Secondary Cluster Training for Primary Languages - Session 2 (of 2)">Primary/Secondary Cluster Training for P 
		<option value="Promoting Positive Behaviour in Foundation Stage Settings (Children Aged 3 - 5)">Promoting Positive Behaviour in Foundati 
		<option value="Promoting Speech and Language Development and Supporting Children with Difficulties in the Early Years">Promoting Speech and Language Developmen 
		<option value="Provision Mapping for SENCOs">Provision Mapping for SENCOs 
		<option value="Pupils with Speech and Language Difficulties Further Training for Learning Support Assistants Working with Pupils in Primary Schools">Pupils with Speech and Language Difficul 
		<option value="Pupils with Speech and Language Difficulties Initial Training for Learning Support Assistants Working with Pupils in Primary Schools">Pupils with Speech and Language Difficul 
		<option value="RAISEonline">RAISEonline 
		<option value="RAISING ATTAINMENT IN RELIGIOUS EDUCATION">RAISING ATTAINMENT IN RELIGIOUS EDUCATIO 
		<option value="RAISING BOYS' ACHIEVEMENT">RAISING BOYS' ACHIEVEMENT 
		<option value="RE & COLLECTIVE WORSHIP">RE & COLLECTIVE WORSHIP 
		<option value="RECRUITMENT & APPOINTMENT PROCEDURES">RECRUITMENT & APPOINTMENT PROCEDURES 
		<option value="RECRUITMENT & SELECTION">RECRUITMENT & SELECTION 
		<option value="RESOURCES FOR GOVERNORS AND CLERKS">RESOURCES FOR GOVERNORS AND CLERKS 
		<option value="RESPONDING TO COMPLAINTS">RESPONDING TO COMPLAINTS 
		<option value="REVISED ARRANGEMENTS FOR PERFORMANCE MANAGEMENT IN SCHOOLS">REVISED ARRANGEMENTS FOR PERFORMANCE MAN 
		<option value="RISK ASSESSMENT ISSUES FOR GOVERNORS">RISK ASSESSMENT ISSUES FOR GOVERNORS 
		<option value="RUNNING NETWORKS ">RUNNING NETWORKS 
		<option value="Risk Assessorsâ Course">Risk Assessorsâ Course 
		<option value="SAFER RECRUITMENT BRIEFING">SAFER RECRUITMENT BRIEFING 
		<option value="SCHOOL COUNCILS AND PARENT COUNCILS">SCHOOL COUNCILS AND PARENT COUNCILS 
		<option value="SCHOOL IMPROVEMENT PLANNING">SCHOOL IMPROVEMENT PLANNING 
		<option value="SCHOOL SELF-EVALUATION">SCHOOL SELF-EVALUATION 
		<option value="SCHOOL WORKFORCE REFORMS & REMODELLING">SCHOOL WORKFORCE REFORMS & REMODELLING 
		<option value="SCIENCE SUBJECT LEADERSâ MEETING 1: USING DATA FOR EFFECTIVE PROGRESSION ">SCIENCE SUBJECT LEADERSâ MEETING 1: USIN 
		<option value="SCIENCE SUBJECT LEADERSâ MEETING 3:PROGRESSION IN TRANSITION FROM KS2 TO KS3 ">SCIENCE SUBJECT LEADERSâ MEETING 3:PROGR 
		<option value="SCIENCE SUBJECT LEADERSâ MEETING: PLANNING FOR TRANSITION FROM KS3 TO KS4 ">SCIENCE SUBJECT LEADERSâ MEETING: PLANNI 
		<option value="SCIENTIFIC ENQUIRY">SCIENTIFIC ENQUIRY 
		<option value="SEAL/Surestart Conference">SEAL/Surestart Conference 
		<option value="SECONDARY ART CONFERENCE ">SECONDARY ART CONFERENCE 
		<option value="SECONDARY DESIGN AND TECHNOLOGY CONFERENCE">SECONDARY DESIGN AND TECHNOLOGY CONFEREN 
		<option value="SECONDARY GEOGRAPHY CONFERENCE">SECONDARY GEOGRAPHY CONFERENCE 
		<option value="SECONDARY GOVERNORS' BRIEFING">SECONDARY GOVERNORS' BRIEFING 
		<option value="SECONDARY HISTORY CONFERENCE">SECONDARY HISTORY CONFERENCE 
		<option value="SECONDARY ICT SUBJECT LEADERS' MEETING â AUTUMN 2005">SECONDARY ICT SUBJECT LEADERS' MEETING â 
		<option value="SECONDARY ICT SUBJECT LEADERSâ MEETING â SPRING 2006">SECONDARY ICT SUBJECT LEADERSâ MEETING â 
		<option value="SECONDARY ICT SUBJECT LEADERSâ MEETING â SUMMER 2006">SECONDARY ICT SUBJECT LEADERSâ MEETING â 
		<option value="SECONDARY MATHS CONFERENCE: REAL LIFE MATHS ">SECONDARY MATHS CONFERENCE: REAL LIFE MA 
		<option value="SECONDARY MODERN FOREIGN LANGUAGES CONFERENCE ">SECONDARY MODERN FOREIGN LANGUAGES CONFE 
		<option value="SECONDARY MUSIC CONFERENCE">SECONDARY MUSIC CONFERENCE 
		<option value="SECONDARY PHYSICAL EDUCATION CONFERENCE ">SECONDARY PHYSICAL EDUCATION CONFERENCE 
		<option value="SECONDARY PSHE CO-ORDINATORS CONFERENCE">SECONDARY PSHE CO-ORDINATORS CONFERENCE 
		<option value="SECONDARY RELIGIOUS EDUCATION CONFERENCE">SECONDARY RELIGIOUS EDUCATION CONFERENCE 
		<option value="SECONDARY SCIENCE CONFERENCE ">SECONDARY SCIENCE CONFERENCE 
		<option value="SECONDARY STRATEGY - ICT FOR TEACHERS NEW TO ICT">SECONDARY STRATEGY - ICT FOR TEACHERS NE 
		<option value="SECTION 48 INSPECTIONS & CHURCH SCHOOL SELF-EVALUATION">SECTION 48 INSPECTIONS & CHURCH SCHOOL S 
		<option value="SEN & THE DISABILITY ACT">SEN & THE DISABILITY ACT 
		<option value="SEN for NQTs">SEN for NQTs 
		<option value="SIMS & PAT">SIMS & PAT 
		<option value="SIMS .net & SEN Part 2">SIMS .net & SEN Part 2 
		<option value="SIMS Assessment Manager">SIMS Assessment Manager 
		<option value="SIMS Assessment Manager 6 Refresher Workshop">SIMS Assessment Manager 6 Refresher Work 
		<option value="SIMS Assessment Manager Advanced">SIMS Assessment Manager Advanced 
		<option value="SIMS Attendance">SIMS Attendance 
		<option value="SIMS Dinner Money">SIMS Dinner Money 
		<option value="SIMS EXAMS">SIMS EXAMS 
		<option value="SIMS Performance Analysis">SIMS Performance Analysis 
		<option value="SIMS Personnel">SIMS Personnel 
		<option value="SIMS System Manager">SIMS System Manager 
		<option value="SIMS System Manager SQL ">SIMS System Manager SQL 
		<option value="SIMS.net & SEN Part 1">SIMS.net & SEN Part 1 
		<option value="SIMS.net (Refresher or New User)">SIMS.net (Refresher or New User) 
		<option value="SKILLS FOR LIFE INFORMATION SESSION">SKILLS FOR LIFE INFORMATION SESSION 
		<option value="SOCIAL  INTERVENTIONS FOR PUPILS WITH AUTISTIC SPECTRUM DISORDER (CIRCLE OF FRIENDS, SOCIAL STORIES, PLAYGROUND GAMES, SOCIAL SKILLS GROUPS)">SOCIAL  INTERVENTIONS FOR PUPILS WITH AU 
		<option value="SPEAKING, LISTENING AND LEARNING ">SPEAKING, LISTENING AND LEARNING 
		<option value="SPECIAL EDUCATIONAL NEEDS 1: EXPERIENCED GOVERNORS ">SPECIAL EDUCATIONAL NEEDS 1: EXPERIENCED 
		<option value="SPECIAL NEEDS 2: EXPERIENCED GOVERNORS">SPECIAL NEEDS 2: EXPERIENCED GOVERNORS 
		<option value="SPEECH, LANGUAGE & COMMUNICATION DIFFICULTIES-ICAN / DFES JOINT PROFESSIONAL DEVELOPMENT FRAMEWORK (JPDF): FOUNDATION LEVEL TRAINING FOR PRIMARY TEACHERS">SPEECH, LANGUAGE & COMMUNICATION DIFFICU 
		<option value="STEADY BEAT ">STEADY BEAT 
		<option value="SUBJECT-SPECIFIC LITERACY TRAINING - HISTORY">SUBJECT-SPECIFIC LITERACY TRAINING - HIS 
		<option value="SUPPORT GROUP FOR  PROFESSIONALS IN PRIMARY SCHOOLS RESPONSIBLE FOR BEHAVIOUR AND SCHOOL DEVELOPMENT ">SUPPORT GROUP FOR  PROFESSIONALS IN PRIM 
		<option value="SUPPORTING CHILDREN WITH AUTISTIC SPECTRUM DISORDER IN THE PRE-SCHOOL ENVIRONMENT">SUPPORTING CHILDREN WITH AUTISTIC SPECTR 
		<option value="SUPPORTING CHILDREN WITH GAPS IN THEIR MATHEMATICAL UNDERSTANDING: WAVE 3 MATHEMATICS">SUPPORTING CHILDREN WITH GAPS IN THEIR M 
		<option value="SUPPORTING HEARING IMPAIRED PUPILS IN PRIMARY SCHOOLS">SUPPORTING HEARING IMPAIRED PUPILS IN PR 
		<option value="SUPPORTING HEARING IMPAIRED PUPILS IN SCHOOLS - A COURSE FOR LEARNING SUPPORT ASSISTANTS">SUPPORTING HEARING IMPAIRED PUPILS IN SC 
		<option value="SUPPORTING PUPILS WITH AUTISTIC SPECTRUM DISORDER IN THE MAINSTREAM ENVIRONMENT">SUPPORTING PUPILS WITH AUTISTIC SPECTRUM 
		<option value="SUPPORTING SCHOOL IMPROVEMENT">SUPPORTING SCHOOL IMPROVEMENT 
		<option value="SUPPORTING STAFF DEVELOPMENT">SUPPORTING STAFF DEVELOPMENT 
		<option value="SUPPORTING VISUALLY IMPAIRED PUPILS IN SCHOOLS">SUPPORTING VISUALLY IMPAIRED PUPILS IN S 
		<option value="School Census (Primary Schools)">School Census (Primary Schools) 
		<option value="School Census (Secondary Schools)">School Census (Secondary Schools) 
		<option value="School Census (Special Schools)">School Census (Special Schools) 
		<option value="School First-Aid Recertification Course (1 - Day)">School First-Aid Recertification Course 
		<option value="School Support Staff Network Group">School Support Staff Network Group 
		<option value="Schools ICT Induction Training ">Schools ICT Induction Training 
		<option value="Science Subject Leadersâ Development Day 1">Science Subject Leadersâ Development Day 
		<option value="Science Subject Leadersâ Development Day 2">Science Subject Leadersâ Development Day 
		<option value="Science Subject Leadersâ Development Day 3">Science Subject Leadersâ Development Day 
		<option value="Secondary Art & Design: Using Sketchbooks in a Museum & Art Gallery ">Secondary Art & Design: Using Sketchbook 
		<option value="Secondary PSHE Co-ordinators Development Day">Secondary PSHE Co-ordinators Development 
		<option value="Small World Play in the Foundation Stage (Children Aged 3 â 5)">Small World Play in the Foundation Stage 
		<option value="Social and emotional aspects of learning network meetings">Social and emotional aspects of learning 
		<option value="Speech, Language and Communication Difficulties: ICAN/DfES Joint Professional Development Framework (JPDF): Foundation Level (for Primary Teachers (3 Day Course)">Speech, Language and Communication Diffi 
		<option value="Support Staff Welcome Evening">Support Staff Welcome Evening 
		<option value="Supporting Bilingual Learners in the Foundation Stage">Supporting Bilingual Learners in the Fou 
		<option value="Supporting Curriculum ICT 1">Supporting Curriculum ICT 1 
		<option value="Supporting Curriculum ICT 2 ">Supporting Curriculum ICT 2 
		<option value="Supporting Hearing Impaired Pupils in Primary Schools">Supporting Hearing Impaired Pupils in Pr 
		<option value="Supporting Hearing Impaired Pupils in Schools â A Course for Teaching Assistants">Supporting Hearing Impaired Pupils in Sc 
		<option value="Supporting Hearing Impaired Pupils in The Foundation Stage">Supporting Hearing Impaired Pupils in Th 
		<option value="Supporting Special Educational Needs in Foundation Stage Settings">Supporting Special Educational Needs in 
		<option value="Supporting Visually Impaired Pupils in Schools">Supporting Visually Impaired Pupils in S 
		<option value="Sustained Shared Communication And Thinking In The Foundation Stage (Children Aged 3-5)">Sustained Shared Communication And Think 
		<option value="TAKING THE CHAIR - EFFECTIVE MEETINGS">TAKING THE CHAIR - EFFECTIVE MEETINGS 
		<option value="TAKING THE CHAIR - GETTING THE MOST FROM YOUR TEAM">TAKING THE CHAIR - GETTING THE MOST FROM 
		<option value="TAKING THE CHAIR 4: FOR GOVERNORS WHO ARE NEW TO THE MODULES">TAKING THE CHAIR 4: FOR GOVERNORS WHO AR 
		<option value="TAKING THE CHAIR 4: FOR GOVERNORS WHO HAVE ATTENDED PREVIOUS MODULES">TAKING THE CHAIR 4: FOR GOVERNORS WHO HA 
		<option value="TAKING THE CHAIR: ENSURING ACCOUNTABILITY">TAKING THE CHAIR: ENSURING ACCOUNTABILIT 
		<option value="TAKING THE CHAIR: LEADING & MANAGING THE WORK OF THE GOVERNING BODY">TAKING THE CHAIR: LEADING & MANAGING THE 
		<option value="TAKING THE CHAIR: SUPPORTING STRATEGIC LEADERSHIP">TAKING THE CHAIR: SUPPORTING STRATEGIC L 
		<option value="TEACHER & STAFF GOVERNOR WORKSHOP">TEACHER & STAFF GOVERNOR WORKSHOP 
		<option value="TEACHING & LEARNING RESPONSIBILTY PAYMENTS BRIEFING FOR GOVERNORS">TEACHING & LEARNING RESPONSIBILTY PAYMEN 
		<option value="TEACHING ENGLISH IN YEAR 7  (CORE)">TEACHING ENGLISH IN YEAR 7  (CORE) 
		<option value="TEACHING ENGLISH IN YEAR 9  (CORE)">TEACHING ENGLISH IN YEAR 9  (CORE) 
		<option value="TEACHING THINKING - REFLECTION">TEACHING THINKING - REFLECTION 
		<option value="TEN STEPS TO BRAIN-BASED LEARNING IN THE EARLY YEARS">TEN STEPS TO BRAIN-BASED LEARNING IN THE 
		<option value="THE OFSTED FRAMEWORK">THE OFSTED FRAMEWORK 
		<option value="THE SCHOOL'S BUDGET">THE SCHOOL'S BUDGET 
		<option value="TIME MANAGEMENT">TIME MANAGEMENT 
		<option value="TRAINING & DEVELOPMENT GOVERNORS' MEETING">TRAINING & DEVELOPMENT GOVERNORS' MEETIN 
		<option value="TRANSITION IN MUSIC ">TRANSITION IN MUSIC 
		<option value="TRANSITION TRAINING IN SCIENCE  (CORE)">TRANSITION TRAINING IN SCIENCE  (CORE) 
		<option value="Teaching & Learning Primary Languages using the KS2 Framework for Languages â Day 2">Teaching & Learning Primary Languages us 
		<option value="Teaching Assistants Supporting the Assessment Process in the Reception Class">Teaching Assistants Supporting the Asses 
		<option value="Teaching Assistants' Network Group">Teaching Assistants' Network Group 
		<option value="The Foundation Stage Profile (Children Aged 3 â 5)">The Foundation Stage Profile (Children A 
		<option value="The Learning Environment in the Foundation Stage (Children Aged 3 â 5)">The Learning Environment in the Foundati 
		<option value="Thinking Every Day and Forever!">Thinking Every Day and Forever! 
		<option value="UNDERSTANDING THE DATA: SECONDARY SCHOOLS: PART 1">UNDERSTANDING THE DATA: SECONDARY SCHOOL 
		<option value="UNDERSTANDING THE DATA:SECONDARY SCHOOLS: PART 2">UNDERSTANDING THE DATA:SECONDARY SCHOOLS 
		<option value="UPDATING YOUR GOVERNANCE">UPDATING YOUR GOVERNANCE 
		<option value="USING AND CREATING VISUAL LITERACY RESOURCES">USING AND CREATING VISUAL LITERACY RESOU 
		<option value="USING LPUS AND FOUNDATION UNITS IN SPECIAL SCHOOLS">USING LPUS AND FOUNDATION UNITS IN SPECI 
		<option value="USING PERFORMANCE DATA FOR SCHOOL IMPROVEMENT">USING PERFORMANCE DATA FOR SCHOOL IMPROV 
		<option value="USING ROAMER WITH OLDER PUPILS">USING ROAMER WITH OLDER PUPILS 
		<option value="USING THE DIGITAL BLUE MOVIE CREATOR">USING THE DIGITAL BLUE MOVIE CREATOR 
		<option value="USING THE ENVIRONMENT EFFECTIVELY: ENRICHING THE SCHOOL ENVIRONMENT FOR CREATIVE TEACHING AND LEARNING ">USING THE ENVIRONMENT EFFECTIVELY: ENRIC 
		<option value="USING THE INTERACTIVE WHITEBOARD TO SUPPORT TEACHING AND LEARNING - BASIC COMPETENCE">USING THE INTERACTIVE WHITEBOARD TO SUPP 
		<option value="USING THE INTERACTIVE WHITEBOARD TO SUPPORT TEACHING AND LEARNING - INTERMEDIATE COMPETENCE">USING THE INTERACTIVE WHITEBOARD TO SUPP 
		<option value="USING VIDEO TO IMPROVE TEACHING AND LEARNING">USING VIDEO TO IMPROVE TEACHING AND LEAR 
		<option value="Understanding Subject Leadership in the Primary School">Understanding Subject Leadership in the 
		<option value="Understanding and Managing Behaviour in Early Years Settings (Children Aged 3-5)">Understanding and Managing Behaviour in 
		<option value="Using Assessment Manager to record Foundation Stage Profiles">Using Assessment Manager to record Found 
		<option value="Using Assessment Manager to track pupil progress">Using Assessment Manager to track pupil 
		<option value="Using Phonics for Reading and Writing in Year 1">Using Phonics for Reading and Writing in 
		<option value="Using Phonics for Reading and Writing in the Foundation Stage">Using Phonics for Reading and Writing in 
		<option value="Using Windows">Using Windows 
		<option value="Using and Administering WebMail ">Using and Administering WebMail 
		<option value="Using the Web ">Using the Web 
		<option value="Using the Web and WebMail">Using the Web and WebMail 
		<option value="VISUAL MODELS AND IMAGES SUPPORTED BY SIGNS AND SYMBOLS">VISUAL MODELS AND IMAGES SUPPORTED BY SI 
		<option value="Vocational Subject Curriculum Groups">Vocational Subject Curriculum Groups 
		<option value="WORKING WITH PRE-SCHOOL HEARING-IMPAIRED CHILDREN  IN NURSERIES & PLAYGROUPS">WORKING WITH PRE-SCHOOL HEARING-IMPAIRED 
		<option value="Web Authoring Tool: Advanced">Web Authoring Tool: Advanced 
		<option value="Web Authoring Tool: Intro">Web Authoring Tool: Intro 
		<option value="Working With Digital Images and Video">Working With Digital Images and Video 
		<option value="Working with âGifted and Talentedâ Children in the Foundation Stage in Maintained and Independent Schools (Children Aged 3 â 5)">Working with âGifted and Talentedâ Child 
		<option value="Year 3 Literacy Support">Year 3 Literacy Support 
		<option value="e-PANDA/RAISEonline for Co-ordinators">e-PANDA/RAISEonline for Co-ordinators 
	</select>
	<p></p>
	<input type="submit" value="submit">
</form> 
</div>


				<br clear="all"/>
				<hr />
				
			
		</div>
		<!-- /content -->


			<!-- footer -->
				
			
<div id="Bottommenu">
	<span class="leftText">
		
		<a href="site02.cfm?request=B1000330" title="Click to browse the text only version of this website" style="color:#fff;">Text only version</a>
		
	</span>
		<span class="rightText"><a href="index.cfm?request=b1114904" title="Send your feedback" style="color:#fff;">Send your views</a>
	</span>
	
				<div id="footerIcons">
				
				<a href="index.cfm?request=B1000330&quicklink=true" title="Add this page to your homepage bookmarks"><img src="web/sites/education/images/footer_icons/ico_book.gif" border="0" width="40" height="38" onMouseOver="MouseOn(this)" onMouseOut="MouseOff(this)"></a>
				<a href="index.cfm?request=B1000330&print=true&" target="_blank" title="Click for a printable version of this page"><img src="web/sites/education/images/footer_icons/ico_prnt.gif" border="0" width="40" height="38" onMouseOver="MouseOn(this)" onMouseOut="MouseOff(this)"></a> 
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

v	 /TS