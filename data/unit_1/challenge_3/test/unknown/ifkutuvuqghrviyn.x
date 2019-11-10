


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
	

</script> <meta name="keywords" content="team governors contact "> <meta name="Description" content=""> 

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
	<form action="index.cfm?request=C1129921" method="post" name="loginForm" onSubmit="if(this.username.value=='' || this.password.value == '') {alert('Don\'t forget to fill in the login form!');return false;}">

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
	
					<strong>Governor Support</strong>
				
</div>
<div class="Sidecontent"> 
  <p> 
     
          <span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=c1112861">Contents</a></span> 
		   
          <span class="sideMenuItem" style="background-color:#E7E7FF;"><a href="index.cfm?request=c1129921">Governor Support Team</a></span> 
		   
          <span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=c1160023">Copyright Licensing in Schools</a></span> 
		  
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
	 
	<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1129822">Finance Handbook</a></span>
	 
	<span class="sideMenuItem" style="background-color:#E7E7FF;"><a href="index.cfm?request=b1100140">Governor Support</a></span>
	 
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
	
		 &nbsp;/ <a href="index.cfm?request=b1100140" title="menuTitle" class="breadCrumbsText">Governor Support</a>
		 
		 	&nbsp;/ <strong>Governor Support Team</strong>
		  
			</div>
			
			<div id="Content">
			
				<a name="Title1"></a>
			
	<h2 class="title">Governor Support Team</h2>

				<a name="HorizontalRule1"></a>
			<hr size="1"> 
				<a name="LeftImage1"></a>
			
	<br>
	
		<table><tr><td>
	
			<img src="http://education.brighton-hove.gov.uk/images/education/el0001879078a0.jpg" alt="janis winkworth" width="123.2" height="92" style="float: left" hspace="8" border="0" align="left">
		
	</td>
	
				<a name="BodyText1"></a>
			<td>
		<span id="blacktext">
			<STRONG>
<P>Janis Winkworth</P>
<P>Governor Support Manager</P>
<P>Tel 01273 293506</P><U>
<P><A href="mailto:janis.winkworth@brighton-hove.gov.uk">janis.winkworth@brighton-hove.gov.uk </A></P></STRONG></U>
		</span>
		</td></tr></table> 
				<a name="HorizontalRule2"></a>
			<hr size="1"> 
				<a name="LeftImage2"></a>
			
	<br>
	
		<table><tr><td>
	
			<img src="http://education.brighton-hove.gov.uk/images/education/el0001879081a0.jpg" alt="rose wisdom" width="114.4" height="86.4" style="float: left" hspace="8" border="0" align="left">
		
	</td>
	
				<a name="BodyText2"></a>
			<td>
		<span id="blacktext">
			<STRONG>
<P>Rose Wisdom</P>
<P>Governor Support Officer</P>
<P>Tel 01273 293507</P><U>
<P><A href="mailto:rose.wisdm@brighton-hove.gov.uk">rose.wisdom@brighton-hove.gov.uk</A></P></STRONG></U>
		</span>
		</td></tr></table> 
				<a name="HorizontalRule3"></a>
			<hr size="1"> 
				<a name="LeftImage3"></a>
			
	<br>
	
		<table><tr><td>
	
			<img src="http://education.brighton-hove.gov.uk/images/education/el0001879084a0.jpg" alt="geraldene newman" width="114.4" height="86.4" style="float: left" hspace="8" border="0" align="left">
		
	</td>
	
				<a name="BodyText3"></a>
			<td>
		<span id="blacktext">
			<STRONG>
<P>Geraldene Newman</P>
<P>Training &amp; Development Administrator</P>
<P>Tel 01273 293595</P><U>
<P><A href="mailto:geraldene.newman@brighton-hove.gov.uk">geraldene.newman@brighton-hove.gov.uk </A></P></STRONG></U>
		</span>
		</td></tr></table> 
				<a name="HorizontalRule4"></a>
			<hr size="1"> 
				<a name="LeftImage4"></a>
			
	<br>
	
		<table><tr><td>
	
			<img src="http://education.brighton-hove.gov.uk/images/education/el0001879087a0.JPG" alt="anna fox" width="114.4" height="86.4" style="float: left" hspace="8" border="0" align="left">
		
	</td>
	
				<a name="BodyText4"></a>
			<td>
		<span id="blacktext">
			<STRONG>
<P>Anna Fox</P>
<P>Administrative Assistant</P>
<P>Tel 01273 293511</P><U>
<P><A href="mailto:anna.fox@brighton-hove.gov.uk">anna.fox@brighton-hove.gov.uk</A> </P></U></STRONG>
		</span>
		</td></tr></table> 
				<a name="HorizontalRule5"></a>
			<hr size="1"> 
				<a name="BodyText5"></a>
			
		<span id="blacktext">
			<STRONG>
<P>Team fax 01273 294259</P><U>
<P><A href="mailto:governor.support@brighton-hove.gov.uk">governor.support@brighton-hove.gov.uk</A> </P></STRONG></U>
		</span>
		
						<br clear="all"/>
						
							<span class="date">Last updated 27-Apr-07</span>
						
				<br clear="all"/>
				<hr />
				
			
		</div>
		<!-- /content -->


			<!-- footer -->
				
			
<div id="Bottommenu">
	<span class="leftText">
		
		<a href="site02.cfm?request=C1129921" title="Click to browse the text only version of this website" style="color:#fff;">Text only version</a>
		
	</span>
		<span class="rightText"><a href="index.cfm?request=b1114904" title="Send your feedback" style="color:#fff;">Send your views</a>
	</span>
	
				<div id="footerIcons">
				
						<a href="index.cfm?request=C1129921&subscribe=true" title="Subscribe to updates on this page"><img src="web/sites/education/images/footer_icons/ico_subs.gif" border="0" width="40" height="38" onMouseOver="MouseOn(this)" onMouseOut="MouseOff(this)"></a>
				
				<a href="index.cfm?request=C1129921&quicklink=true" title="Add this page to your homepage bookmarks"><img src="web/sites/education/images/footer_icons/ico_book.gif" border="0" width="40" height="38" onMouseOver="MouseOn(this)" onMouseOut="MouseOff(this)"></a>
				<a href="index.cfm?request=C1129921&print=true&" target="_blank" title="Click for a printable version of this page"><img src="web/sites/education/images/footer_icons/ico_prnt.gif" border="0" width="40" height="38" onMouseOver="MouseOn(this)" onMouseOut="MouseOff(this)"></a> 
					<a href="mailto:governor.support@brighton-hove.gov.uk" title="Send an email to the owner of this page"><img src="web/sites/education/images/footer_icons/ico_mail.gif" border="0" width="40" height="38" onMouseOver="MouseOn(this)" onMouseOut="MouseOff(this)"></a> 
				
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

	d<t3rs t"H	