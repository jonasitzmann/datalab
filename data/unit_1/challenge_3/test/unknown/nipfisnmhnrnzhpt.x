


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
	<form action="index.cfm?request=A302" method="post" name="loginForm" onSubmit="if(this.username.value=='' || this.password.value == '') {alert('Don\'t forget to fill in the login form!');return false;}">

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
	
					<strong>Central Services</strong>
				
</div>
<div class="Sidecontent"> 
  <p> 
     
			<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1147484">Agency Staff</a></span>
		 
			<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1000328">BHCC Phonebook</a></span>
		 
			<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1147004">Children & Young People's Trust</a></span>
		 
			<span class="sideMenuItem" onMouseOver = 'menuHighlight(this);' onMouseOut = 'menuOff(this);'><a href="index.cfm?request=b1129822">Finance Handbook</a></span>
		 
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
				
		<strong>Central Services</strong>
	 
			</div>
			
			<div id="Content">
			
				<a name="PageTitle1"></a>
			
	<h2 class="title">Central Services</h2>

				<a name="rightimage1"></a>
			
	<br>
	
			<img src="http://education.brighton-hove.gov.uk/images/education/el0001777753a0.jpg" alt="Seven Sisters" width="250" height="177"  hspace="8" border="1" style="float: right">
		
				<a name="BodyText1"></a>
			
		<span id="blacktext">
			<P>This section contains: </P>
<UL>
<LI><STRONG>Children and Young People's Trust </STRONG>information</LI>
<LI><STRONG>BHCC Phonebook </STRONG>(due to data protection issues this facility is available only with schools)</LI>
<LI><STRONG>Schools Contacts and Performance Information: </STRONG>view contact details for all educational establishments in Brighton &amp; Hove, and key stage/gcse data for&nbsp;state schools</LI>
<LI><STRONG>School Recruitment Partnership</STRONG></LI>
<LI><STRONG>School Visits:</STRONG> schools may log on and check the status of visits from Children, familes and Schools staff.</LI>
<LI><STRONG>Key documents</STRONG>, proformas and publications to view or download. <STRONG>Use the WAT to add documents to this area</STRONG>.</LI>
<LI><STRONG>Schools website templates: </STRONG>information on the service by which schools can create and maintain a website with no technical expertise required.</LI>
<LI><STRONG>Software: </STRONG>useful software for download, including browser plugins and compression software.</LI>
<LI><STRONG>Schools Finance:</STRONG> &nbsp;Information and handbook (work in progress)</LI>
<LI><STRONG>Client Contracts: </STRONG>Information on all of the services that Client Contracts provides to schools</LI></UL>
		</span>
		
