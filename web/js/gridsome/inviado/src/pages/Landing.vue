<template>
<Layout>

	<header class="flex items-center justify-between px-4 py-3 bg-black">
		<div class="text-white font-neuzeit font-bold">
			<img src="/images/inviado.png" style="height:40px;"/>
		</div>
		
		<div>
			<button type="button" class="block text-gray-500 hover:text-white focus:text-white focus:outline-none">
				<svg class="h-6 w-6 fill-current" viewBox="0 0 24 24">
					<path fill-rule="evenodd" d="M4 5h16a1 1 0 0 1 0 2H4a1 1 0 1 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2z"/>
				</svg>
			</button>
		</div>
	</header>

  <!-- double your income -->
	<copy 
		title="5 Wege, Dein Gehalt zu verdoppeln." 
		label="Du hast weder Geld, noch Zeit zu verschenken" 
		margin="An jedem Tag, den Du zögerst, bleibt Geld auf dem Tisch liegen.">
		<p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
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
    <div class="container mx-auto py-8 font-normal leading-normal bg-blue-500 bg-gradient">
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
		class="text-white my-8 font-copy container m-auto flex flex-col lg:flex-row text-center lg:text-left sm:items-center">
		<div class="w-full lg:w-1/2"><img src="https://stitches.hyperyolo.com/images/demo-phone.png" alt="" class="w-64" /></div>
		<div class="w-full lg:w-1/2 flex flex-col justify-center items-start p-8 items-center lg:items-start">
			<label for="tagline" class="uppercase tracking-wide font-bold">best app ever</label>
			<h1 class="my-4 font-normal">Our Work Flow</h1>
			<p class="leading-normal mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
				eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		</div>
	</section>


	<section
		class="text-white my-8 pt-8 font-copy container m-auto flex flex-col-reverse lg:flex-row text-center lg:text-left sm:items-center">
		<div class="w-full lg:w-1/2 flex flex-col justify-center items-start p-8 items-center lg:items-start">
			<label for="tagline" class="uppercase tracking-wide font-bold">best app ever</label>
			<h1 class="my-4 font-normal">Our Work Flow</h1>
			<p class="leading-normal mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
				eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		</div>
		<div class="w-full lg:w-1/2"><img src="https://stitches.hyperyolo.com/images/demo-phone.png" alt="" class="w-64"/></div>
	</section>

	<section
		class="text-white my-8 font-sans container m-auto flex flex-col lg:flex-row text-center lg:text-left sm:items-center">
		<div class="w-full lg:w-1/2"><img src="https://stitches.hyperyolo.com/images/demo-phone.png" alt=""  class="w-64" /></div>
		<div class="w-full lg:w-1/2 flex flex-col justify-center items-start p-8 items-center lg:items-start">
			<label for="tagline" class="uppercase tracking-wide font-bold">best app ever</label>
			<h1 class="my-4 font-normal">Our Work Flow</h1>
			<p class="leading-normal mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
				eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		</div>
	</section>

  <!-- final call to action -->
	<section class="font-sans text-center py-8 px-4 lg:px-0 bg-gray-300">
		<div class="container flex flex-col sm:flex-row bg-white m-auto shadow">
			<div class="w-full sm:w-3/4 px-6 pt-6 text-left flex flex-col justify-center">
				<h2 class="capitalize font-medium">Ready to get started?</h2>
				<p class="text-gray-700 mt-2 mb-6">But I must explain to you how all this mistaken idea of denouncing </p>
			</div>
			<div class="w-full sm:w-1/4 flex justify-start sm:justify-center items-center pl-6 pb-6 sm:pl-0 sm:pb-0">
				<button class=" bg-black hover:bg-gray-900 text-white hover:text-white py-3 px-6 uppercase text-xs tracking-wide">Learn More</button>
			</div>
		</div>
	</section>

	<!-- calendly -->
	<section class="bg-gray-300 font-sans">
		<div class="container m-auto flex flex-col md:flex-row">
			<div class="flex flex-col w-full lg:w-1/2 justify-center items-start py-8">
				<label for="tagline" class="uppercase tracking-loose">best app ever</label>
				<h1 class="my-4 font-normal">Our Work Flow</h1>
				<p class="leading-normal mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
					incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ex ea commodo consequat.   Sed ut
					perspiciatis unde omnis iste natus error sit voluptatem accusantium natus error sit.</p>
				<button class="bg-transparent hover:bg-black text-black font-semibold hover:text-white py-2 px-4 border border-black hover:border-transparent">Learn
					More</button>
			</div>
			<div class="w-full lg:w-1/2 lg:py-6">
				<div class="calendly-inline-widget" data-url="https://calendly.com/inviado/free-consulting-call?background_color=4d5055&text_color=ffffff" style="min-width:320px;height:630px;"></div>
			</div>
		</div>
	</section>




	<footer class="font-sans bg-black text-white py-8 px-4">
		<div class="mx-auto overflow-hidden flex justify-between items-center">
			<ul class="text-sm text-gray-700 list-none p-0 flex items-center">
				<li> <a href="/" class="block mr-4 w-32">
						<img src="https://stitches.hyperyolo.com/images/logo-white.png" class="" alt="logo">
					</a></li>
				<li><a href="#" class="inline-block py-2 px-3 text-gray-500 hover:text-gray-500-light no-underline">Product</a></li>
				<li><a href="#" class="inline-block py-2 px-3 text-gray-500 hover:text-gray-500-light no-underline">Company</a></li>
				<li><a href="#" class="inline-block py-2 px-3 text-gray-500 hover:text-gray-500-light no-underline">FAQs</a></li>
				<li><a href="#" class="inline-block py-2 px-3 text-gray-500 hover:text-gray-500-light no-underline">About Us</a></li>
			</ul>
			<p class="inline-block py-2 px-3 text-gray-700 text-xs"> ©2019 Inviado. All rights reserved.</p>
		</div>
	</footer>
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
