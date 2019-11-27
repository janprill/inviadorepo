<template>
	<section class="antialiased font-copy w-full bg-black text-left text-white">
		<div class="container mx-auto font-normal leading-normal">
			<h3 class="font-neuzeit font-bold text-2xl md:text-3xl lg:text-4xl">Lade Deinen kostenlosen Report herunter</h3>
			<div class="mt-4 sm:flex">
				<input type="email" class="block w-full focus:outline-0 bg-white py-3 px-6 mb-2 sm:mb-0 text-2xl font-neuzeit" name="email" placeholder="Enter your email" required="">
				<button class="h-16 uppercase text-md text-white font-bold focus:outline-0 w-full sm:w-auto bg-red-700 hover:bg-red-400 focus:bg-blue px-6">
					Ja, schickt mir jetzt 5 Wege, mein Gehalt zu verdoppeln.
				</button>
			</div>
			<div class="text-md leading-none mt-4">
				Inviado sendet Dir Deinen kostenlosen Report nach Anmeldung an unseren Newsletter beim bekannten Anbieter <em>Mailchimp</em>.
				Du willigst ein, diesen Newsletter zu abonnieren. Du kannst Dich jederzeit wieder abmelden.
				Von der Einwilligung mitumfasst ist eine Erfolgsmessung. Weitere Hinweise erhalten Sie in unserer 
				<a class="underline" href="/datenschutz">Datenschutzerklärung</a>
			</div>
		</div>
	</section>
</template>

<script>
export default {
	props: []
}
</script