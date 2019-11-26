<template>
<Layout>

  <!-- double your income -->
	<copy 
		title="5 Wege, Dein Gehalt zu verdoppeln." 
		label="Du hast weder Geld, noch Zeit zu verschenken" 
		margin="An jedem Tag, den Du zögerst, bleibt Geld auf dem Tisch liegen. Eine Verdopplung Deines Gehalts in drei Jahren oder weniger ist möglich. Dabei wird Dir (noch) unwohl? Dann fangen wir doch erst einmal mit 12.000 EUR an...">
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl">
			Wieso verdienen andere so viel mehr? Wir lüften das Geheimnis. Und zeigen Dir Schritt-für-Schritt wie Du 
			endlich verdienst, was Deine Arbeit wirklich wert ist. Für zwei Strategien zur Gehaltserhöhung 
			musst Du <span class="font-bold text-white">nicht einmal verhandeln</span>. 
		</p>
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
			Dein kostenloser, 80-seitiger Report zeigt Dir die Tricks der 'High-Achiever',
			die bei gleicher Arbeit mehr als das doppelte verdienen.
		</p>	
	</copy>

	<CallToAction />

  <!-- fly like an eagle -->
	<section class="antialiased font-sans w-full text-left text-white bg-black py-8">
    <div class="container mx-auto py-8 font-normal leading-normal bg-blue-500 bg-gradient rounded shadow-xl">
			<h1 class="p-6 text-white font-neuzeit font-semibold leading-none w-128 text-xl md:text-3xl lg:text-5xl xl:text-6xl">
        Freiheit! Ist schwer ohne Geld.
      </h1>
			<div class="mx-auto text-center overflow-hidden">
				<parallax-container class="image-container" :animationDuration=700>
					<parallax-element type="translation" :parallaxStrength=5 tag="img" src="./balloons/balloons_middle.png" class="parallaximage" />
					<parallax-element type="translation" :parallaxStrength=10 tag="img" src="./balloons/balloons_left.png" class="parallaximage" />
					<parallax-element type="translation" :parallaxStrength=-5 tag="img" src="./balloons/balloons_bottom.png" class="parallaximage" />
				</parallax-container>
			</div>
    </div>
	</section>

	<!-- About -->
	<copy 
		title="Wer oder was ist inviado überhaupt?" 
		label="Jan Prill" 
		margin="Spielerberater für IT-Talente. Tech-Lead. Entwickler. Rechtsanwalt.">
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl">
			Inviado ist meine Einladung an Dich. Du bist ganz herzlich eingeladen, meine ganze Erfahrung dafür zu nutzen, 
			endlich das Gehalt zu bekommen, dass dem Wert entspricht, den Du für Dein Unternehmen schaffst. Du bist eingeladen,
			meine Erfahrung dafür zu nutzen, in Deinem Feld (als Dev, TechPM oder Data Scientist) die Karriere zu machen, von der Du träumst.
		</p>	
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl">
			Ich bin Jan Prill. Ich habe 10 Jahre Führungserfahrung in Softwareentwicklungsteams. Ich habe unzählige Vorstellungsgespräche
			mit Kandidaten geführt. Ich habe Topentwickler ausgebildet.
			Ich habe meine Karriere, als Quereinsteiger (ursprünglich bin ich Rechtsanwalt) bis zum Entwicklungsleiter in Startups und 
			mittelständischen Unternehmen gestaltet und nebenbei erfolgreiche Unternehmen gegründet. 
		</p>
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl">
			Mein Elevatorpitch heute: Ich bin ein Spielerberater für IT-Talente. So wie es Spielerberater für Fussballer gibt, brauchen auch viele
			IT-Talente Hilfe in den Bereichen, die nicht zu ihren Kernkompetenzen zählen. Diese Hilfe gebe ich. Z.B. in Verhandlungen, Unternehmensauswahl, Karriereentwicklung.
			Ich habe zahlreiche Entwickler in Positionen mit sechsstelliger Bezahlung gecoached. In Deinem kostenlosen, 80-seitigen Gehaltserhöhungsreport 
			erfährst Du mehr von mir.
		</p>	
	</copy>

  <!-- be as rich as your dentist -->
	<copy 
		title="Verdienen wie Dein Zahnarzt." 
		label="Wenn Du als DEV oder TechPM" 
		margin="weniger als die Hälfte Deines Zahnarztes verdienst, läuft etwas falsch.">
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
			Wir möchten, dass Du frei bist. Und deswegen möchten wir helfen, dass Du reich und vermögend wirst.
			Denn es ist doch ein Gerücht, dass man Freiheit und Gesundheit nicht kaufen kann.
		</p>
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
			Jawoll! Das haben wir wirklich geschrieben! Bei Dir kommt ein klammes Gefühl hoch?
			Der Ausblick auf Wohlstand fühlt sich nicht gut an?
			Dann wirst Du gerade von Deiner langjährigen Mittelschichtserziehung gebeutelt:
			"Geld macht doch nicht glücklich. Geld ist mir nicht so wichtig..."
		</p>	
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
			Geld sollte Dir wichtig sein. Zumindest wenn Du frei sein möchtest.
			Ethisch korrekter Wohlstand ist möglich. Ihn zu erreichen ist Deine Pflicht.
			Denn - glaube uns - andere haben mit dem Geld weniger 
			hehre Ziele als Du. Denk' einmal in Ruhe darüber nach!
		</p>	
	</copy>

  <!-- ebook -->
	<copy 
		title="Im Vertrauen: Soviel verdient Dein Chef." 
		label="Du hast es nicht verdient..." 
		margin="...ausgenutzt zu werden. Du hast es verdient, fair entlohnt zu werden.">
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
			Wir haben ein recht gutes Bild davon, was Führungskräfte in Deinem Bereich verdienen. Wir verraten
			es Dir gerne, damit Du Deinen eigenen Wert für Dein Unternehmen besser einschätzen kannst.
		</p>
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
			Dein kostenloser Report wird dafür sorgen, dass Dir einige Schuppen von den Augen fallen. Höre die Signale:
			Auch Du hast nicht mehr endlos Zeit, Dein Leben zu Deinem Vorteil zu drehen. Es ist genug Zeit vergangen, 
			in denen Du für den Wohlstand der anderen gesorgt hast.
		</p>
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
			So helfen wir Dir:
		</p>
	</copy>

	<!-- ebook bullets -->
	<section class="text-white font-copy text-lg container m-auto flex flex-col lg:flex-row justify-center my-8 mb-16">
		<div class="order-2 lg:order-1 w-full lg:w-1/3 flex flex-col lg:items-end justify-center lg:text-right ml-0 lg:ml-8 mt-0">
			<div class="w-8 h-8 rounded-full bg-gray-300 mb-2"></div>
			<h2 class="mb-1 font-bold">Du musst nicht mehr um mehr Geld bitten...</h2>
			<p class="leading-tight mb-8">wir zeigen Dir auf 80 geballten Seiten, wie Dir mehr Geld angetragen wird, damit Du bleibst.</p>
			<div class="w-8 h-8 rounded-full bg-gray-300 mb-2"></div>
			<h2 class="mb-1 font-bold">Fünf kreative Wege zu Deiner Gehaltserhöhung.</h2>
			<p class="leading-tight mb-8">Als Verhandlungsmuffel wirst Du Dich besonders wundern, wie auch Du zu mehr Geld kommen kannst.</p>
			<div class="w-8 h-8 rounded-full bg-gray-300 mb-2"></div>
			<h2 class="mb-1 font-bold">Ein unfairer Vorteil gegenüber Deinen Kollegen.</h2>
			<p class="leading-tight mb-8">Wo kommt diese Performance her, werden sie sich fragen.</p>
			<div class="w-8 h-8 rounded-full bg-gray-300 mb-2"></div>
			<h2 class="mb-1 font-bold">Schuppen, die Dir von den Augen fallen.</h2>
			<p class="leading-tight mb-8">Wir decken auf, was Deine Vorgesetzten verdienen. Vorsicht: Es könnte sein, dass Du wütend wirst.</p>
			<div class="w-8 h-8 rounded-full bg-gray-300 mb-2"></div>
			<h2 class="mb-1 font-bold">Mindset.</h2>
			<p class="leading-tight">Wir werden Dir zeigen, wie Du Frustration und Wut in Energie umwandelst, die Du für Dein Fortkommen nutzt.</p>
		</div>
		<div class="order-1 lg:order-2 w-full lg:w-2/3 m-auto ml-6 mb-6 mt-0">
			<img src="/images/BookCover.png" alt="">
		</div>
	</section>

	<CallToAction />

	<!-- long copy - multicolumn -->
	<copy 
		title="Grüner wird es nicht." 
		label="Beginne heute" 
		margin="Du hast nicht ewig Zeit...">
		<p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
			Bitte sieh den Tatsachen ins Auge. Auch Du hast nicht ewig Zeit. Jeder Tag, an dem Du Geld auf dem Tisch liegen 
			lässt, holt Dich später doppelt wieder ein. Denn Dein aktuelles Gehalt determiniert nicht nur Deine Rente, sondern
			auch Deinen Verhandlungsspielraum im nächsten Job.
		</p>
		<p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
			Stell Dir einmal einen Moment lang vor, was ein angemessenes Gehalt für Veränderungen für Dich bedeuten kann:
		</p>
	</copy>

	<!-- stories -->
	<section
		class="text-white text-xl my-16 font-copy container m-auto flex flex-col lg:flex-row text-left">
		<div class="w-full lg:w-1/2 mt-0">
			<img src="/images/villa.jpg" alt="" class="rounded shadow-xl" />
		</div>
		<div class="w-full lg:w-1/2 flex flex-col justify-center items-start pl-8">
			<h3 class="font-bold">Villa. Haus. Mietwohnung. Dein Gehalt macht den Unterschied.</h3>
			<p class="leading-normal mb-4 mt-4">
				Du hast Dich vielleicht schon einmal gefragt, wer eigentlich das Geld hat, ein Haus in guter Lage zu kaufen. 
				Die Immobilienpreise sind ja wirklich explodiert. Für die meisten ist es ein Traum in weiter Ferne. Aber es gibt
				Menschen, bei denen macht der Kaufpreis einer Villa ein Zehntel ihres Jahresgehalts aus (Vorstandsmitglieder von DAX-Unternehmen).
				Oder aber 3 Jahresgehälter (Geschäftsführer großer Mittelständler). Wir können Dich, als Spezialisten
				in einer extrem gesuchten Berufsgruppe dahin coachen, dass es 6-10 Jahresgehälter für Dich sind und das ist dann schon sehr überschaubar und 
				bestens finanzierbar. Dein Gehalt macht den Unterschied. Würdest Du so ein Haus nicht gerne Deinen Kindern hinterlassen?
			</p>
		</div>
	</section>

	<section
		class="text-white text-xl my-16 font-copy container m-auto flex flex-col lg:flex-row text-left">
		<div class="w-full lg:w-1/2 flex flex-col justify-center items-start lg:items-start pr-8">
			<h3 class="font-bold">Eine Weltumsegelung. Muss kein Traum bleiben.</h3>
			<p class="leading-normal mb-4 mt-4">
				Eine Weltumsegelung ist ein Paradebeispiel für ein echtes Abenteuer. Sie erfordert sorgfältige Vorbereitung und viel Mut, von der Seitenlinie
				auf das Spielfeld des Lebens zu treten. Vor allem aber braucht man ohne Geld über so ein Abenteuer nicht nachdenken. 
				Erhöhst Du hingegen Dein Gehalt ganz massiv kannst Du in recht kurzer Zeit ein Vermögen aufbauen, dass Dir ein Jahr Auszeit ermöglicht. 
				Wir können Dir zeigen, wie Du die ersten, notwendigen Schritte gehst.
			</p>
		</div>
		<div class="w-full lg:w-1/2"><img src="/images/yacht.jpg" alt="" class="rounded shadow-xl"/></div>
	</section>

	<section
		class="text-white text-xl my-16 font-copy container m-auto flex flex-col lg:flex-row text-left">
		<div class="w-full lg:w-1/2"><img src="/images/highrise.jpg" alt=""  class="rounded shadow-xl" /></div>
		<div class="w-full lg:w-1/2 flex flex-col justify-center items-start pl-8">
			<h3 class="font-bold">Weiter wachsen.</h3>
			<p class="leading-normal mb-4">
				Für viele ist mehr Gehalt nur der erste Schritt. Viele Entwickler, mit ihrem tief verwurzelten Wunsch, Neues zu schaffen - eben zu entwickeln, 
				sind letztlich für angestellte Arbeit nicht geschaffen. Sie möchten etwas eigenes machen. Nicht nur für jemand anderen entwickeln, sondern 
				ihr eigenes Unternehmen schaffen. Aber auch hier ist die Grundlage eine Vermögensbildung, denn selbst wenn Kapital von Kapitalgebern eingeworben wird,
				braucht man einige persönliche "Runway". Letztlich also Geld, um seine Träume zu verwirklichen. Wir sorgen dafür, dass Deine Träume freie Fahrt bekommen.
			</p>
		</div>
	</section>

  <!-- final call to action -->
	<CallToAction class="mb-32" />

	<!-- calendly -->
	<section class="bg-black font-copy text-white text-xl">
		<div class="container m-auto flex flex-col md:flex-row">
			<div class="flex flex-col w-full lg:w-1/2 items-start pr-8">
				<h1 class="font-bold font-neuzeit font-xl">
					Unverbindliche, komplett kostenlose 30-minütige Strategiesitzung. 
				</h1>
				<p class="leading-normal mb-4 mt-6">
					Wenn Du es ernst damit meinst, in den nächsten Monaten massiv mehr Geld zu verdienen (und nur wenn Du es ernst meinst!),
					dann buche jetzt im Kalender Deinen kostenlosen Strategie-Call.
				</p>
				<p class="leading-normal mb-4">
					Ich empfehle Dir, schnell zu sein, denn ich habe nur eine begrenzte Anzahl von Slots für diese Telefonate. Ich verspreche Dir,
					der Anruf wird sich für Dich als extrem wertvoll herausstellen.
				</p>
			</div>
			<div class="w-full lg:w-1/2 shadow-2xl border-gray-900">
				<div class="calendly-inline-widget" data-url="https://calendly.com/inviado/free-consulting-call?background_color=22292f&text_color=ffffff" style="min-width:320px;height:630px"></div>
			</div>
		</div>
	</section>




</Layout>
</template>

<script>
import Copy from '@/components/Copy'
import CallToAction from '@/components/CallToAction'
import { ParallaxContainer, ParallaxElement } from 'vue-mouse-parallax'
export default {
  props: [],
  data() {
    return {
    }
  },
  components: {
		Copy,
		CallToAction,
		ParallaxContainer,
		ParallaxElement,
	},
	mounted() {
    let calendly = document.createElement('script')
    calendly.setAttribute('src', 'https://assets.calendly.com/assets/external/widget.js')
    document.head.appendChild(calendly)
  },
}
</script>
