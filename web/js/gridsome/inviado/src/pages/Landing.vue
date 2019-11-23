<template>
<Layout>
	<nav class="font-sans bg-white text-center flex justify-between my-4 mx-auto container overflow-hidden">
		<a href="/" class="block text-left">
			<img src="https://stitches.hyperyolo.com/images/logo.png" class="h-10 sm:h-10 rounded-full" alt="logo">
		</a>
		<ul class="text-sm text-gray-700 list-none p-0 flex items-center">
			<li><a href="#" class="inline-block py-2 px-3 text-gray-900 hover:text-gray-700 no-underline">Products</a></li>
			<li><a href="#" class="inline-block py-2 px-3 text-gray-900 hover:text-gray-700 no-underline">Pricing</a></li>
			<li class="pr-2"><a href="#" class="inline-block py-2 px-3 text-gray-900 hover:text-gray-700 no-underline">FAQs</a></li>
			<li class="pl-2 border-l"><a href="#" class="inline-block py-2 px-3 text-gray-900 hover:text-gray-700 no-underline">Log In</a></li>
			<button class="bg-black hover:bg-text-gray-800 text-white ml-4 py-2 px-3">
				Sign Up
			</button>
		</ul>
	</nav>




  <!-- double your income -->
	<section class="antialiased font-sans w-full text-left text-white bg-black py-8">
    <div class="container mx-auto py-8 font-normal leading-normal">
      <h1 class="text-white font-neuzeit font-semibold leading-none w-128 text-2xl md:text-3xl lg:text-5xl xl:text-8xl">
        5 Wege, Dein Gehalt zu verdoppeln.
      </h1>
      <p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
        Für zwei davon musst Du <span class="font-bold text-white">nicht einmal verhandeln</span>. Kaum jemand kennt sie. Wir zeigen Dir Schritt für Schritt den Weg. 
        Als Entwickler, Tech PM oder Data Scientist gibt es keine bessere Zeit als heute, um Dein Leben auf allen Ebenen massiv zu verbessern.
      </p>
      <p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
        Lade jetzt Deinen kostenlosen 80-seitigen Report herunter, um die Tricks der 'High-Achiever' zu lernen, die bei gleicher Arbeit mehr als das doppelte verdienen.
      </p>
      <div class="mt-4 sm:flex mt-12">
        <input type="email" class="block w-full focus:outline-0 bg-white py-3 px-6 mb-2" name="email" placeholder="Enter your email" required="*">
        <button class="uppercase text-sm text-white focus:outline-0 w-full sm:w-auto bg-red-700 hover:bg-gray-900 focus:bg-gray-300 tracking-wide px-6">
          Schickt mir bitte meine 5 geheimen Wege, mein Gehalt zu verdoppeln
        </button>
      </div>
		</div>
	</section>

  <!-- fly like an eagle -->
	<section class="antialiased font-sans w-full text-left text-white bg-black py-8">
    <div class="container mx-auto py-8 font-normal leading-normal bg-blue-500 bg-gradient">
			<h1 class="p-6 text-white font-neuzeit font-semibold leading-none w-128 text-xl md:text-3xl lg:text-5xl xl:text-6xl">
        Eine ganze Menge Freiheit kannst Du kaufen.
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

  <!-- be rich -->
	<section class="font-sans container m-auto flex flex-col py-8 px-6 text-white font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
		<h1 class="text-white font-neuzeit font-semibold leading-none w-128 text-2xl md:text-3xl lg:text-5xl xl:text-8xl">
			Wir helfen Dir, zu Verdienen wie Dein Zahnarzt.
    </h1>
		<p class="mt-6">
			Wir möchten, dass Du frei bist. Und wir möchten helfen, dass Du reich wirst.
		</p>
		<p class="mt-6">
			Jawoll! Das haben wir wirklich geschrieben! Bei Dir kommt ein klammes Gefühl hoch?
			Der Ausblick auf Wohlstand fühlt sich nicht gut an?
			Dann lies unbedingt weiter!
		</p>
		<p class="mt-6">
			Du wirst gerade von Deiner langjährigen Mittelschichtserziehung gebeutelt:
			"Geld macht doch nicht glücklich. Geld ist mir nicht so wichtig."
		</p>
		<p class="mt-6">
			Aber Geld sollte Dir wichtig sein. Zumindest wenn Du frei sein möchtest.
			Ethisch korrekter Wohlstand ist möglich. Ihn zu erreichen ist Deine Pflicht.
			Denn - glaube uns - andere haben mit dem Geld weniger 
			hehre Ziele als Du. Denk' darüber nach!
		</p>
	</section>

  <!-- ebook -->
	<section class="antialiased font-sans w-full text-left text-white bg-black py-8">
    <div class="container mx-auto py-8 font-normal leading-normal">
      <h1 class="text-white font-neuzeit font-semibold leading-none w-128 text-2xl md:text-3xl lg:text-5xl xl:text-8xl">
        Deinen kostenlosen Report jetzt als eBook herunterladen.
      </h1>
      <p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
        TODO - was der so kann, der Report.
      </p>
      <p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
        Lade jetzt Deinen kostenlosen 80-seitigen Report herunter, um die Tricks der 'High-Achiever' zu lernen, die bei gleicher Arbeit mehr als das doppelte verdienen.
      </p>
		</div>
	</section>




	<!-- ebook bullets -->
	<section class="text-white font-copy text-lg container m-auto flex flex-col lg:flex-row justify-center my-8">
		<div class="order-2 lg:order-1 w-full lg:w-1/4 flex flex-col items-center lg:items-end justify-center text-center lg:text-right ml-0 lg:ml-8 mt-8">
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2"></div>
			<h2 class="mb-2 font-bold">80 Seiten geballte Informationen...</h2>
			<p class="leading-normal mb-8">wie Du zum high-achiever wirst, dem liebend gern ein viel höheres Gehalt gezahlt wird.</p>
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2"></div>
			<h2 class="mb-2 font-bold">Leck-mich-Geld...</h2>
			<p class="leading-normal mb-8">sagen einige zu dem Vermögensaufbau, der Dir mit massiv höherem Gehalt endlich möglich ist.</p>
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2"></div>
			<h2 class="mb-2 font-bold">Fünf kreative Wege zu Deiner Gehaltserhöhung.</h2>
			<p class="leading-normal">Als Verhandlungsmuffel wirst Du Dich besonders wundern, wie auch Du zu mehr Geld kommen kannst.</p>
		</div>
		<div class="order-1 lg:order-2 w-full lg:w-1/2 max-w-sm m-auto mb-6 lg:mb-0">
			<img src="https://stitches.hyperyolo.com/images/demo-phone.png" alt="">
		</div>
		<div class="order-last w-full lg:w-1/4 flex flex-col items-center lg:items-start justify-center text-center lg:text-left mt-8 mr-8">
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2"></div>
			<h2 class="mb-2 font-bold">Ein unfairer Vorteil gegenüber Deinen Kollegen.</h2>
			<p class="leading-normal mb-8">Sie werden sich über Deine Performancesteigerung wundern und sich fragen, wie Du so an ihnen vorbeiziehen kannst.</p>
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2"></div>
			<h2 class="mb-2 font-bold">Schuppen, die Dir von den Augen fallen.</h2>
			<p class="leading-normal mb-8">Wir decken auf, was Deine Vorgesetzten und Geschäftsführer verdienen. Vorsicht: Es könnte sein, dass Du wütend wirst.</p>
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2"></div>
			<h2 class="mb-2 font-bold">Mindset.</h2>
			<p class="leading-normal">Wir werden Dir zeigen, wie Du Frustration und Wut in Energie umwandelst, die Du für Dein Fortkommen nutzt.</p>
		</div>
	</section>

  <!-- grow your business -->
	<section class="antialiased font-sans w-full bg-gray-300 text-left text-black py-8">
		<div class="container mx-auto py-8 font-normal leading-normal">
			<h3 class="text-2xl">Grow Your Business</h3>
			<p class="">Build high performing teams, establish design practices, mentor and grow the next generation of great designers, and design interfaces and experiences.</p>
			<div class="max-w-sm mt-4 sm:flex">
				<input type="email" class="block w-full focus:outline-0 bg-white py-3 px-6 mb-2 sm:mb-0" name="email" placeholder="Enter your email" required="">
				<button class="uppercase text-sm text-white focus:outline-0 w-full sm:w-auto bg-red-700 hover:bg-red-400 focus:bg-blue tracking-wide px-6">Subscribe</button>
			</div>
		</div>
	</section>

  <!-- long copy -->
	<section class="font-sans container m-auto flex flex-col py-8 text-center px-6">
		<label class="text-sm uppercase">20 Month 2019</label>
		<h1 class="my-8 max-w-full m-auto text-3xl md:text-4xl lg:text-5xl font-medium">Lorem Ipsum is simply dummy text of the printing</h1>
		<p class="mt-1 lg:mt-4 max-w-lg m-auto leading-loose mb-6 text-left">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard
			McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the
			undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the
			Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
		<p class="max-w-lg m-auto leading-loose mb-6 text-left">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also
			reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
	</section>

	<section class="font-sans text-center my-8 px-8">
		<h1 class="capitalize font-medium">Ready to get started?</h1>
		<p class="text-gray-700 mt-2 mb-6">But I must explain to you how all this mistaken idea of denouncing </p>
		<button class="bg-black hover:bg-gray-900 text-white hover:text-white py-3 px-6 uppercase text-xs tracking-wide">Learn More</button>
	</section>

	<!-- stories -->
	<section
		class="my-8 font-sans container m-auto flex flex-col lg:flex-row text-center lg:text-left sm:items-center">
		<div class="w-full lg:w-1/2"><img src="https://stitches.hyperyolo.com/images/demo-phone.png" alt="" class="w-64" /></div>
		<div class="w-full lg:w-1/2 flex flex-col justify-center items-start p-8 items-center lg:items-start">
			<label for="tagline" class="uppercase tracking-wide text-gray-700 font-bold">best app ever</label>
			<h1 class="my-4 font-normal">Our Work Flow</h1>
			<p class="leading-normal mb-4 text-gray-700">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
				eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		</div>
	</section>


	<section
		class="my-8 pt-8 font-sans container m-auto flex flex-col-reverse lg:flex-row text-center lg:text-left sm:items-center">
		<div class="w-full lg:w-1/2 flex flex-col justify-center items-start p-8 items-center lg:items-start">
			<label for="tagline" class="uppercase tracking-wide text-gray-700 font-bold">best app ever</label>
			<h1 class="my-4 font-normal">Our Work Flow</h1>
			<p class="leading-normal mb-4 text-gray-700">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
				eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		</div>
		<div class="w-full lg:w-1/2"><img src="https://stitches.hyperyolo.com/images/demo-phone.png" alt="" class="w-64"/></div>
	</section>

	<section
		class="my-8 font-sans container m-auto flex flex-col lg:flex-row text-center lg:text-left sm:items-center">
		<div class="w-full lg:w-1/2"><img src="https://stitches.hyperyolo.com/images/demo-phone.png" alt=""  class="w-64" /></div>
		<div class="w-full lg:w-1/2 flex flex-col justify-center items-start p-8 items-center lg:items-start">
			<label for="tagline" class="uppercase tracking-wide text-gray-700 font-bold">best app ever</label>
			<h1 class="my-4 font-normal">Our Work Flow</h1>
			<p class="leading-normal mb-4 text-gray-700">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
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
import { ParallaxContainer, ParallaxElement } from 'vue-mouse-parallax'
export default {
  props: [],
  data() {
    return {
    }
  },
  components: {
     ParallaxContainer,
     ParallaxElement,
  },
}
</script>
