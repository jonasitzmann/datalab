
<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN'>
<html>
<head>
<title>DeBug - The Insect Zone</title>
<meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>
<link rel='stylesheet' type='text/css' href='DeBugStyle.css'>

<script language="JavaScript" type="text/JavaScript">

function disable(){
	if (event.button == 2){
		alert("Permission must be sought to use images or text.\nThank you")
	}
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>

</head>

<body>
<p align="center">
	<br />
	<a class="MenuLink" href="index.html">&nbsp;Home&nbsp;</a>
	<a class="MenuLink" href="Quiz.html">&nbsp;Quiz&nbsp;</a>
	<a class="MenuLink" href="WhatAmI.html">&nbsp;Guess&nbsp;the&nbsp;insect&nbsp;</a>
	<a class="MenuLink" href="Anatomy.html">&nbsp;Insect&nbsp;anatomy&nbsp;</a>
	<a class="MenuLink" href="Wallpapers.html">&nbsp;Wallpapers&nbsp;</a>
	<a class="MenuLink" href="AskAQuestion.html">&nbsp;Ask&nbsp;a&nbsp;question&nbsp;</a>
</p>
<script type="text/javascript" language="javascript">
function ShowAnswer(What, HowMany){
	var Clicker = "Show" + What;
	var IsAnswerShowing = document.getElementById(Clicker).innerHTML;
	if (IsAnswerShowing != "Hide answers&nbsp;"){
		var DisplayAnswers = "block";
		var Text = "Hide answers&nbsp;";		
	} else {
		var DisplayAnswers = "none";
		var Text = "Show answers&nbsp;";
	}
	for (i = 0; i <= HowMany; i++){
		var Which = "Answer" + What + i;
		document.getElementById(Which).style.display = DisplayAnswers;
	}
	document.getElementById(Clicker).innerHTML = Text;
}

</script>
<style>
.Answer{display: none;}

</style>

<table align="center" style="border: 4px solid #4678B4; " width="90%" bgcolor="#FFFFFF" cellpadding="10">

<tr><td>
<h1 align="center">Welcome to the Insect Quiz</h1>
</td></tr>

<!-- onClick="javascript:window.scrollBy(0,350)"-->
<tr><td valign="top" >
<img src="images/400StagFight.jpg" align="right" hspace=0 alt="Stag beetles">
<h2>1) Stag beetles</h2>
<li>What might they be fighting over?</li>
<div class="Answer" id="Answer10">They could be fighting over mates, territory or food</div>
<li>Will they hurt each other?</li>
<div class="Answer" id="Answer11">They are unlikely to hurt each other. The weaker beetle will withdraw from the fight before getting hurt</div>
<li>What are they using to fight?</li>
<div class="Answer" id="Answer12">They are using what look like a deer's antler. In fact, they are modified jaws</div>
<li>Are they male or female?</li>
<div class="Answer" id="Answer13">These are both male. The female beetles do not have the large "antlers"</div>
<h3 id="Show1" onClick="ShowAnswer(1, 3);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>

<tr><td valign="top">
<img src="images/400InjectingAnEgg.jpg" align="right" hspace=0 alt="Parasitoid wasp">
<h2>2) Parasitoid wasp</h2>
This tiny parasitoid wasp is laying its egg inside an aphid, (or greenfly)<br />
<li>How might the wasp have found the aphid?</li>
<div class="Answer" id="Answer20">It might have used its eyes to look  for the plant that the aphid likes to feed on, or look for 
signs of aphid damage or look for the aphid itself. Smell is very important to insects so it might have smelt the plant 
the insect likes to feed on, or smelt a different smell associated  with aphid damage on plants or smelt the insects themselves</div>
<li>What will the larva feed on when it hatches out of the egg?</li>
<div class="Answer" id="Answer21">The hatchling will feed on the living body of the aphid-eating the non-essential parts first - yuk!</div>
<li>Can the aphid protect itself?</li>
<div class="Answer" id="Answer22">The aphid has little means of protection from attack. An attacked aphid may release a warning "pheromone" smell to warn other aphids of the danger so that they can escape or simply drop off the plant.</div>
<h3 id="Show2" onClick="ShowAnswer(2, 2);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>

