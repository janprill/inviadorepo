
<template>
	<main class="antialiased bg-primary w-full h-full text-white flex flex-col justify-start items-start font-neu font-normal">
    <header class="container mx-auto p-4">
      <div class="text-3xl text-white font-copy font-light">
        <g-link to="/">
          janprill
        </g-link>
      </div>
    </header>
    <main class="container mx-auto text-lg">
  		<slot />
    </main>
    <footer class="mt-16 container mx-auto shadow-primary mb-16 text-gray-500 text-sm md:text-base">
      <div class="md:flex bg-primary">
        <div class="flex-auto px-4 py-2 m-2">
          <g-link to="/impressum">
            Legal&nbsp;Notice
          </g-link>
        </div>
        <div class="flex-auto px-4 py-2 m-2">
          <g-link to="/datenschutz">
            Data&nbsp;protection
          </g-link>
        </div>
        <div class="flex-auto text-left px-4 py-2 m-2">
          Jan Prill has 17+ years of experience in software development. 10+ years of which include leadership experience in DEV teams of various sizes. He has led teams of 3 to 12 people in Internet startups, global information enterprises, and medium-sized software companies. Jan has - as a side hustle - built up information businesses that have turned over six-figures worth of digital products per year. Jan is also a lawyer and has been running his wohnzimmerkanzlei.com since 2007.
        </div>
      </div>
    </footer>
	</main>
</template>

<static-query>
query {
  metadata {
    siteName
  }
}
</static-query>

<style>
  body {
    background-color: #272727;
    color: #ddd;
  }
</style>
