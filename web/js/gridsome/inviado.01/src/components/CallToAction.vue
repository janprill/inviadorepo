<template>
	<section class="antialiased font-copy w-full bg-black text-left text-white">

		<div>
			<!-- Begin Mailchimp Signup Form -->
			<div id="mc_embed_signup" class="container mx-auto font-normal leading-normal">
				<h3 class="font-neuzeit font-bold text-2xl md:text-3xl lg:text-4xl">Lade Deinen kostenlosen Report herunter</h3>
				<ValidationObserver v-slot="{ invalid }">
					<form action="https://inviado.us5.list-manage.com/subscribe/post?u=39c6fa54f93cbe29ec0d797ed&amp;id=0f0dfbd450" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
						<div id="mc_embed_signup_scroll">
							<div id="mergeRow-gdpr" class="mergeRow gdpr-mergeRow content__gdprBlock mc-field-group">
								<div class="content__gdpr">
									<label class="checkbox subfield text-white" for="gdpr_15943">
										<ValidationProvider name="Zustimmung" :rules="{ required: { allowFalse: false } }" v-slot="{ errors }">
											<input type="checkbox" id="gdpr_15943" name="gdpr[15943]" value="Y" class="form-checkbox text-green-600 h-6 w-6 text-xl" v-model="agree" />
											<span class="ml-2">Ja, ich möchte den kostenlosen Report herunterladen und willige ein, Emails zu erhalten.* (Pflichtfeld)</span>
											<span class="text-red-500 border-red-500 ml-4">{{ errors[0] }}</span>
										</ValidationProvider>
									</label>
								</div>
							</div>

							<div class="mt-4 lg:flex">
								<ValidationProvider name="E-mail" rules="required|email" v-slot="{ errors }">
									<input type="email" id="mce-EMAIL" v-model="email" class="h-16 w-full focus:outline-0 bg-white py-3 px-6 mb-2 sm:mb-0 text-2xl font-neuzeit text-gray-900" name="EMAIL" placeholder="Gib Deine E-mail ein*" required="*" />
									<span class="text-red-500 border-red-500">{{ errors[0] }}</span>
								</ValidationProvider>
								<button type="submit" 
												name="subscribe" id="mc-embedded-subscribe" 
												:disabled="invalid"
												data-tooltip="Insert email and confirm that you agree" 
												class="justify-start items-start top-0 mt-4 md:mt-0 h-16 uppercase text-md text-white font-bold focus:outline-0 w-full sm:w-auto bg-red-700 hover:bg-red-400 focus:bg-blue px-6">
									Ja, schickt mir jetzt 5 Wege, mein Gehalt zu verdoppeln.
								</button>
							</div>
							<div class="text-md leading-none mt-4 md:mt-2">
								Inviado sendet Dir Deinen kostenlosen Report nach Anmeldung an unseren Newsletter. Er wird vom bekannten Anbieter <em>Mailchimp</em> gehostet.
								Du willigst ein, diesen Newsletter zu abonnieren. Du kannst Dich jederzeit wieder abmelden.
								Von der Einwilligung mitumfasst ist eine Erfolgsmessung. Weitere Hinweise erhalten Sie in unserer 
								<a class="underline" href="/datenschutz" target="_blank">Datenschutzerklärung</a>
							</div>

							<div id="mce-responses" class="clearfix text-white">
								<div class="response" id="mce-error-response" style="display:none"></div>
								<div class="response" id="mce-success-response" style="display:none"></div>
							</div>    
							<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
							<div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_39c6fa54f93cbe29ec0d797ed_0f0dfbd450" tabindex="-1" value=""></div>
						</div>
					</form>
				</ValidationObserver>
			</div>
			<!--End mc_embed_signup-->
		</div>

	</section>




</template>

<script>
export default {
  data: function() {
    return {
      email: '',
      agree: false
    }
  },
}
</script>