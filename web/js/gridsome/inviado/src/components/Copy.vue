<template>
	<section class="antialiased font-sans w-full text-left text-white bg-black py-8">
    <div class="container mx-auto py-8 font-normal leading-normal flex flex-col md:flex-row">
			<div class="w-full md:w-3/4 leading-normal column-0 lg:column-2 pr-8"> 
				<h1 class="text-white font-neuzeit font-semibold leading-none w-128 text-6xl">
					{{ title }}
				</h1>
				<slot />
			</div>
			<div class="w-full md:w-1/4 border-t md:border-0 mt-6 md:mt-0 pt-6 md:pt-0 pl-8 flex justify-center items-start flex-col text-gray-600">
				<label for="" class="font-bold">{{ label }}</label>
				<p class="leading-normal mt-4 border-0 md:border-l md:pl-4">
					{{ margin }}
				</p>
			</div>
		</div>
	</section>
</template>

<script>
export default {
	props: ['title', 'label', 'margin']
}
</script>