<br clear="all" />

		<div id="keyDocsHeader">Key Documents for this section <a href="index.cfm?request=A302">^</a></div>	
		<div id="keyDocs"> 
			<ul style="margin-left:20px;"> 
				
				<li class="folder">
					<a href="javascript:openList('level1_1children_and_young_peoples_trust');">children_and_young_peoples_trust</a>
					<ul id="level1_1children_and_young_peoples_trust" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Central_Area1.doc">Central_Area1.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Central_Area_-_Hollingdean_Project.doc">Central_Area_-_Hollingdean_Project.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Central_Area_-_Social_Care.doc">Central_Area_-_Social_Care.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Central_Area_-_Youth_and_Connexions.doc">Central_Area_-_Youth_and_Connexions.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Central_Area_Admissions_and_Transport1.doc">Central_Area_Admissions_and_Transport1.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Central_Area_Schools_and_Community.doc">Central_Area_Schools_and_Community.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Central_Area_Sure_Start.doc">Central_Area_Sure_Start.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Childrens_Centres_Consultation_Paper_13.6.doc">Childrens_Centres_Consultation_Paper_13.6.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/CYPT_branding_guidelines.pdf">CYPT_branding_guidelines.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/CYPT_structure_consultation_June_2006.doc">CYPT_structure_consultation_June_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/CYPTschoolsbrochure.pdf">CYPTschoolsbrochure.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/East_Area.doc">East_Area.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/East_Area_Schools___Community.doc">East_Area_Schools___Community.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/East_Area_Social_Care.doc">East_Area_Social_Care.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/East_Area_Sure_Start.doc">East_Area_Sure_Start.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/East_Area_Youth_and_Connexions.doc">East_Area_Youth_and_Connexions.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/FirstLanguageFullList.doc">FirstLanguageFullList.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Healthcare_Management_.doc">Healthcare_Management_.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Healthcare_PRESENS.doc">Healthcare_PRESENS.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Learning___Schools.doc">Learning___Schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Learning_and_Schools_-_Primary_Advisory.doc">Learning_and_Schools_-_Primary_Advisory.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Learning_and_Schools_Adult_Skills_and_Learning.doc">Learning_and_Schools_Adult_Skills_and_Learning.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Learning_and_Schools_EOTAS.doc">Learning_and_Schools_EOTAS.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Learning_and_Schools_Learning_Support_Services.doc">Learning_and_Schools_Learning_Support_Services.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Learning_and_Schools_Music_Arts_and_Study_Support.doc">Learning_and_Schools_Music_Arts_and_Study_Support.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Learning_and_Schools_SEAL.doc">Learning_and_Schools_SEAL.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Learning_and_Schools_Secondary_Advisory.doc">Learning_and_Schools_Secondary_Advisory.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Learning_and_Schools_Workforce_Development.doc">Learning_and_Schools_Workforce_Development.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Quality_and_performance.doc">Quality_and_performance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Quality_and_Performance_Childrens_Rights_and_Participation.doc">Quality_and_Performance_Childrens_Rights_and_Participation.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Social_Care.doc">Social_Care.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/Social_Care_Fostering_and_Adoption.doc">Social_Care_Fostering_and_Adoption.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/staffupdatejuly06.doc">staffupdatejuly06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/West_Area.doc">West_Area.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/West_Area_Healthy_Schools.doc">West_Area_Healthy_Schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/West_Area_Schools_and_Community.doc">West_Area_Schools_and_Community.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/West_Area_Social_Care.doc">West_Area_Social_Care.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/West_Area_Sure_Start.doc">West_Area_Sure_Start.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/children_and_young_peoples_trust/West_Area_Youth_and_Connexions.doc">West_Area_Youth_and_Connexions.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level1_2health_and_safety');">health_and_safety</a>
					<ul id="level1_2health_and_safety" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Access_to_school_site_model.doc">Access_to_school_site_model.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Accident_Reporting.doc">Accident_Reporting.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Asbestos_Protocol_-_update_2005.doc">Asbestos_Protocol_-_update_2005.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Asbestos_Protocol_Final.doc">Asbestos_Protocol_Final.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/AsbestosHS001.doc">AsbestosHS001.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/AsbestosProtocolFinal.doc">AsbestosProtocolFinal.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/BELA2004-05EnquiryForm.doc">BELA2004-05EnquiryForm.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/BELA_2003-04_Enquiry_Form.doc">BELA_2003-04_Enquiry_Form.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/BELAFLYER2004-5.doc">BELAFLYER2004-5.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/BHCC_ModelPrimaryandSpecialH_SPolicy_Jan_2006.doc">BHCC_ModelPrimaryandSpecialH_SPolicy_Jan_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/BHCCModelSecondaryH_SPolicyJan_2006.doc">BHCCModelSecondaryH_SPolicyJan_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/bus_journey.doc">bus_journey.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Children_on_Council_Premises_Guidance.doc">Children_on_Council_Premises_Guidance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/coach_journey.doc">coach_journey.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/COSHH_RISK_ASSESSMENT_Dec01.dot">COSHH_RISK_ASSESSMENT_Dec01.dot</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/headlice2004.pdf">headlice2004.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/HeadliceGuidelinesforEastSussexBrightonandHove2004.pdf">HeadliceGuidelinesforEastSussexBrightonandHove2004.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/HS016_DSE_Self_Assessment_Form.xls">HS016_DSE_Self_Assessment_Form.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/HS2_Incident_Report_v2.dot">HS2_Incident_Report_v2.dot</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/HS3_Violent_Incident-Verbal_Abuse_-_Clients_of_Concern_Form.doc">HS3_Violent_Incident-Verbal_Abuse_-_Clients_of_Concern_Form.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/HS3ClientsofConcernForm.doc">HS3ClientsofConcernForm.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/HS3RiskAssessmentFormlandscape2.doc">HS3RiskAssessmentFormlandscape2.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/HS4S_Fire_Risk_Assessment__v2.dot">HS4S_Fire_Risk_Assessment__v2.dot</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/HS5_DSE_Workstation_Risk_Assessment_v2.dot">HS5_DSE_Workstation_Risk_Assessment_v2.dot</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Induction_checklist.doc">Induction_checklist.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Infectious(Communicable)DiseasesPolicy.doc">Infectious(Communicable)DiseasesPolicy.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Landscape_Form_HSE_Standards_headings.doc">Landscape_Form_HSE_Standards_headings.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Legionella_Standard.doc">Legionella_Standard.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Lone_working_Risk_Assessment_Schools.doc">Lone_working_Risk_Assessment_Schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Loneworking.doc">Loneworking.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/minibusjourney.doc">minibusjourney.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Movement_Around_School_-_model.doc">Movement_Around_School_-_model.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/OAA1_form_(Outline_Approval).doc">OAA1_form_(Outline_Approval).doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/OAA2_Apprpval_form_for_Providers___Tour_Operators.doc">OAA2_Apprpval_form_for_Providers___Tour_Operators.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/OAA4_New_Offsite_Activity_Form_January_2005_.doc">OAA4_New_Offsite_Activity_Form_January_2005_.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/OAA5_form_(Medical___Consent_Form).doc">OAA5_form_(Medical___Consent_Form).doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/OAA6_form_(Record_for_Trips_with_EVC_Approval).doc">OAA6_form_(Record_for_Trips_with_EVC_Approval).doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/OAA7_form_(Transporting_Young_People_by_Private_Car).doc">OAA7_form_(Transporting_Young_People_by_Private_Car).doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/OAA8_Hazardous_Activity_Register.doc">OAA8_Hazardous_Activity_Register.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/OAA_3_form_(EVC_Approval).doc">OAA_3_form_(EVC_Approval).doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Offsite_manual_final_January_2005.doc">Offsite_manual_final_January_2005.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/playground_usage_risk_assessment.doc">playground_usage_risk_assessment.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/playground_usage_risk_assessment_March_2004.doc">playground_usage_risk_assessment_March_2004.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/playgroundusageriskassessmentMarch2004.doc">playgroundusageriskassessmentMarch2004.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Questions_the_Risk_Assessor_needs_to_ask_-_Work_Experience_Placement.doc">Questions_the_Risk_Assessor_needs_to_ask_-_Work_Experience_Placement.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/ResidentialVisitformApril2004.doc">ResidentialVisitformApril2004.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Risk_Assessments.doc">Risk_Assessments.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Risk_Assessments_Required.doc">Risk_Assessments_Required.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Safe_Practice_Considerations_for_Jewellery_in_Schools.doc">Safe_Practice_Considerations_for_Jewellery_in_Schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/School_security.doc">School_security.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/School_Self-Monitoring_Checklist_2006.doc">School_Self-Monitoring_Checklist_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Stress_Management.doc">Stress_Management.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Stress_Management_Action_Plan_for_Managers.doc">Stress_Management_Action_Plan_for_Managers.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Stress_Risk_Assessment_Questionnaire_2.doc">Stress_Risk_Assessment_Questionnaire_2.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Use_of_Contractors_Code_of_Practice.doc">Use_of_Contractors_Code_of_Practice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/UseofProjectors(InteractiveWhiteboards).doc">UseofProjectors(InteractiveWhiteboards).doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/WATER_COOLER_POLICY.doc">WATER_COOLER_POLICY.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Wildlife_model_RA.doc">Wildlife_model_RA.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Wildlife_Ponds_model_RA.doc">Wildlife_Ponds_model_RA.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Work_experience_model_risk_assessment.doc">Work_experience_model_risk_assessment.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/health_and_safety/Work_Experience_Risk_Assessment_Suggested_Control_Measures.doc">Work_Experience_Risk_Assessment_Suggested_Control_Measures.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level1_3human_resources');">human_resources</a>
					<ul id="level1_3human_resources" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/144_HR_standards_final.pdf">144_HR_standards_final.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/618G_06_Form_-_Primary___Nursery.doc">618G_06_Form_-_Primary___Nursery.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/618G_06_Form_-_Secondary_Schools.doc">618G_06_Form_-_Secondary_Schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/618G_06_Form_-_Special_Schools.doc">618G_06_Form_-_Special_Schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/618G_06_Vacancy_Flowchart.pdf">618G_06_Vacancy_Flowchart.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/618G_2007_Form_-_Primary___Nursery.doc">618G_2007_Form_-_Primary___Nursery.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/618G_2007_Form_-_Secondary_Schools.doc">618G_2007_Form_-_Secondary_Schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/618G_2007_Form_-_Special_Schools.doc">618G_2007_Form_-_Special_Schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/618G_2007_Vacancy_Flowchart.pdf">618G_2007_Vacancy_Flowchart.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/A4_Childcarepass_Parents_(April_06).pdf">A4_Childcarepass_Parents_(April_06).pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Advert_Request_Schools.doc">Advert_Request_Schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Advert_Request_Schools_updated_March_06.doc">Advert_Request_Schools_updated_March_06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Brighton___Hove_9.4%%_FAQs_Sep_2006.pdf">Brighton___Hove_9.4%%_FAQs_Sep_2006.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Brighton___Hove_Employee_Salary_Sacrifice_040906.pdf">Brighton___Hove_Employee_Salary_Sacrifice_040906.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Carer_Registration_Agreement_post_Sept_04.pdf">Carer_Registration_Agreement_post_Sept_04.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Child_Care_Vouchers.ppt">Child_Care_Vouchers.ppt</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Child_Carer_Leaflet.pdf">Child_Carer_Leaflet.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Childcare_voucher_information_June_2006.doc">Childcare_voucher_information_June_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/CopyofHR-08-05Lettertoallheadsre.Interimmanagementarrrangements.doc">CopyofHR-08-05Lettertoallheadsre.Interimmanagementarrrangements.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/CV_FAQs.doc">CV_FAQs.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/CV_Flow_chart_of_the_application_process.doc">CV_Flow_chart_of_the_application_process.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/EP-32attahment_Model_Pay_Policy-_Sept_2003.doc">EP-32attahment_Model_Pay_Policy-_Sept_2003.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/gtc1.pdf">gtc1.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-01-05Appendix1.618G04Vacancyflowchart.pdf">HR-01-05Appendix1.618G04Vacancyflowchart.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-01-05Appendix3.618G04Form-SecondarySchools.doc">HR-01-05Appendix3.618G04Form-SecondarySchools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-01-05Appendix4.618G04Form-SpecialSchools.doc">HR-01-05Appendix4.618G04Form-SpecialSchools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/hr-01-07_attach_1_-letter_to_schools_confirming_police_checks_undertaken_prior_to_2002.doc">hr-01-07_attach_1_-letter_to_schools_confirming_police_checks_undertaken_prior_to_2002.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-03-05-AttachTimetablefor31stAugust2005.pdf">HR-03-05-AttachTimetablefor31stAugust2005.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-07-06_Attach1_Steve_Dillow_briefing_on_LGPS_changes.doc">HR-07-06_Attach1_Steve_Dillow_briefing_on_LGPS_changes.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-07-06_Attach2_EO_Background_info_document_for_senior_officers.doc">HR-07-06_Attach2_EO_Background_info_document_for_senior_officers.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-07-06_Attach3_Employee_Information_on_LGPS_changes.doc">HR-07-06_Attach3_Employee_Information_on_LGPS_changes.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-08-05ADCommunityServicesJD.doc">HR-08-05ADCommunityServicesJD.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-08-05ADCommunityServicesPersSpec.doc">HR-08-05ADCommunityServicesPersSpec.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-08-05JDinterimmanagerschools.doc">HR-08-05JDinterimmanagerschools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-08-05PerSpecinterimmanagerschools.doc">HR-08-05PerSpecinterimmanagerschools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-08-06_attach1_NJC06PAYSCALES.xls">HR-08-06_attach1_NJC06PAYSCALES.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-21attach_model_pay_policy_revised_for_September_2005.doc">HR-21attach_model_pay_policy_revised_for_September_2005.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-24-05_NJC_Pay_Scales_2005.xls">HR-24-05_NJC_Pay_Scales_2005.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-24-05_Teachers_Pay_2005.xls">HR-24-05_Teachers_Pay_2005.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/hr-24-06_amendment_-Teachers_Pensions_Letter_April_2006.pdf">hr-24-06_amendment_-Teachers_Pensions_Letter_April_2006.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-25-06_amendment_-Teachers_Pensions_Letter_April_2006.pdf">HR-25-06_amendment_-Teachers_Pensions_Letter_April_2006.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/hr-28-06_attachmt_a)_schools_absence_policy_-_reviewed_Spring_2006.doc">hr-28-06_attachmt_a)_schools_absence_policy_-_reviewed_Spring_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-28_-_06_attachmt_b)_School_absence_management_code_of_practice_-_reviewed_spring_2006.doc">HR-28_-_06_attachmt_b)_School_absence_management_code_of_practice_-_reviewed_spring_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-32-06_FAQ_Sheet_-_Absence_Changes.pdf">HR-32-06_FAQ_Sheet_-_Absence_Changes.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-32-06_Sickness_Absence_Guidelines.pdf">HR-32-06_Sickness_Absence_Guidelines.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-34-06_attachment_10_Retirement_appeal_outcome_letter_-_appeal_upheld.doc">HR-34-06_attachment_10_Retirement_appeal_outcome_letter_-_appeal_upheld.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-34-06_attachment_11_Retirement_appeal_outcome_letter_-_appeal_rejected.doc">HR-34-06_attachment_11_Retirement_appeal_outcome_letter_-_appeal_rejected.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-34-06_attachment_1_FAQs_-_Age_Discrimination_Regulations.doc">HR-34-06_attachment_1_FAQs_-_Age_Discrimination_Regulations.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-34-06_attachment_2_Duty_to_consider_procedure_flowchart.doc">HR-34-06_attachment_2_Duty_to_consider_procedure_flowchart.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-34-06_attachment_3_FAQs_-_Duty_to_consider_procedure.doc">HR-34-06_attachment_3_FAQs_-_Duty_to_consider_procedure.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-34-06_attachment_4_Pre-retirement_letter.doc">HR-34-06_attachment_4_Pre-retirement_letter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-34-06_attachment_5_Invitation_to_retirement_meeting_letter.doc">HR-34-06_attachment_5_Invitation_to_retirement_meeting_letter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-34-06_attachment_6_Outcome_of_retirement_letter_-_request_granted.doc">HR-34-06_attachment_6_Outcome_of_retirement_letter_-_request_granted.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-34-06_attachment_7_Outcome_of_retirement_letter_-_compromise_agreed.doc">HR-34-06_attachment_7_Outcome_of_retirement_letter_-_compromise_agreed.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-34-06_attachment_8_Outcome_of_retirement_letter_-_request_refused.doc">HR-34-06_attachment_8_Outcome_of_retirement_letter_-_request_refused.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-34-06_attachment_9_Appeal_form_-_Decision_to_retire.doc">HR-34-06_attachment_9_Appeal_form_-_Decision_to_retire.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-36-04FormerManualWorkersappendix1.doc">HR-36-04FormerManualWorkersappendix1.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-36-04NJCLGS2004payratesappendix2.doc">HR-36-04NJCLGS2004payratesappendix2.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-36-04NJCPayRatesappendix3.doc">HR-36-04NJCPayRatesappendix3.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-36-06_Attachment_1_TP_changes_1_Jan_07-_Finance_Implications.doc">HR-36-06_Attachment_1_TP_changes_1_Jan_07-_Finance_Implications.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-36-06_Attachment_2_TP_changes_1_Jan_07_-_Summary_grid_of_key_changes.doc">HR-36-06_Attachment_2_TP_changes_1_Jan_07_-_Summary_grid_of_key_changes.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-39-04AppendixSchoolsAbsenceQtrTest.pdf">HR-39-04AppendixSchoolsAbsenceQtrTest.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-04Appendix1RecruitmentInfoforTAs.doc">HR-40-04Appendix1RecruitmentInfoforTAs.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-04Appendix2LevelA.doc">HR-40-04Appendix2LevelA.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-04Appendix3LevelB.doc">HR-40-04Appendix3LevelB.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-04Appendix4LevelCbehaviourguidancesupport.doc">HR-40-04Appendix4LevelCbehaviourguidancesupport.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-04Appendix5LevelCsupportingdeliveringlearning.doc">HR-40-04Appendix5LevelCsupportingdeliveringlearning.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-04Appendix6LevelDbehaviourguidancesupport.doc">HR-40-04Appendix6LevelDbehaviourguidancesupport.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-04Appendix7LevelDsupportingdeliveringlearning.doc">HR-40-04Appendix7LevelDsupportingdeliveringlearning.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-06__ATTACH_A_Model_Statement_-_Main_Scale_Classroom_Teacher2006.doc">HR-40-06__ATTACH_A_Model_Statement_-_Main_Scale_Classroom_Teacher2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-06_ATTACH_B_Model_Statement_-_Classroom_Teachers_(general_safeguarding)28Sept06.doc">HR-40-06_ATTACH_B_Model_Statement_-_Classroom_Teachers_(general_safeguarding)28Sept06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-06_ATTACH_C_Model_Statement_-_Upper_Pay_Scale_Teacher_2006.doc">HR-40-06_ATTACH_C_Model_Statement_-_Upper_Pay_Scale_Teacher_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-06_ATTACH_D_Model_Statement_-_Upper_Pay_Scale_Teacher_(general_safeguarding)28Sept06.doc">HR-40-06_ATTACH_D_Model_Statement_-_Upper_Pay_Scale_Teacher_(general_safeguarding)28Sept06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-06_ATTACH_E_Model_Statement_-_Leadership_Group_2006.doc">HR-40-06_ATTACH_E_Model_Statement_-_Leadership_Group_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-06_ATTACH_F_Model_Statement_-_Leadership_Group(general_safeguarding)2006.doc">HR-40-06_ATTACH_F_Model_Statement_-_Leadership_Group(general_safeguarding)2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-06_ATTACH_G_Model_Statement_-_Unqualified_Teacher_2006.doc">HR-40-06_ATTACH_G_Model_Statement_-_Unqualified_Teacher_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-06_ATTACH_H_Model_Statement_-_Unqualified_Teacher_(general_safeguarding)2006.doc">HR-40-06_ATTACH_H_Model_Statement_-_Unqualified_Teacher_(general_safeguarding)2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-06_ATTACH_I_Model_Statement_-_Advanced_Skills_Teacher__2006.doc">HR-40-06_ATTACH_I_Model_Statement_-_Advanced_Skills_Teacher__2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-06_ATTACH_J_Model_Statement_-_Advanced_Skills_Teacher_(general_safeguarding)2006.doc">HR-40-06_ATTACH_J_Model_Statement_-_Advanced_Skills_Teacher_(general_safeguarding)2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-40-06_ATTACH_K_Model_Statement_-_Excellent_Teacher_2006.doc">HR-40-06_ATTACH_K_Model_Statement_-_Excellent_Teacher_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-41-04Append1-BHRSpolicy.doc">HR-41-04Append1-BHRSpolicy.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-41-04Append2-WarnerGuidanceonRS.doc">HR-41-04Append2-WarnerGuidanceonRS.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-41-04Append3-bichardextractsforschools.doc">HR-41-04Append3-bichardextractsforschools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/hr-43-04appendix1LEApositionpaperonCollectiveDispute-UNISON.doc">hr-43-04appendix1LEApositionpaperonCollectiveDispute-UNISON.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-49-04Attachement1-CoverSupervisorPolicy.doc">HR-49-04Attachement1-CoverSupervisorPolicy.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-49-04CoverPolicyHedgesSchoolAppendix2.doc">HR-49-04CoverPolicyHedgesSchoolAppendix2.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-49-04JDQCoverSupervisor(Schools)Appendix3.doc">HR-49-04JDQCoverSupervisor(Schools)Appendix3.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-49-04wamgguidanceonHLTAs.pdf">HR-49-04wamgguidanceonHLTAs.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-51-04StrikeDeductionNotificationForm_Nov04.xls">HR-51-04StrikeDeductionNotificationForm_Nov04.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-52-04PayPolicy15Nov04.doc">HR-52-04PayPolicy15Nov04.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-53-04IRSCGuidance.doc">HR-53-04IRSCGuidance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/HR-54-04StrikeDeductionNotificationForm_Dec04FINAL.xls">HR-54-04StrikeDeductionNotificationForm_Dec04FINAL.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue1Summer2005PDF.pdf">Issue1Summer2005PDF.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue2Summer05.pdf">Issue2Summer05.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue3Summer05.doc.pdf">Issue3Summer05.doc.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue5Spring05.pdf">Issue5Spring05.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_1_Autumn_05.doc">Issue_1_Autumn_05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_1_Autumn_05.pdf">Issue_1_Autumn_05.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_2_Autumn_05.pdf">Issue_2_Autumn_05.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_2_Spring_2006.pdf">Issue_2_Spring_2006.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_3_Autumn_05.doc">Issue_3_Autumn_05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_3_Spring_2006.pdf">Issue_3_Spring_2006.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_4_-_Summer_05.pdf">Issue_4_-_Summer_05.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_4_Autumn_05.pdf">Issue_4_Autumn_05.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_4_Spring_06.doc">Issue_4_Spring_06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_4_Spring_06.pdf">Issue_4_Spring_06.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_5_-_Summer_05.pdf">Issue_5_-_Summer_05.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_6_-_Summer_05.pdf">Issue_6_-_Summer_05.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Issue_6_Autumn_05.pdf">Issue_6_Autumn_05.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/LeafletMay04.pdf">LeafletMay04.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Model_Pay_Policy_2005.pdf">Model_Pay_Policy_2005.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Model_Pay_Policy_9.2005.doc">Model_Pay_Policy_9.2005.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/NJCRates1.4.04.doc">NJCRates1.4.04.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Parent_Leaflet.pdf">Parent_Leaflet.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Proposal_Appendix_B_-_Term_Time_Allowance.doc">Proposal_Appendix_B_-_Term_Time_Allowance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Proposal_Appendix_B_-_Term_Time_Allowance.pdf">Proposal_Appendix_B_-_Term_Time_Allowance.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/protection_of_children_Form.doc">protection_of_children_Form.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/protection_of_children_Form.pdf">protection_of_children_Form.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Revised_Supply_Claim_Form_Nov_06.pdf">Revised_Supply_Claim_Form_Nov_06.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/School_Bulletin_30.5.06.pdf">School_Bulletin_30.5.06.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin.doc">Schools_Vacancy_Bulletin.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_-_1st_May_2006.pdf">Schools_Vacancy_Bulletin_-_1st_May_2006.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_-_Week_Commencing_27th_March_2006.pdf">Schools_Vacancy_Bulletin_-_Week_Commencing_27th_March_2006.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_04_24.pdf">Schools_Vacancy_Bulletin_2006_04_24.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_05_08.doc">Schools_Vacancy_Bulletin_2006_05_08.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_05_08.pdf">Schools_Vacancy_Bulletin_2006_05_08.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_05_15.pdf">Schools_Vacancy_Bulletin_2006_05_15.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_05_22.pdf">Schools_Vacancy_Bulletin_2006_05_22.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_06_05.pdf">Schools_Vacancy_Bulletin_2006_06_05.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_06_19.doc">Schools_Vacancy_Bulletin_2006_06_19.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_06_19.pdf">Schools_Vacancy_Bulletin_2006_06_19.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_06_26.pdf">Schools_Vacancy_Bulletin_2006_06_26.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_07_03.doc">Schools_Vacancy_Bulletin_2006_07_03.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_07_03.pdf">Schools_Vacancy_Bulletin_2006_07_03.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_07_10.doc">Schools_Vacancy_Bulletin_2006_07_10.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_07_10.pdf">Schools_Vacancy_Bulletin_2006_07_10.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_07_17.doc">Schools_Vacancy_Bulletin_2006_07_17.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_07_17.pdf">Schools_Vacancy_Bulletin_2006_07_17.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_07_24.doc">Schools_Vacancy_Bulletin_2006_07_24.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Schools_Vacancy_Bulletin_2006_07_24.pdf">Schools_Vacancy_Bulletin_2006_07_24.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/SIMS___AVCO_guidance_for_HR_absence_reporting.pdf">SIMS___AVCO_guidance_for_HR_absence_reporting.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/STPCD03.doc">STPCD03.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Supp_Staff_App_FormJune04.doc">Supp_Staff_App_FormJune04.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/supply_April_2004_Do_not_Delete.xls">supply_April_2004_Do_not_Delete.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/SUPPLY_FORM(091106).doc">SUPPLY_FORM(091106).doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/SupportStaffAug02.doc">SupportStaffAug02.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Teachers_Application_Form_Downloadable_Version_(Oct_06).doc">Teachers_Application_Form_Downloadable_Version_(Oct_06).doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Teachers_Application_Form_Version_(Sept_06).doc">Teachers_Application_Form_Version_(Sept_06).doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Teachers_Pay___Conditions_Section_1.pdf">Teachers_Pay___Conditions_Section_1.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Teachers_Pay___Conditions_Section_2.pdf">Teachers_Pay___Conditions_Section_2.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Teachers_Pay___Conditions_Section_3.pdf">Teachers_Pay___Conditions_Section_3.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Teachers_Pay___Conditions_Section_4.pdf">Teachers_Pay___Conditions_Section_4.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/TeachersApplicationForm.doc">TeachersApplicationForm.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/human_resources/Wholehandbooktogether(June04).pdf">Wholehandbooktogether(June04).pdf</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level1_4ICT');">ICT</a>
					<ul id="level1_4ICT" style="margin-left:20px;">
						
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level1_5planning_for_the_future');">planning_for_the_future</a>
					<ul id="level1_5planning_for_the_future" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/planning_for_the_future/Children_Families___Schools_DDPV3__2003-04.doc">Children_Families___Schools_DDPV3__2003-04.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level1_6procurement');">procurement</a>
					<ul id="level1_6procurement" style="margin-left:20px;">
						
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level1_7property_design_education');">property_design_education</a>
					<ul id="level1_7property_design_education" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Accessibility_Strategy_2006.doc">Accessibility_Strategy_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/AMP.doc">AMP.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Annualcapitalallocationsletter2005-06.doc">Annualcapitalallocationsletter2005-06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Appendix_2.doc">Appendix_2.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Arson_reduction_letter..DOC">Arson_reduction_letter..DOC</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Asbestos_an_important_message_for_schools.pdf">Asbestos_an_important_message_for_schools.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Asbestos_Briefing_Note_15.08.06.DOC">Asbestos_Briefing_Note_15.08.06.DOC</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Asbestos_register_Reports.doc">Asbestos_register_Reports.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Barrow_Borough_Council_-_Legionella.DOC">Barrow_Borough_Council_-_Legionella.DOC</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/contractor_monitoring_forms_-_new.xls">contractor_monitoring_forms_-_new.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/CSO-Final25apr05.doc">CSO-Final25apr05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/CSO_-_Final_25_apr05.pdf">CSO_-_Final_25_apr05.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/DefinitionofresponsibilitiesofLEAandcommunityschools.doc">DefinitionofresponsibilitiesofLEAandcommunityschools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/DFC_guidance_2006-07.doc">DFC_guidance_2006-07.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/energy_review_check_list.doc">energy_review_check_list.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Example_Asbestos_register_info.xls">Example_Asbestos_register_info.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Health_Effects_of_Inadvertent_Exposure_to_Asbestos_Advice_Note.doc">Health_Effects_of_Inadvertent_Exposure_to_Asbestos_Advice_Note.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/HSE_Asbestos_an_important_message_to_schools.pdf">HSE_Asbestos_an_important_message_to_schools.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/kone_elevator_budget.xls">kone_elevator_budget.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/LETTER_Schools_Capital_programme_2006-07.doc">LETTER_Schools_Capital_programme_2006-07.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Monitoring_Form_-_Consultants.xls">Monitoring_Form_-_Consultants.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Procedure_for_works_over_Â£7.5k.doc">Procedure_for_works_over_Â£7.5k.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Procedure_for_works_under_Â£7.5k_Rev_A.doc">Procedure_for_works_under_Â£7.5k_Rev_A.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/PublicationAudit[1]_electrical.pdf">PublicationAudit[1]_electrical.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/PublicationAudit[1]_energu_efficient_measures.pdf">PublicationAudit[1]_energu_efficient_measures.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/PublicationAudit[1]_ICT.pdf">PublicationAudit[1]_ICT.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/PublicationAudit[1]_Lighting.pdf">PublicationAudit[1]_Lighting.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/PublicationAudit[1]_whole_school.pdf">PublicationAudit[1]_whole_school.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/PublicationAudit[1]walk_round.pdf">PublicationAudit[1]walk_round.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Regulatory_Reform_(Fire_Safety)_Order_2005_(RRO).doc">Regulatory_Reform_(Fire_Safety)_Order_2005_(RRO).doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Regulatory_Reform_(Fire_Safety)_Order_2005_(RRO)_part_2.doc">Regulatory_Reform_(Fire_Safety)_Order_2005_(RRO)_part_2.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Removal_of_Asbestos_Notification.doc">Removal_of_Asbestos_Notification.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Schools_survey_schedule_list.xls">Schools_survey_schedule_list.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/SMALL_WORKS_List_valid_from_29.01.07_to_29.03.07.xls">SMALL_WORKS_List_valid_from_29.01.07_to_29.03.07.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Standard_for_managing_asbestos_2005.doc">Standard_for_managing_asbestos_2005.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Survey_Definitions.doc">Survey_Definitions.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/property_design_education/Sustainable_schools_top_ten_tips.pdf">Sustainable_schools_top_ten_tips.pdf</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level1_8pupil_support');">pupil_support</a>
					<ul id="level1_8pupil_support" style="margin-left:20px;">
						
				<li class="folder">
					<a href="javascript:openList('level2pupil_support_2Annual_Review');">Annual_Review</a>
					<ul id="level2pupil_support_2Annual_Review" style="margin-left:20px;">
						
				<li class="folder">
					<a href="javascript:openList('level3Annual_Review_3transition_plans');">transition_plans</a>
					<ul id="level3Annual_Review_3transition_plans" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/AR10_TP_SNS_ADVICE.doc">AR10_TP_SNS_ADVICE.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/AR2_TP_PARENT_ADVICE.doc">AR2_TP_PARENT_ADVICE.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/AR2_TP_PARENT_INFO.doc">AR2_TP_PARENT_INFO.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/AR3_TP_SCHOOL.doc">AR3_TP_SCHOOL.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/AR4-TPMEDICAL.doc">AR4-TPMEDICAL.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/AR5_TP_EP_ADVICE.doc">AR5_TP_EP_ADVICE.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/AR6_TP_OTHER.doc">AR6_TP_OTHER.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/AR7_TP_PUPIL.doc">AR7_TP_PUPIL.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/ConnexionsS140Assessment.doc">ConnexionsS140Assessment.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/FORM_AR1.doc">FORM_AR1.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/FORM_TransitionPlan&ActionSummary2003.doc">FORM_TransitionPlan&ActionSummary2003.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/FORMTransitionPlanActionSummary2004.doc">FORMTransitionPlanActionSummary2004.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/HealthTPfulltransition.doc">HealthTPfulltransition.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/HealthTPSHORTTransitionform.doc.doc">HealthTPSHORTTransitionform.doc.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/Social_Services_TP_2003.doc">Social_Services_TP_2003.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/transition_plans/TP_protocol.doc">TP_protocol.doc</a></li>
				
					</ul>
				</li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/AR1_July_2005.doc">AR1_July_2005.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/AR2_Parents_Information_Sheet.doc">AR2_Parents_Information_Sheet.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/AR_flowchart.doc">AR_flowchart.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Form_AR2_-_Parental_advice.doc">Form_AR2_-_Parental_advice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Form_AR3_-_School_advice.doc">Form_AR3_-_School_advice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Form_AR4_-_Medical_advice.doc">Form_AR4_-_Medical_advice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Form_AR5_-_EP_advice.doc">Form_AR5_-_EP_advice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Form_AR6_-_Other_advice.doc">Form_AR6_-_Other_advice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Form_AR7_-_Health_advice.doc">Form_AR7_-_Health_advice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Form_AR8_SC&H_advice.doc">Form_AR8_SC&H_advice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Guidance_amending_statements.doc">Guidance_amending_statements.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Guidance_AR_process.doc">Guidance_AR_process.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Guidance_non_ed_advice.doc">Guidance_non_ed_advice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Pupil_advice_primary.doc">Pupil_advice_primary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Pupil_advice_secondary.doc">Pupil_advice_secondary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Transport_Parents.doc">Transport_Parents.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Annual_Review/Transport_School.doc">Transport_School.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level2pupil_support_3Exclusion_Letters');">Exclusion_Letters</a>
					<ul id="level2pupil_support_3Exclusion_Letters" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Exclusion_Letters/(1a)_Head_letter_permanent_exclusion.doc">(1a)_Head_letter_permanent_exclusion.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Exclusion_Letters/(1b)__Head_letter_FT_less_than_5_days_in_term.doc">(1b)__Head_letter_FT_less_than_5_days_in_term.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Exclusion_Letters/(1c)__Head_letter_FT_6_to_15_days_in_term.doc">(1c)__Head_letter_FT_6_to_15_days_in_term.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Exclusion_Letters/(1d)_Head_letter_FT_more_than_15_days_in_term.doc">(1d)_Head_letter_FT_more_than_15_days_in_term.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Exclusion_Letters/(2)DISCIPLINECOMMITTEE-invitationtoparent.doc">(2)DISCIPLINECOMMITTEE-invitationtoparent.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Exclusion_Letters/(4a)__DC_letter_confirming_perm_exc.doc">(4a)__DC_letter_confirming_perm_exc.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Exclusion_Letters/(4b)DISCIPLINECOMMITTEE-reinstate.doc">(4b)DISCIPLINECOMMITTEE-reinstate.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Exclusion_Letters/EX1.doc">EX1.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Exclusion_Letters/EX2.doc">EX2.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level2pupil_support_4sen_handbook');">sen_handbook</a>
					<ul id="level2pupil_support_4sen_handbook" style="margin-left:20px;">
						
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_3contents');">contents</a>
					<ul id="level3sen_handbook_3contents" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/contents/ContentsSENHandbook.doc">ContentsSENHandbook.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_4secion_10');">secion_10</a>
					<ul id="level3sen_handbook_4secion_10" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_10/323parentalinfosheet.doc">323parentalinfosheet.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_10/Amendedstatementparentalinfosheet.doc">Amendedstatementparentalinfosheet.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_10/diffsinschool1.pdf">diffsinschool1.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_10/Flowchart.doc">Flowchart.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_10/Guideforschoolsonparentpartnership.pdf">Guideforschoolsonparentpartnership.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_10/KeepTalkinginfosheet.doc">KeepTalkinginfosheet.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_10/SCRIPinfosheet.doc">SCRIPinfosheet.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_10/SENParentbooklet.pdf">SENParentbooklet.pdf</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_5secion_9');">secion_9</a>
					<ul id="level3sen_handbook_5secion_9" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_9/SchoolSENselfevaluationguidance.doc">SchoolSENselfevaluationguidance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_9/SENObservationForm.doc">SENObservationForm.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_9/SENObservationFormblank.doc">SENObservationFormblank.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_9/SENSelf-evaluationformPrimary.doc">SENSelf-evaluationformPrimary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/secion_9/SENSelf-evaluationformSecondary.doc">SENSelf-evaluationformSecondary.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_6section_1');">section_1</a>
					<ul id="level3sen_handbook_6section_1" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_1/SENPolicypdf.pdf">SENPolicypdf.pdf</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_7section_12');">section_12</a>
					<ul id="level3sen_handbook_7section_12" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_12/SpecialschoolsinsertforHandbook.doc">SpecialschoolsinsertforHandbook.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_8section_13');">section_13</a>
					<ul id="level3sen_handbook_8section_13" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_13/eb4Uoverview.doc">eb4Uoverview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_13/epsleaf.pdf">epsleaf.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_13/PaediatricSL.doc">PaediatricSL.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_9section_14');">section_14</a>
					<ul id="level3sen_handbook_9section_14" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_14/SchoolBookSept03.doc">SchoolBookSept03.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_14/SchoolsPSSAllocationApr04.doc">SchoolsPSSAllocationApr04.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_14/STAFFLISTApr2004.doc">STAFFLISTApr2004.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_10section_2');">section_2</a>
					<ul id="level3sen_handbook_10section_2" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_2/ASDgrids.doc">ASDgrids.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_2/EBSD.doc">EBSD.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_2/EYMedicaldifficulitesthresholdsdraft2-version1.doc">EYMedicaldifficulitesthresholdsdraft2-version1.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_2/EYSEN1IEP.doc">EYSEN1IEP.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_2/EYSEN2IEPreview.doc">EYSEN2IEPreview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_2/Funding.doc">Funding.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_2/Generalconsiderations.doc">Generalconsiderations.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_2/GLD.doc">GLD.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_2/Glossaryforthresholds.doc">Glossaryforthresholds.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_2/GuidelinesforearlyyearsrequestingSA.doc">GuidelinesforearlyyearsrequestingSA.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_11section_3');">section_3</a>
					<ul id="level3sen_handbook_11section_3" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_3/SEN1IEP.doc">SEN1IEP.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_3/SEN2IEPreview.doc">SEN2IEPreview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_3/SEN3Initialconcerns.doc">SEN3Initialconcerns.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_3/SEN4InformationSummary.doc">SEN4InformationSummary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_3/SEN5MedicalInformation.doc">SEN5MedicalInformation.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_3/SEN6SENRecord.doc">SEN6SENRecord.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_3/SEN7Parentsletter.doc">SEN7Parentsletter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_3/SENHandbookformsguidance.doc">SENHandbookformsguidance.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_12section_4');">section_4</a>
					<ul id="level3sen_handbook_12section_4" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_4/draftdualplacements.doc">draftdualplacements.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_4/GuidelinesforschoolsrequestingSA.doc">GuidelinesforschoolsrequestingSA.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_4/REQUESTinitiationS323school.doc">REQUESTinitiationS323school.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_4/SENToolkitSection8WritingAdvice.pdf">SENToolkitSection8WritingAdvice.pdf</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_13section_5');">section_5</a>
					<ul id="level3sen_handbook_13section_5" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/001MatrixofNeed-HIfinalprimary.doc">001MatrixofNeed-HIfinalprimary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/002MAtrixofNeed-HIfinalsecondary.doc">002MAtrixofNeed-HIfinalsecondary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/003MatrixofNeed-VIprimaryfinal.doc">003MatrixofNeed-VIprimaryfinal.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/004MatrixofNeed-VIsecondaryfinal.doc">004MatrixofNeed-VIsecondaryfinal.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/005MatrixofNeed-PNIfinalprimary.doc">005MatrixofNeed-PNIfinalprimary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/006MatrixofNeed-PNIfinalsecondary.doc">006MatrixofNeed-PNIfinalsecondary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/007MatrixofNeed-finalmedicalprimary.doc">007MatrixofNeed-finalmedicalprimary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/008MatrixofNeed-finalmedicalsecondary.doc">008MatrixofNeed-finalmedicalsecondary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/009MatrixofNeed-speechandlanguagefinal.doc">009MatrixofNeed-speechandlanguagefinal.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/010MatrixofNeed-autismfinalprimary.doc">010MatrixofNeed-autismfinalprimary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/011Matrixofneed-autismfinalsecondary.doc">011Matrixofneed-autismfinalsecondary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/012MatrixofNeed-GLDfinalprimary.doc">012MatrixofNeed-GLDfinalprimary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/013MatrixofNeed-GLDfinalsecondary.doc">013MatrixofNeed-GLDfinalsecondary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/014MatrixofNeed-finalspldprimary1.doc">014MatrixofNeed-finalspldprimary1.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/015MatrixofNeed-spldfinalprimary2.doc">015MatrixofNeed-spldfinalprimary2.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/016MatrixofNeed-spldfinalsecondary.doc">016MatrixofNeed-spldfinalsecondary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/017MatrixofNeed-EBDFinalVersion.doc">017MatrixofNeed-EBDFinalVersion.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/Glossaryforthresholds.doc">Glossaryforthresholds.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/GuidanceonusingtheSENThresholdsforIntervention.doc">GuidanceonusingtheSENThresholdsforIntervention.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_5/Thresholdsforreducingneeds.doc">Thresholdsforreducingneeds.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_14section_6');">section_6</a>
					<ul id="level3sen_handbook_14section_6" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_6/AR1.doc">AR1.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_6/AR2ParentsInformationSheet.doc">AR2ParentsInformationSheet.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_6/Coversheetforsection.doc">Coversheetforsection.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_6/FormAR2-Parentaladvice.doc">FormAR2-Parentaladvice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_6/FormAR3-Schooladvice.doc">FormAR3-Schooladvice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_6/FormAR4-Medicaladvice.doc">FormAR4-Medicaladvice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_6/FormAR5-EPadvice.doc">FormAR5-EPadvice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_6/FormAR6-Otheradvice.doc">FormAR6-Otheradvice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_6/FormAR7-Healthadvice.doc">FormAR7-Healthadvice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_6/FormAR8-SCHadvice.doc">FormAR8-SCHadvice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_6/SENToolkitSection9Annualreviews.pdf">SENToolkitSection9Annualreviews.pdf</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_15section_7');">section_7</a>
					<ul id="level3sen_handbook_15section_7" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/AR10TPSNSADVICE.doc">AR10TPSNSADVICE.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/AR2TPPARENTADVICE.doc">AR2TPPARENTADVICE.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/AR3-TPSCHOOL.doc">AR3-TPSCHOOL.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/AR4-TPMEDICAL.doc">AR4-TPMEDICAL.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/AR5TPEPADVICE.doc">AR5TPEPADVICE.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/AR6TPOTHER.doc">AR6TPOTHER.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/AR7TPPUPIL.doc">AR7TPPUPIL.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/ConnexionsS140Assessment.doc">ConnexionsS140Assessment.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/Coversheetforprimaryschools.doc">Coversheetforprimaryschools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/FORMTransitionPlanActionSummary2004.doc">FORMTransitionPlanActionSummary2004.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/HealthTPfulltransition.doc">HealthTPfulltransition.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/HealthTPSHORTTransitionform.doc.doc">HealthTPSHORTTransitionform.doc.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/NeedsAssessmentLeavingCare.doc">NeedsAssessmentLeavingCare.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/PathwayPlan3LeavingCare.doc">PathwayPlan3LeavingCare.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/SocialServicesTP2003.doc">SocialServicesTP2003.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/TPprotocol.doc">TPprotocol.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_7/TransitionPlanningguidance.doc">TransitionPlanningguidance.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level3sen_handbook_16section_8');">section_8</a>
					<ul id="level3sen_handbook_16section_8" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/sen_handbook/section_8/Fundingstatementfor0405.doc">Fundingstatementfor0405.doc</a></li>
				
					</ul>
				</li>
				
					</ul>
				</li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Accessibility_Strategy_2006.doc">Accessibility_Strategy_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/ASDAssessmentPathwayguidelines.doc">ASDAssessmentPathwayguidelines.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/ASDPathwayflowchart.doc">ASDPathwayflowchart.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Child_Protection_-_Guidance.doc">Child_Protection_-_Guidance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Child_Protection_-_Protocol.doc">Child_Protection_-_Protocol.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Child_Protection_-_Report_Form.doc">Child_Protection_-_Report_Form.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/CME_Guidance_for_schools.doc">CME_Guidance_for_schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/CME_Referral_to_EWS_Pupil_Removed_from_Roll.doc">CME_Referral_to_EWS_Pupil_Removed_from_Roll.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/diffs_in_school1.pdf">diffs_in_school1.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/EPS_Survey_.doc">EPS_Survey_.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/EWSSLAquestionnaireMay02.pdf">EWSSLAquestionnaireMay02.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/ISR_2005-2006_SENIMS_Register_data_Part_2___3.doc">ISR_2005-2006_SENIMS_Register_data_Part_2___3.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/LEAVE_OF_ABSENCE_DURING_TERM_TIME_app_form.doc">LEAVE_OF_ABSENCE_DURING_TERM_TIME_app_form.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/NickDryPPT.ppt">NickDryPPT.ppt</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/PARMSdocumentOctober2004.doc">PARMSdocumentOctober2004.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Protocol_parenting_orders_and_contracts_Aug_06.doc">Protocol_parenting_orders_and_contracts_Aug_06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/PSS0107_Code_of_Conduct_amended_Oct_06.doc">PSS0107_Code_of_Conduct_amended_Oct_06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/PSS0107_Guidance_for_EWOs_Oct2006.doc">PSS0107_Guidance_for_EWOs_Oct2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/PSS0107_Guidance_for_schools_Oct2006.doc">PSS0107_Guidance_for_schools_Oct2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/PSS0604Attach1nursereferralprimary.doc">PSS0604Attach1nursereferralprimary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/PSS0604Attach2nursereferralsecondary.doc">PSS0604Attach2nursereferralsecondary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/PSS0604Attach3nursereferralform.doc">PSS0604Attach3nursereferralform.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/PSS_08_06_VIG_conference_Flyer.doc">PSS_08_06_VIG_conference_Flyer.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/REQUEST_initiation_S323_school_February_2002.doc">REQUEST_initiation_S323_school_February_2002.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Risk_Assessment_and_Physical_Restraint_guidance.doc">Risk_Assessment_and_Physical_Restraint_guidance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/SEN_policy_pdf.pdf">SEN_policy_pdf.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/pupil_support/Statutoryassessmentschoolreportform.doc">Statutoryassessmentschoolreportform.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level1_9schools_finance');">schools_finance</a>
					<ul id="level1_9schools_finance" style="margin-left:20px;">
						
				<li class="folder">
					<a href="javascript:openList('level2schools_finance_2finance_handbook');">finance_handbook</a>
					<ul id="level2schools_finance_2finance_handbook" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/Appendix12A-CISOperationsincludedandexcluded.doc">Appendix12A-CISOperationsincludedandexcluded.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/Appendix12B-FlowchartofCIS.doc">Appendix12B-FlowchartofCIS.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/Appendix14B-ApplicationforOptionalInsurance.doc">Appendix14B-ApplicationforOptionalInsurance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/Appendix23B-Samplelayoutofcashbook.doc">Appendix23B-Samplelayoutofcashbook.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/Appendix23C-ReceiptsandPaymentsAccount.doc">Appendix23C-ReceiptsandPaymentsAccount.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/Appendix23D-SchoolFund.doc">Appendix23D-SchoolFund.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/Appendix6A-BankSignatoryCardandCoveringLetter.doc">Appendix6A-BankSignatoryCardandCoveringLetter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/Appendix_9A_-_Pecuniary_Interests.doc">Appendix_9A_-_Pecuniary_Interests.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/AreaB-Appendix11B.doc">AreaB-Appendix11B.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/AreaB-Appendix11D.doc">AreaB-Appendix11D.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/AreaB-Appendix11E.doc">AreaB-Appendix11E.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/AreaB-Appendix11F.doc">AreaB-Appendix11F.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/AreaB-Appendix11H.doc">AreaB-Appendix11H.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/AreaB-Appendix11I.doc">AreaB-Appendix11I.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/AreaB-Appendix7A-DisposalofEquipmentAuthorisationForm.doc">AreaB-Appendix7A-DisposalofEquipmentAuthorisationForm.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/AreaBAppendix18A.doc">AreaBAppendix18A.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/AreaBAppendix19A.doc">AreaBAppendix19A.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/DeliveryChecklist.doc">DeliveryChecklist.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/IncomeChecklist.xls">IncomeChecklist.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/InvoiceChecklist.xls">InvoiceChecklist.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/ModelSchemeofDelegation-RevisedOct2004V1.doc">ModelSchemeofDelegation-RevisedOct2004V1.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/OrderChecklist.doc">OrderChecklist.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/OrderPro-forma.xls">OrderPro-forma.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/Payment_for_Fees_Concultancy.doc">Payment_for_Fees_Concultancy.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/VATreadyreckoner.xls">VATreadyreckoner.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/finance_handbook/VirementBook.xls">VirementBook.xls</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level2schools_finance_3fms_manual');">fms_manual</a>
					<ul id="level2schools_finance_3fms_manual" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Annual_Salary_Awards.doc">Annual_Salary_Awards.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Annual_Timetable.doc">Annual_Timetable.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Best_Practice_Guidance_for_additional_income.doc">Best_Practice_Guidance_for_additional_income.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Budget_Monitoring.doc">Budget_Monitoring.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Budget_Monitoring_guidance.doc">Budget_Monitoring_guidance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Budget_Overview.doc">Budget_Overview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/calculations.doc">calculations.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Checking_outstanding_Purchase_Orders.doc">Checking_outstanding_Purchase_Orders.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Coding_Structure.doc">Coding_Structure.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Commonly_used_cost_centres.xls">Commonly_used_cost_centres.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Cost_Statements_(staffing_and_non-staffing).doc">Cost_Statements_(staffing_and_non-staffing).doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Creating_cost_centres___linking_ledger_codes.doc">Creating_cost_centres___linking_ledger_codes.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Currently_available_ledger_codes.xls">Currently_available_ledger_codes.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Employee_Details_Report.doc">Employee_Details_Report.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Example_Virement_Book.xls">Example_Virement_Book.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Exchange_of_information.doc">Exchange_of_information.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/FMS_Coding_Structure.doc">FMS_Coding_Structure.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/FMS_navigation.doc">FMS_navigation.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_add_a_debtor.doc">How_to_add_a_debtor.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_add_a_product.doc">How_to_add_a_product.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_adjust_or_cancel_a_Petty_Cash_folio.doc">How_to_adjust_or_cancel_a_Petty_Cash_folio.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_cancel_a_Purchase_Order.doc">How_to_cancel_a_Purchase_Order.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_Cancel_an_Invoice.doc">How_to_Cancel_an_Invoice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_clear_salary_commitments.doc">How_to_clear_salary_commitments.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_create_a_paying_in_slip.doc">How_to_create_a_paying_in_slip.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_edit_a_Purchase_Order.doc">How_to_edit_a_Purchase_Order.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_enter_a_Credit_Note.doc">How_to_enter_a_Credit_Note.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_enter_a_new_supplier_in_FMS.doc">How_to_enter_a_new_supplier_in_FMS.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_enter_a_receipt.doc">How_to_enter_a_receipt.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_enter_an_invoice.doc">How_to_enter_an_invoice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_enter_catalogue_details_for_a_supplier.doc">How_to_enter_catalogue_details_for_a_supplier.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_enter_cost_centre_allocations.doc">How_to_enter_cost_centre_allocations.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_enter_Fund_Allocations.doc">How_to_enter_Fund_Allocations.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_enter_Receipts_and_Paying-in_Slips_.doc">How_to_enter_Receipts_and_Paying-in_Slips_.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_enter_the_Cental_Payments_Report.doc">How_to_enter_the_Cental_Payments_Report.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_enter_the_Centrally_Paid_Staff_Expenses_report.doc">How_to_enter_the_Centrally_Paid_Staff_Expenses_report.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_enter_the_Miscodings_Report.doc">How_to_enter_the_Miscodings_Report.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_investigate_variances_between_FMS_and_Powersolve.doc">How_to_investigate_variances_between_FMS_and_Powersolve.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_process_a_Cash_Book_Journal.doc">How_to_process_a_Cash_Book_Journal.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_process_a_Normal_Journal.doc">How_to_process_a_Normal_Journal.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_process_a_Petty_Cash_reimbursement.doc">How_to_process_a_Petty_Cash_reimbursement.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_process_a_VAT_Reimbursement_Journal.doc">How_to_process_a_VAT_Reimbursement_Journal.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_process_a_Virement.doc">How_to_process_a_Virement.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_process_Petty_Cash_expenditure.doc">How_to_process_Petty_Cash_expenditure.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_process_salaries_rejected_by_the_Autorec_Disk.doc">How_to_process_salaries_rejected_by_the_Autorec_Disk.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_process_the_Automatic_Reconciliation_Disk.doc">How_to_process_the_Automatic_Reconciliation_Disk.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_process_the_Autorec_disk.doc">How_to_process_the_Autorec_disk.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_Produce_Standard_Reports.doc">How_to_Produce_Standard_Reports.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_produce_the_monthly_VAT_claim.doc">How_to_produce_the_monthly_VAT_claim.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_produce_the_monthly_VAT_claim_PDF.doc.pdf">How_to_produce_the_monthly_VAT_claim_PDF.doc.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_produce_the_monthly_VAT_claim_revised.doc">How_to_produce_the_monthly_VAT_claim_revised.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_raise_a_Credit_Note.doc">How_to_raise_a_Credit_Note.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_raise_a_Non_Order_Invoice.doc">How_to_raise_a_Non_Order_Invoice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_raise_a_Purchase_Order.doc">How_to_raise_a_Purchase_Order.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_raise_an_invoice_from_an_order.doc">How_to_raise_an_invoice_from_an_order.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_reconcile_FMS_with_Powersolve.doc">How_to_reconcile_FMS_with_Powersolve.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_reconcile_FMS_with_Powersolve_revised.doc">How_to_reconcile_FMS_with_Powersolve_revised.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_reconcile_Petty_Cash.doc">How_to_reconcile_Petty_Cash.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_reconcile_your_bank_statement.doc">How_to_reconcile_your_bank_statement.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_run_the_Integrator.doc">How_to_run_the_Integrator.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_set_up_Books.doc">How_to_set_up_Books.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/How_to_view_salary_projections.doc">How_to_view_salary_projections.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Invoice_overview.doc">Invoice_overview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Journals_overview.doc">Journals_overview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Monthly_envelope_overview.doc">Monthly_envelope_overview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Non-invoiced_income_overview.doc">Non-invoiced_income_overview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Petty_Cash_Claim_Form.xls">Petty_Cash_Claim_Form.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Petty_cash_overview.doc">Petty_cash_overview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Petty_Cash_Reconciliation_Sheet.xls">Petty_Cash_Reconciliation_Sheet.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Powersolve_reconciliation_overview.doc">Powersolve_reconciliation_overview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Processing_a_cheque_run_and_cancelling_cheques.doc">Processing_a_cheque_run_and_cancelling_cheques.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/processing_salaries_rejected_by_the_autorec_disk_PDF.pdf">processing_salaries_rejected_by_the_autorec_disk_PDF.pdf</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Purchase_Order_Request_Template.xls">Purchase_Order_Request_Template.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Stamps.doc">Stamps.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Summary_of_monthly_finance_procedures.doc">Summary_of_monthly_finance_procedures.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Unreconciled_Items.doc">Unreconciled_Items.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/User_Defined_Reports_-_handout_with_screenshots.doc">User_Defined_Reports_-_handout_with_screenshots.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Users_and_Security.doc">Users_and_Security.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/VAT_on_expenditure.doc">VAT_on_expenditure.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/VAT_on_income.doc">VAT_on_income.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Viewing_Existing_Journals.doc">Viewing_Existing_Journals.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Viewing_Supplier_Details.doc">Viewing_Supplier_Details.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/fms_manual/Virements_overview.doc">Virements_overview.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level2schools_finance_4miscellaneous');">miscellaneous</a>
					<ul id="level2schools_finance_4miscellaneous" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/846LLLL_DFES846_S52Outturn04052.xls">846LLLL_DFES846_S52Outturn04052.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/846LLLL_DFESXXX_S5206073.xls">846LLLL_DFESXXX_S5206073.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/846LLLL_DFESXXX_S5207082.xls">846LLLL_DFESXXX_S5207082.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/846LLLL_DFESXXX_S52B05063.xls">846LLLL_DFESXXX_S52B05063.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/AccessingtheUpdatedEducationOnlineWebsite.doc">AccessingtheUpdatedEducationOnlineWebsite.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/Copy_of_846LLLL_DFESXXX_S52o05063_(uploaded_to_DfES_23rd_Nov).xls">Copy_of_846LLLL_DFESXXX_S52o05063_(uploaded_to_DfES_23rd_Nov).xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/S5203-04oA846.xls">S5203-04oA846.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/S5203-04oB846.xls">S5203-04oB846.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/s52table1.xls">s52table1.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/s52table2.xls">s52table2.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/s52table3.xls">s52table3.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/s52table5.xls">s52table5.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/Scheme_for_financing_schools_Intranet_Dec_06.doc">Scheme_for_financing_schools_Intranet_Dec_06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/Schemeforfinancingschools.doc">Schemeforfinancingschools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/SF2004-05.xls">SF2004-05.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/SF2005-06.xls">SF2005-06.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/ThresholdArrangements0506.doc">ThresholdArrangements0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/ThresholdIncomeBudgets04_05.doc">ThresholdIncomeBudgets04_05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/ThresholdOverview.doc">ThresholdOverview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/miscellaneous/UPSDataCollectionSummerTerm.doc">UPSDataCollectionSummerTerm.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level2schools_finance_5sent_to_schools');">sent_to_schools</a>
					<ul id="level2schools_finance_5sent_to_schools" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/17_mth_outturn_letter_to_schools.doc">17_mth_outturn_letter_to_schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/17mthoutturnlettertoschoolsSept2004.doc">17mthoutturnlettertoschoolsSept2004.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/2004-05ClosedownGuidanceNotes.doc">2004-05ClosedownGuidanceNotes.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Accounts_Receivable_Workshop-September_2006.doc">Accounts_Receivable_Workshop-September_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Advances_letter_September.doc">Advances_letter_September.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Annual_SJ_insurance_2006_07_info.doc">Annual_SJ_insurance_2006_07_info.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Anycomms_instructions.doc">Anycomms_instructions.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Anycomms_jul_06.doc">Anycomms_jul_06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/AppendixA-SFSetupfor0506.xls">AppendixA-SFSetupfor0506.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Application_Optional_Insurance_June_06.doc">Application_Optional_Insurance_June_06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/April2005AdvanceLetter.doc">April2005AdvanceLetter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/April_2006_Advance_Notes_FMS6.doc">April_2006_Advance_Notes_FMS6.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/April_2007_Advance_notes_FMS6.doc">April_2007_Advance_notes_FMS6.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/April_Advance_Explanation.doc">April_Advance_Explanation.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Audit_and_Finance_Feedback_Guidance.doc">Audit_and_Finance_Feedback_Guidance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Audit_and_Finance_guidance_June_06.doc">Audit_and_Finance_guidance_June_06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Authority_Financial_Reports_Letter.doc">Authority_Financial_Reports_Letter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Bank_account_arrangements.doc">Bank_account_arrangements.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/BillingSystemInvoiceBH30-CoveringLetter.doc">BillingSystemInvoiceBH30-CoveringLetter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Brighton___Hove_Debtors_Invoices.doc">Brighton___Hove_Debtors_Invoices.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/BritishGasInvoices.doc">BritishGasInvoices.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Budget_Input_Workshop.doc">Budget_Input_Workshop.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Budget_Planning_Workshop.doc">Budget_Planning_Workshop.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/BudgetPlansandTSG.doc">BudgetPlansandTSG.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/CapitalExpenditureandIncomeLetter.doc">CapitalExpenditureandIncomeLetter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Caretakerovertimeguidancenotes.doc">Caretakerovertimeguidancenotes.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/CFR-InvitationtoCourse.doc">CFR-InvitationtoCourse.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/CFR_course_May_2006.doc">CFR_course_May_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/CFRPreliminaryClosedownNotes0405.doc">CFRPreliminaryClosedownNotes0405.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Change_of_bank_signatory_-_school_headed_paper.doc">Change_of_bank_signatory_-_school_headed_paper.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Change_of_bank_signatory_authorisation_-_B_H_headed_paper.doc">Change_of_bank_signatory_authorisation_-_B_H_headed_paper.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Change_of_Signatory_Request.doc">Change_of_Signatory_Request.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/CIS_Changes_April_2007.doc">CIS_Changes_April_2007.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/closing_accounts_month_13_2005_2006.doc">closing_accounts_month_13_2005_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/closing_accounts_thank_you.doc">closing_accounts_thank_you.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/ClosingofAccountsMonth13-20042005.doc">ClosingofAccountsMonth13-20042005.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Covering_letter.doc">Covering_letter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/CoverLetterGuidNotesTLOSAG142.doc">CoverLetterGuidNotesTLOSAG142.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/EducationOnline-SchoolsFinanceTeam.doc">EducationOnline-SchoolsFinanceTeam.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/ElectronicReportsMay05.doc">ElectronicReportsMay05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Entering_carryforwards_to_FMS.doc">Entering_carryforwards_to_FMS.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/EnteringCarryforwardsinFMS.doc">EnteringCarryforwardsinFMS.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Error_Suspense_Problem.doc">Error_Suspense_Problem.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/EstimatedMarch05Supply.xls">EstimatedMarch05Supply.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/February_06_Reimbursement.doc">February_06_Reimbursement.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Feedback_letter_to_schools.doc">Feedback_letter_to_schools.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Final_Budget_Notification.doc">Final_Budget_Notification.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/FinalBudgetNotification.doc">FinalBudgetNotification.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Fixing_Budget_in_FMS_06.07.doc">Fixing_Budget_in_FMS_06.07.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/FixingBudgetinFMS0405.doc">FixingBudgetinFMS0405.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Flyer_for_FIS.doc">Flyer_for_FIS.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/FMS6_Year-End_Guidance_for_Rates.doc">FMS6_Year-End_Guidance_for_Rates.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/FMS6Structurefor2005-06.doc">FMS6Structurefor2005-06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/FMS6SystemMaintenance.doc">FMS6SystemMaintenance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/FMS_data_transfer_Q3.doc">FMS_data_transfer_Q3.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/FMSGuideNotereAG142toprimaries.doc">FMSGuideNotereAG142toprimaries.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/FMSstructure0506.doc">FMSstructure0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/FMStransfer0405.doc">FMStransfer0405.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Grant_Coding_-_Oct_05.doc">Grant_Coding_-_Oct_05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Grant_Funding_Analysis.xls">Grant_Funding_Analysis.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/GrantFundingLetter05-07-2005.doc">GrantFundingLetter05-07-2005.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/GrantFundingTable.xls">GrantFundingTable.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Grants_-_Setup_Ledger_Codes_JB060_JE022_JE026.doc">Grants_-_Setup_Ledger_Codes_JB060_JE022_JE026.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/IndicativeSchoolBudgetShares2005-06.doc">IndicativeSchoolBudgetShares2005-06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/InsuranceLettertoSchoolsJuly05.doc">InsuranceLettertoSchoolsJuly05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Introduction_of_Debit_Cards_on_School_Bank_Accounts.doc">Introduction_of_Debit_Cards_on_School_Bank_Accounts.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Invitation_letter.doc">Invitation_letter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Invitation_letter_to_J_V_workshop.doc">Invitation_letter_to_J_V_workshop.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Invitation_to_BM__F_Existing.doc">Invitation_to_BM__F_Existing.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Invitation_to_BM__F_New.doc">Invitation_to_BM__F_New.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Invitation_to_CFR_Course_May_2006.doc.doc">Invitation_to_CFR_Course_May_2006.doc.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/InvitationtoBudgetPlanningworkshop.doc">InvitationtoBudgetPlanningworkshop.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Invoicedateentryreminder.doc">Invoicedateentryreminder.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/JournalsandVirementsWorkshop.doc">JournalsandVirementsWorkshop.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/LACandCPRnos.doc">LACandCPRnos.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/LeadContactOfficerChangesJan05.doc">LeadContactOfficerChangesJan05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Leadershipnewpoints.doc">Leadershipnewpoints.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Letter_to_heads_re_bank_interests_06-07.doc">Letter_to_heads_re_bank_interests_06-07.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Letter_to_headteachers_for_2006_applications.doc">Letter_to_headteachers_for_2006_applications.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Letter_to_schools_re_FMSiS_April_07.doc">Letter_to_schools_re_FMSiS_April_07.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/LetterofthanksreVATclaims.doc">LetterofthanksreVATclaims.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/LetterwithGuidanceNotes.doc">LetterwithGuidanceNotes.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/March_2006_School_Reports.doc">March_2006_School_Reports.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/March_2007_school_reports.doc">March_2007_school_reports.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Month12ReportSummary.doc">Month12ReportSummary.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Monthly_VAT_procedure_change.doc">Monthly_VAT_procedure_change.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/NEW_Authority_Financials_Costcentres.doc">NEW_Authority_Financials_Costcentres.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Oncost_Analysis_Letter.doc">Oncost_Analysis_Letter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/OutstandingItems0405.xls">OutstandingItems0405.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/OutturnLetterReSingleStatus04-05-05.doc">OutturnLetterReSingleStatus04-05-05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Overview_of_process_to_change_signatory_Sep_06.doc">Overview_of_process_to_change_signatory_Sep_06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/planned_use_of_balances_may_2006.doc">planned_use_of_balances_may_2006.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/PlannedUseofBalancesMay2005.doc">PlannedUseofBalancesMay2005.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Producing_a_Cumulative_Expense_Analysis_Report_and_exporting_it_to_Excel.doc">Producing_a_Cumulative_Expense_Analysis_Report_and_exporting_it_to_Excel.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Questionnaire_-_graphical_score_summary.xls">Questionnaire_-_graphical_score_summary.xls</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Rates_Adjustment_FMS6_instructions.doc">Rates_Adjustment_FMS6_instructions.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Recording_Rates_Expenditure.doc">Recording_Rates_Expenditure.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/RecordingRatesExpenditure2004-05.doc">RecordingRatesExpenditure2004-05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/ReferenceFieldonEDR.doc">ReferenceFieldonEDR.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/ReimbursementArrangements.doc">ReimbursementArrangements.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/ReimbursementonSeptCentralPayments.doc">ReimbursementonSeptCentralPayments.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Request_for_data_transfer_and_powersolve_rec_Jan_05.doc">Request_for_data_transfer_and_powersolve_rec_Jan_05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Request_for_Data_Transfer_Oct_06.doc">Request_for_Data_Transfer_Oct_06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Requestfordatatransferandpowersolverec-Oct04.doc">Requestfordatatransferandpowersolverec-Oct04.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/RequestforDataTransferandPowersolveRec.doc">RequestforDataTransferandPowersolveRec.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/School_Journey_Insurance_issues_-_advice_from_Rawdon.doc">School_Journey_Insurance_issues_-_advice_from_Rawdon.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/SchoolsInsurance.doc">SchoolsInsurance.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Schoolspaymentofinvoices0405.doc">Schoolspaymentofinvoices0405.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Sept_06_Advance_notes.doc">Sept_06_Advance_notes.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/ServicestoSchoolslettertoschools200506Dec04.doc">ServicestoSchoolslettertoschools200506Dec04.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/setting_up_new_ledger_code_for_redundancy.doc">setting_up_new_ledger_code_for_redundancy.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/setup_ledger_code_AN070.doc">setup_ledger_code_AN070.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/SIMSPersonnelGuidNoteNewTLOSSub-groupforprimaries.doc">SIMSPersonnelGuidNoteNewTLOSSub-groupforprimaries.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/SingleStatusAdvice.doc">SingleStatusAdvice.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/SSG_Additional_Personalisation.doc">SSG_Additional_Personalisation.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/SSG_and_Teachers_pensions.doc">SSG_and_Teachers_pensions.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Submission_of_School_Budget_Plans.doc">Submission_of_School_Budget_Plans.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Teachers_Pension_DFES_Q_and_A.doc">Teachers_Pension_DFES_Q_and_A.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/TeachingAssistantsJune2005Pay.doc">TeachingAssistantsJune2005Pay.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/TeamChanges.doc">TeamChanges.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Threshold_and_UPS_Data_Requirement.doc">Threshold_and_UPS_Data_Requirement.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Threshold_and_UPS_Data_Requirement_for_0708_budget_shares.doc">Threshold_and_UPS_Data_Requirement_for_0708_budget_shares.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/ThresholdOverview.doc">ThresholdOverview.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Tidy_up_letter_Sept06.doc">Tidy_up_letter_Sept06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Tidying_up_FMS.doc">Tidying_up_FMS.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Trainingcoursedetails.doc">Trainingcoursedetails.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/TransitionalGrant2004YearEndForm.doc">TransitionalGrant2004YearEndForm.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/TransitionalGrantCriteria.doc">TransitionalGrantCriteria.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/TransitionalSchoolsGrantLetter25-05-05.doc">TransitionalSchoolsGrantLetter25-05-05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/TSGYearEndLetter2004-05.doc">TSGYearEndLetter2004-05.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/UPS2andUPS3DataCollection.doc">UPS2andUPS3DataCollection.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/UPS2ApriltoAugustletter.doc">UPS2ApriltoAugustletter.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/UPS_data_collection_Sept_05_to_March_06.doc">UPS_data_collection_Sept_05_to_March_06.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/UPS_Reimbursement_for_April_to_August.doc">UPS_Reimbursement_for_April_to_August.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/UPSDataCollectionSummerTerm.doc">UPSDataCollectionSummerTerm.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/sent_to_schools/Year-End_Covering_Letter.doc">Year-End_Covering_Letter.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level2schools_finance_6services_to_schools');">services_to_schools</a>
					<ul id="level2schools_finance_6services_to_schools" style="margin-left:20px;">
						
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/A_summary_Services_to_Schools_documentation_0708.doc">A_summary_Services_to_Schools_documentation_0708.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/Advisory_Services_to_Schools_0607.doc">Advisory_Services_to_Schools_0607.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/AdvisoryServicestoSchools0506.doc">AdvisoryServicestoSchools0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/ChangestoServicestoSchoolsdocumentation0506.doc">ChangestoServicestoSchoolsdocumentation0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/Client_Contracts_inc_Courier_services_to_schools_0506.doc">Client_Contracts_inc_Courier_services_to_schools_0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/ClientContractsincCourierservicestoschools0506.doc">ClientContractsincCourierservicestoschools0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/Finance_additional_SLA_item_07_08.doc">Finance_additional_SLA_item_07_08.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/Finance_Services_to_Schools_0708.doc">Finance_Services_to_Schools_0708.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/FinanceServicestoSchools0506.doc">FinanceServicestoSchools0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/Governor_Support_Services_for_Schools_0506.doc">Governor_Support_Services_for_Schools_0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/GovernorSupportServicesforSchools0506.doc">GovernorSupportServicesforSchools0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/HR_Update_to_Services_to_Schools_Documentation_2006-07.doc">HR_Update_to_Services_to_Schools_Documentation_2006-07.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/HRServices_to_Schools_Documentation_0607.doc">HRServices_to_Schools_Documentation_0607.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/HRServicestoschools0506.doc">HRServicestoschools0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/ICTadditionalnotesfor0708.doc">ICTadditionalnotesfor0708.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/ICTPrimaries_specials___nurseries_SLA_07_08.doc">ICTPrimaries_specials___nurseries_SLA_07_08.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/ICTprimariesspecialsSLA0506updated.doc">ICTprimariesspecialsSLA0506updated.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/ICTSecondaries_SLA_07_08.doc">ICTSecondaries_SLA_07_08.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/ICTsecondariesSLA0506updated.doc">ICTsecondariesSLA0506updated.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/ICTServicestoSchools2005notes.doc">ICTServicestoSchools2005notes.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/LSS_Services_to_Schools_0506.doc">LSS_Services_to_Schools_0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/LSSServicestoSchools0506.doc">LSSServicestoSchools0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/PayrollServicestoSchools0506.doc">PayrollServicestoSchools0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/PayrollServicestoSchools0708.doc">PayrollServicestoSchools0708.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/Performance___Management_Services_to_Schools_0506.doc">Performance___Management_Services_to_Schools_0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/PerformanceManagementServicestoSchools0506.doc">PerformanceManagementServicestoSchools0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/SEAL_Services_to_Schools_0506.doc">SEAL_Services_to_Schools_0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/SEALServicestoSchools0506.doc">SEALServicestoSchools0506.doc</a></li>
				
					<li class="doc"><a href="E:\webApp\downloads/education/downloads/education_online/key_documents/Central_Services/schools_finance/services_to_schools/ServicestoSchoolslettertoschools200506.doc">ServicestoSchoolslettertoschools200506.doc</a></li>
				
					</ul>
				</li>
				
				<li class="folder">
					<a href="javascript:openList('level2schools_finance_7useful_documents');">useful_documents</a>
					<ul id="level2schools_finance_7useful_documents" style="margin-left:20px;">
						
				<li class="folder">
					<a href="javascript:openList('level3useful_documents_3closedown_2005-06');">closedown_2005-06</a>
					<ul id="level3useful_documents_3closedown_2005-06" style="margin-left:20px;">
						<!-- " ---></TD></TD></TD></TH></TH></TH></TR></TR></TR></TABLE></TABLE></TABLE></A></ABBREV></ACRONYM></ADDRESS></APPLET></AU></B></BANNER></BIG></BLINK></BLOCKQUOTE></BQ></CAPTION></CENTER></CITE></CODE></COMMENT></DEL></DFN></DIR></DIV></DL></EM></FIG></FN></FONT></FORM></FRAME></FRAMESET></H1></H2></H3></H4></H5></H6></HEAD></I></INS></KBD></LISTING></MAP></MARQUEE></MENU></MULTICOL></NOBR></NOFRAMES></NOSCRIPT></NOTE></OL></P></PARAM></PERSON></PLAINTEXT></PRE></Q></S></SAMP></SCRIPT></SELECT></SMALL></STRIKE></STRONG></SUB></SUP></TABLE></TD></TEXTAREA></TH></TITLE></TR></TT></U></UL></VAR></WBR></XMP>

    <font face="arial"></font>
    
    
    
    	<html>
    		<head>
    			<title>Error Occurred While Processing Request</title>
    
    
    <script language="JavaScript">
    function showHide(targetName) {
        if( document.getElementById ) { // NS6+
            target = document.getElementById(targetName);
        } else if( document.all ) { // IE4+
            target = document.all[targetName];
        }
        
        if( target ) {
            if( target.style.display == "none" ) {
                target.style.display = "inline";
            } else {
                target.style.display = "none";
            }
        }
    } 
    </script>
    	
    
    	    </head>
    	<body>
    
    	
    
    <table border="1" cellpadding="3" bordercolor="#000808" bgcolor="#e7e7e7">
    <tr>
        <td bgcolor="#000066">
            <font style="COLOR: white; FONT: 11pt/13pt verdana" color="white">
            Error Occurred While Processing Request
            </font>
        </td>
    </tr>
    <tr>
        <td>	
            <font style="COLOR: black; FONT: 8pt/11pt verdana">
    
    	
    <table width="500" cellpadding="0" cellspacing="0" border="0">
    <tr>
        <td id="tableProps2" align="left" valign="middle" width="500">
            <h1 id="textSection1" style="COLOR: black; FONT: 13pt/15pt verdana">
            The string &quot;level4closedown_2005-06&quot; is not a valid ColdFusion variable name.
            </h1>
        </td>
    </tr>
    <tr>
        <td id="tablePropsWidth" width="400" colspan="2">
            <font style="COLOR: black; FONT: 8pt/11pt verdana">
            Valid variable names must start with a letter, and can only contain letter, numbers, and underscores.
            </font>
        </td>
    </tr>		
    <tr>
        <td height>&nbsp;</td>
    </tr>
    
    
        		<tr>
        			<td width="400" colspan="2">
        			<font style="COLOR: black; FONT: 8pt/11pt verdana">
        
        			The error occurred in <b>E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm: line 28</b><br>
        
        			
        					<b>Called from</b> E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm: line 43<br>
        				
        					<b>Called from</b> E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm: line 43<br>
        				
        					<b>Called from</b> E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm: line 43<br>
        				
        					<b>Called from</b> E:\webApp\web\sites\EDUCATION\page_elements\key_documents.cfm: line 14<br>
        				
        					<b>Called from</b> E:\webApp\web\sites\EDUCATION\display.cfm: line 188<br>
        				
        					<b>Called from</b> E:\webApp\web\modGetMenuData.cfm: line 51<br>
        				
        					<b>Called from</b> E:\webApp\parsed\parsed.web.display.cfm: line 14<br>
        				
        					<b>Called from</b> E:\webApp\fusebox40.runtime.cfmx.cfm: line 201<br>
        				
        					<b>Called from</b> E:\webApp\index.cfm: line 2<br>
        				
        			</td>
        		</tr>
    		
    			<tr>
    			    <td colspan="2">
    
    				
    						<pre>26 : 				directory=&quot;#dir#&quot;
