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

		<div>
			<!-- Begin Mailchimp Signup Form -->
			<div id="mc_embed_signup">
				<form action="https://inviado.us5.list-manage.com/subscribe/post?u=39c6fa54f93cbe29ec0d797ed&amp;id=0f0dfbd450" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
					<div id="mc_embed_signup_scroll">
						<h2>Subscribe</h2>
						<div class="indicates-required"><span class="asterisk">*</span> indicates required</div>
						<div class="mc-field-group">
							<label for="mce-EMAIL">Email Address  <span class="asterisk">*</span></label>
							<input type="email" value="" name="EMAIL" class="text-gray-900 required email" id="mce-EMAIL">
						</div>
					<div id="mergeRow-gdpr" class="mergeRow gdpr-mergeRow content__gdprBlock mc-field-group">
						<div class="content__gdpr">
							<label>Erlaubnis zum Marketing (GDPR / DSGVO)</label>
							<p>Bitte wählen Sie aus, wie Sie von uns hören möchten:</p>
							<fieldset class="mc_fieldset gdprRequired mc-field-group" name="interestgroup_field">
								<label class="checkbox subfield" for="gdpr_15943">
									<input type="checkbox" id="gdpr_15943" name="gdpr[15943]" value="Y" class="av-checkbox "><span>E-Mail</span>
								</label>
							</fieldset>
							<p>Sie können sich jederzeit abmelden, indem Sie auf den Link in der Fußzeile unserer E-Mails klicken. Informationen zu unseren Datenschutzpraktiken finden Sie auf unserer Website.</p>
						</div>
						<div class="content__gdprLegal">
							<p>We use Mailchimp as our marketing platform. By clicking below to subscribe, you acknowledge that your information will be transferred to Mailchimp for processing. <a href="https://mailchimp.com/legal/" target="_blank">Learn more about Mailchimp's privacy practices here.</a></p>
						</div>
					</div>
					<div id="mce-responses" class="clear">
						<div class="response" id="mce-error-response" style="display:none"></div>
						<div class="response" id="mce-success-response" style="display:none"></div>
					</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
						<div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_39c6fa54f93cbe29ec0d797ed_0f0dfbd450" tabindex="-1" value=""></div>
						<div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="text-black button"></div>
					</div>
				</form>
			</div>
			<!--End mc_embed_signup-->
		</div>

	</section>




</template>

<script>
export default {
	props: []
}
</script