<tr><td valign="top">
<img src="images/400LadybirdFeeding.jpg" align="right" hspace=0 alt="Ladybird feeding">
<h2>3) Ladybird feeding</h2>
<li>What is the ladybird eating?</li>
<div class="Answer" id="Answer30">The ladybird is eating an aphid, also called a greenfly</div>
<li>The ladybird is sometimes called the gardener's friend can you think why?</li>
<div class="Answer" id="Answer31">The aphid is a pest to the gardeners, damaging his plants. The ladybirds helps the gardener by ridding him of these pests</div>
<li>Why is the ladybird so brightly coloured?</li>
<div class="Answer" id="Answer32">The ladybird is bad-tasting to birds. The bright colours warn the birds of this fact</div>
<h3 id="Show3" onClick="ShowAnswer(3, 2);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>


<tr><td valign="top">
<img src="images/400Hoverfly.jpg" align="right" hspace=0 alt="Hoverfly">
<h2>4) Hoverfly</h2>
<li>Why might this insect want to be mistaken for a wasp?</li>
<div class="Answer" id="Answer40">Wasps can hurt predators with a nasty sting. Predators might stay away from the hoverfly because they think this harmless insect is actually a wasp that can sting them.</div>
<li>Can you think of any other insects that look like wasps?</li>
<div class="Answer" id="Answer41">Honeybees, bumblebees</div>
<h3 id="Show4" onClick="ShowAnswer(4, 1);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>

<tr><td valign="top">
<img src="images/400Peacock.jpg" align="right" hspace=0 alt="Peacock butterfly">
<h2>5) Peacock butterfly</h2>
<li>How might it help the butterfly if the spots on its wings were mistaken for eyes?</li>
<div class="Answer" id="Answer50">Predators might think these were the eyes of animal larger and more ferocious than the butterfly</div>
<li>What does this beautiful butterfly feed on?</li>
<div class="Answer" id="Answer51">The adult butterfly feeds on nectar, a sugary liquid produced by flowers</div>
<li>What did it look like when it was growing up?</li>
<div class="Answer" id="Answer52">This butterfly would have been a hairy caterpillar when it was growing up</div>
<h3 id="Show5" onClick="ShowAnswer(5, 2);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>


<tr><td valign="top">
<img src="images/400Slug.jpg" align="right" hspace=0 alt="Slug">
<h2>6) Slug</h2>
<li>Are your parents or teachers happy to find slugs in their garden-if not, why not?</li>
<div class="Answer" id="Answer60">Not happy because slugs eat garden plants such as flowers and vegetables</div>
<li>Slugs are covered in slime-how does the slime help the slug?</li>
<div class="Answer" id="Answer61">Slime helps the slugs by preventing them from drying out, making the ground slippy and easier to move across and also by helping them shrug off poisons such as slug pellets</div>
<h3 id="Show6" onClick="ShowAnswer(6, 1);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>


<tr><td valign="top">
<img src="images/400Aphid.jpg" align="right" hspace=0 alt="Aphid">
<h2>7) Aphid</h2>
Aphids are the worst insect pests in this country. They feed in plants in the garden and on farmer's fields and 
sometimes cause huge amounts of damage. They can also spread plant diseases.<br />
<li>How might farmers stop aphids damaging their crop plants?</li>
<div class="Answer" id="Answer70">They might spray on "pesticides," chemicals that kill the insects or they might plant flowery field margins to encourage aphid predators</div>
<li>How might gardeners stop aphids damaging their garden plants?</li>
<div class="Answer" id="Answer71"> Gardeners might use pesticides too. Sometimes they will use other methods such as washing the plant with soapy water!</div>
<h3 id="Show7" onClick="ShowAnswer(7, 1);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>


<tr><td valign="top">
<img src="images/400ThirstyBee.jpg" align="right" hspace=0 alt="Thirsty honey bee">
<h2>8) Thirsty honey bee</h2>
<li>How is the bee drinking the water?</li>
<div class="Answer" id="Answer80">The bee laps the water up with a special bee "tongue" called a proboscis</div>
<li>Why is the bee covered in fur?</li>
<div class="Answer" id="Answer81">The fur helps keep the bee warm just as fur keeps cats, dogs and other animals warm</div>
<li>Notice the bees large eyes-these are "compound" eyes, made from 100's of tiny lenses. Why might the bee need good eyesight?</li>
<div class="Answer" id="Answer82">The bee needs to find flowers to feed on. It also needs to find its way back to the bee hive</div>
<h3 id="Show8" onClick="ShowAnswer(8, 2);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>