27 : 				name=&quot;#qry_name#&quot;
<b>28 : 				sort=&quot;type ASC, name ASC&quot;&gt;</b>
29 : 
30 : &lt;!--- there are always at least two entries in a directory - . and .. - so 2 means no docs ---&gt;
</pre>
    					
    				
    			    </td>
    			</tr>
    			<tr>
    				<td colspan="2">
    					<hr color="#C0C0C0" noshade>
    				</td>
    			</tr>
    		
    <tr>
        <td colspan="2">
            <font style="COLOR: black; FONT: 8pt/11pt verdana">
            Please try the following:
            <ul>
	    
	<li>Check the <a href='http://www.macromedia.com/go/proddoc_getdoc' target="new">ColdFusion documentation</a> to verify that you are using the correct syntax.</li>
	<li>Search the <a href='http://www.macromedia.com/support/coldfusion/' target="new">Knowledge Base</a> to find a solution to your problem.</li>

            </ul>
            <p>
        </td>
    </tr>
    
    <tr>
        <td colspan="2">
            <table border="0" cellpadding="0" cellspacing="0">
        	<tr>
        	    <td><font style="COLOR: black; FONT: 8pt/11pt verdana">Browser&nbsp;&nbsp;</td> 
        		<td><font style="COLOR: black; FONT: 8pt/11pt verdana">UbiCrawler/v0.5beta (http://law.dsi.unimi.it/)</td>
        	</tr>
        	<tr>
        		<td><font style="COLOR: black; FONT: 8pt/11pt verdana">Remote Address&nbsp;&nbsp;</td> 
        		<td><font style="COLOR: black; FONT: 8pt/11pt verdana">159.149.133.236</td>
        	</tr>
        	<tr>
        	    <td><font style="COLOR: black; FONT: 8pt/11pt verdana">Referrer&nbsp;&nbsp;</td> 
        		<td><font style="COLOR: black; FONT: 8pt/11pt verdana"></td>
        	</tr>
        	<tr>
        	    <td><font style="COLOR: black; FONT: 8pt/11pt verdana">Date/Time&nbsp;&nbsp;</td> 
        		<td><font style="COLOR: black; FONT: 8pt/11pt verdana">03-May-07 11:20 PM</td>
        	</tr>					
            </table>
        </td>
    </tr>
    </table>
    
    
        <table width="500" cellpadding="0" cellspacing="0">
        <tr>
            <td valign="top">
                <font style="FONT: 8pt/11pt verdana;">
                Stack Trace 
            </td>
        </tr>
        <tr>
            <td id="cf_stacktrace" >
                <font style="COLOR: black; FONT: 8pt/11pt verdana">
                	at cftg_list_level2ecfm1729692234.runPage(E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm:28) 	at cftg_list_level2ecfm1729692234.runPage(E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm:43) 	at cftg_list_level2ecfm1729692234.runPage(E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm:43) 	at cftg_list_level2ecfm1729692234.runPage(E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm:43) 	at cfkey_documents2ecfm1565605402.runPage(E:\webApp\web\sites\EDUCATION\page_elements\key_documents.cfm:14) 	at cfdisplay2ecfm790123003.runPage(E:\webApp\web\sites\EDUCATION\display.cfm:188) 	at cfmodGetMenuData2ecfm1337827847.runPage(E:\webApp\web\modGetMenuData.cfm:51) 	at cfparsed2eweb2edisplay2ecfm1117108676.runPage(E:\webApp\parsed\parsed.web.display.cfm:14) 	at cffusebox402eruntime2ecfmx2ecfm679603457.runPage(E:\webApp\fusebox40.runtime.cfmx.cfm:201) 	at cfindex2ecfm349732200.runPage(E:\webApp\index.cfm:2) 
                <br />
                <br />
                <pre>coldfusion.runtime.NeoPageContext$InvalidVariableNameException: The string &quot;level4closedown_2005-06&quot; is not a valid ColdFusion variable name.
	at coldfusion.runtime.NeoPageContext.SymTab_validateName(NeoPageContext.java:1200)
	at coldfusion.runtime.NeoPageContext.setAttribute(NeoPageContext.java:275)
	at coldfusion.tagext.io.DirectoryTag.doStartTag(DirectoryTag.java:195)
	at coldfusion.runtime.CfJspPage._emptyTag(CfJspPage.java:1871)
	at cftg_list_level2ecfm1729692234.runPage(E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm:28)
	at coldfusion.runtime.CfJspPage.invoke(CfJspPage.java:147)
	at coldfusion.filter.CFVariablesScopeFilter.invoke(CFVariablesScopeFilter.java:60)
	at coldfusion.tagext.lang.ModuleTag.doStartTag(ModuleTag.java:256)
	at coldfusion.runtime.CfJspPage._emptyTcfTag(CfJspPage.java:1881)
	at cftg_list_level2ecfm1729692234.runPage(E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm:43)
	at coldfusion.runtime.CfJspPage.invoke(CfJspPage.java:147)
	at coldfusion.filter.CFVariablesScopeFilter.invoke(CFVariablesScopeFilter.java:60)
	at coldfusion.tagext.lang.ModuleTag.doStartTag(ModuleTag.java:256)
	at coldfusion.runtime.CfJspPage._emptyTcfTag(CfJspPage.java:1881)
	at cftg_list_level2ecfm1729692234.runPage(E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm:43)
	at coldfusion.runtime.CfJspPage.invoke(CfJspPage.java:147)
	at coldfusion.filter.CFVariablesScopeFilter.invoke(CFVariablesScopeFilter.java:60)
	at coldfusion.tagext.lang.ModuleTag.doStartTag(ModuleTag.java:256)
	at coldfusion.runtime.CfJspPage._emptyTcfTag(CfJspPage.java:1881)
	at cftg_list_level2ecfm1729692234.runPage(E:\webApp\web\sites\EDUCATION\exceptions\ed_keyDocuments\tg_list_level.cfm:43)
	at coldfusion.runtime.CfJspPage.invoke(CfJspPage.java:147)
	at coldfusion.filter.CFVariablesScopeFilter.invoke(CFVariablesScopeFilter.java:60)
	at coldfusion.tagext.lang.ModuleTag.doStartTag(ModuleTag.java:256)
	at coldfusion.runtime.CfJspPage._emptyTcfTag(CfJspPage.java:1881)
	at cfkey_documents2ecfm1565605402.runPage(E:\webApp\web\sites\EDUCATION\page_elements\key_documents.cfm:14)
	at coldfusion.runtime.CfJspPage.invoke(CfJspPage.java:147)
	at coldfusion.tagext.lang.IncludeTag.doStartTag(IncludeTag.java:357)
	at coldfusion.runtime.CfJspPage._emptyTag(CfJspPage.java:1871)
	at cfdisplay2ecfm790123003.runPage(E:\webApp\web\sites\EDUCATION\display.cfm:188)
	at coldfusion.runtime.CfJspPage.invoke(CfJspPage.java:147)
	at coldfusion.tagext.lang.IncludeTag.doStartTag(IncludeTag.java:357)
	at coldfusion.runtime.CfJspPage._emptyTag(CfJspPage.java:1871)
	at cfmodGetMenuData2ecfm1337827847.runPage(E:\webApp\web\modGetMenuData.cfm:51)
	at coldfusion.runtime.CfJspPage.invoke(CfJspPage.java:147)
	at coldfusion.tagext.lang.IncludeTag.doStartTag(IncludeTag.java:357)
	at coldfusion.runtime.CfJspPage._emptyTag(CfJspPage.java:1871)
	at cfparsed2eweb2edisplay2ecfm1117108676.runPage(E:\webApp\parsed\parsed.web.display.cfm:14)
	at coldfusion.runtime.CfJspPage.invoke(CfJspPage.java:147)
	at coldfusion.tagext.lang.IncludeTag.doStartTag(IncludeTag.java:357)
	at coldfusion.runtime.CfJspPage._emptyTag(CfJspPage.java:1871)
	at cffusebox402eruntime2ecfmx2ecfm679603457.runPage(E:\webApp\fusebox40.runtime.cfmx.cfm:201)
	at coldfusion.runtime.CfJspPage.invoke(CfJspPage.java:147)
	at coldfusion.tagext.lang.IncludeTag.doStartTag(IncludeTag.java:357)
	at coldfusion.runtime.CfJspPage._emptyTag(CfJspPage.java:1871)
	at cfindex2ecfm349732200.runPage(E:\webApp\index.cfm:2)
	at coldfusion.runtime.CfJspPage.invoke(CfJspPage.java:147)
	at coldfusion.tagext.lang.IncludeTag.doStartTag(IncludeTag.java:357)
	at coldfusion.filter.CfincludeFilter.invoke(CfincludeFilter.java:62)
	at coldfusion.filter.ApplicationFilter.invoke(ApplicationFilter.java:107)
	at coldfusion.filter.PathFilter.invoke(PathFilter.java:80)
	at coldfusion.filter.ExceptionFilter.invoke(ExceptionFilter.java:47)
	at coldfusion.filter.ClientScopePersistenceFilter.invoke(ClientScopePersistenceFilter.java:28)
	at coldfusion.filter.BrowserFilter.invoke(BrowserFilter.java:35)
	at coldfusion.filter.GlobalsFilter.invoke(GlobalsFilter.java:43)
	at coldfusion.filter.DatasourceFilter.invoke(DatasourceFilter.java:22)
	at coldfusion.CfmServlet.service(CfmServlet.java:105)
	at jrun.servlet.ServletInvoker.invoke(ServletInvoker.java:91)
	at jrun.servlet.JRunInvokerChain.invokeNext(JRunInvokerChain.java:42)
	at jrun.servlet.JRunRequestDispatcher.invoke(JRunRequestDispatcher.java:252)
	at jrun.servlet.ServletEngineService.dispatch(ServletEngineService.java:527)
	at jrun.servlet.jrpp.JRunProxyService.invokeRunnable(JRunProxyService.java:192)
	at jrunx.scheduler.ThreadPool$DownstreamMetrics.invokeRunnable(ThreadPool.java:348)
	at jrunx.scheduler.ThreadPool$ThreadThrottle.invokeRunnable(ThreadPool.java:451)
	at jrunx.scheduler.ThreadPool$UpstreamMetrics.invokeRunnable(ThreadPool.java:294)
	at jrunx.scheduler.WorkerThread.run(WorkerThread.java:66)
</pre></td>
            </tr>
        </table>		
    
    </font>
        </td>
    </tr>
    </table>
    </body></html>

    
    

p":s> i