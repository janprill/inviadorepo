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

	<section class="antialiased font-sans w-full bg-gray-300 text-left text-black py-8">
		<div class="container mx-auto py-8 font-normal leading-normal">
			<h3 class="text-2xl">Grow Your Business</h3>
			<p class="">Build high performing teams, establish design practices, mentor and grow the next generation of great designers, and design interfaces and experiences.</p>
			<div class="max-w-sm mt-4 sm:flex">
				<input type="email" class="block w-full focus:outline-0 bg-white py-3 px-6 mb-2 sm:mb-0" name="email" placeholder="Enter your email" required="">
				<button class="uppercase text-sm text-white focus:outline-0 w-full sm:w-auto bg-black hover:bg-gray-900 focus:bg-gray-300 tracking-wide px-6">Subscribe</button>
			</div>
		</div>
	</section>

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
			<div class="w-full lg:w-1/2 lg:py-6"><img src="https://stitches.hyperyolo.com/images/demo-devices.png" alt="image" class="w-full"></div>
		</div>
	</section>

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

	<section class="font-sans container m-auto flex flex-col lg:flex-row justify-center my-8">
		<div class="order-2 lg:order-1 w-full lg:w-1/4 flex flex-col items-center lg:items-end justify-center text-center lg:text-right ml-0 lg:ml-8 mt-8">
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2" alt="Avatar of Jonathan Reinink"></div>
			<h2 class="text-black mb-2 font-normal">Praesent placerat.</h2>
			<p class="text-gray-700 leading-normal mb-8">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2" alt="Avatar of Jonathan Reinink"></div>
			<h2 class="text-black mb-2 font-normal">Fusce pellentesque suscipit nibh.</h2>
			<p class="text-gray-700 leading-normal mb-8">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2" alt="Avatar of Jonathan Reinink"></div>
			<h2 class="text-black mb-2 font-normal">Ut aliquam sollicitudin leo.</h2>
			<p class="text-gray-700 leading-normal">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
		</div>
		<div class="order-1 lg:order-2 w-full lg:w-1/2 max-w-sm m-auto mb-6 lg:mb-0">
			<img src="https://stitches.hyperyolo.com/images/demo-phone.png" alt="">
		</div>
		<div class="order-last w-full lg:w-1/4 flex flex-col items-center lg:items-start justify-center text-center lg:text-left mt-8 mr-8">
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2" alt="Avatar of Jonathan Reinink"></div>
			<h2 class="text-black mb-2 font-normal">Cras iaculis ultricies nulla.</h2>
			<p class="text-gray-700 leading-normal mb-8">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2" alt="Avatar of Jonathan Reinink"></div>
			<h2 class="text-black mb-2 font-normal">Praesent placerat risus quis eros.</h2>
			<p class="text-gray-700 leading-normal mb-8">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
			<div class="w-12 h-12 rounded-full bg-gray-300 mb-2" alt="Avatar of Jonathan Reinink"></div>
			<h2 class="text-black mb-2 font-normal">Nunc dignissim risus id metus.</h2>
			<p class="text-gray-700 leading-normal">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
		</div>
	</section>

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