<tr><td valign="top">
<img src="images/400CaribidBeetle.jpg" align="right" hspace=0 alt="Ground beetle">
<h2>9) Ground beetle</h2>
This beetle is a fierce predator eating small insects such as aphids<br />
<li>What does it use to catch its prey?</li>
<div class="Answer" id="Answer90">The beetle catches the prey in its ferocious-looking jaws</div>
<li>Do you think it can run fast?</li>
<div class="Answer" id="Answer91">Beetles like this have long legs to help them run fast</div>
<li>Do you think it can fly?</li>
<div class="Answer" id="Answer92">Under its hard outer wing covering beetles have soft membranous wings that enable them to fly</div>
<h3 id="Show9" onClick="ShowAnswer(9, 2);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>



<tr><td valign="top">
<img src="images/400Moth.jpg" align="right" hspace=0 alt="Tiger moth">
<h2>10) Tiger moth</h2>
This lovely moth is nasty-tasting and poisonous to birds<br />
<li>Why is it called a tiger moth?</li>
<div class="Answer" id="Answer100">The moth is brightly coloured and striped in a similar way to a tiger (different colours though)</div>
<li>How might the moths bright colours and distinctive pattern help it to get eaten less often?</li>
<div class="Answer" id="Answer101">Animals that eat one of these moths will remember that it tasted bad and made them feel ill. 
They will easily recognize another moth of the same type and avoid eating it the next time</div>
<h3 id="Show10" onClick="ShowAnswer(10, 1);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>


<tr><td valign="top">
<img src="images/400PitfallTrap.jpg" align="right" hspace=0 alt="Pitfall trap">
<h2>11) Pitfall trap</h2>
Scientist use pitfall traps to catch insects running around over the ground<br />
<li>Do you know how it works?</li>
<div class="Answer" id="Answer110">Insects that run fast will not stop in time, fall over the edge of the plastic cup and be unable to get out again</div>
<li>Which of the insects on this website might it catch?</li>
<div class="Answer" id="Answer111">It is most likely to catch the ground beetle as this runs fast along the ground where the traps are</div>
<h3 id="Show11" onClick="ShowAnswer(11, 1);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>


<tr><td valign="top">
<img src="images/400CombOfBees.jpg" align="right" hspace=0 alt="Bees in a beehive">
<h2>12) Bees in a beehive</h2>
The bees are sitting on honeycomb inside the hive. The honey comb is made of  hexagonal cells that "tessellate" or fit together<br />
<li>Why might this matter to the bees?</li>
<div class="Answer" id="Answer120">By choosing shapes that fit together the bees don't waste space and don't waste bees wax</div>
<li>What do the bees keep in the cells?</li>
<div class="Answer" id="Answer121">The bees can keep food in the cells (pollen or honey) they also put eggs in and these develop into bee larvae</div>
<li>Who is the most important bee in the hive and why?</li>
<div class="Answer" id="Answer122">The queen bee is the most important one as she is the only one that can lay eggs. By her presence, she also controls how the other bees in the hive behave</div>
<h3 id="Show12" onClick="ShowAnswer(12, 2);" style="cursor: pointer;" align="right">Show answers&nbsp;</h3>
</td>
</tr>

</table>

<p align="center">
	<a class="MenuLink" href="index.html">&nbsp;Home&nbsp;</a>
	<a class="MenuLink" href="Quiz.html">&nbsp;Quiz&nbsp;</a>
	<a class="MenuLink" href="WhatAmI.html">&nbsp;Guess&nbsp;the&nbsp;insect&nbsp;</a>
	<a class="MenuLink" href="Anatomy.html">&nbsp;Insect&nbsp;anatomy&nbsp;</a>
	<a class="MenuLink" href="Wallpapers.html">&nbsp;Wallpapers&nbsp;</a>
	<!--<a class="MenuLink" href="AskAQuestion.html">&nbsp;Ask&nbsp;a&nbsp;question&nbsp;</a>-->
</p>
</body>
</html>


ty_i>"tr,Rrsr/a