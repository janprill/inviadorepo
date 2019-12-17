
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
            Impressum
          </g-link>
        </div>
        <div class="flex-auto px-4 py-2 m-2">
          <g-link to="/datenschutz">
            Datenschutz
          </g-link>
        </div>
        <div class="flex-auto text-left px-4 py-2 m-2">
          Jan Prill hat 17+ Jahre Erfahrung in der Softwareentwicklung. 10+ Jahre davon Führungserfahrung in DEV-Teams unterschiedlicher Größe. 
          Er hat Teams von 3 bis 12 Personen in Internetstartups, bei global agierenden Informationskonzernen, sowie im Softwaremittelstand geleitet.
          Jan hat - einfach mal so nebenbei - Informationsbusinesses aufgebaut, die digitale Produkte im sechsstelligen Bereich umgesetzt haben.
          Jan ist außerdem Rechtsanwalt und betreibt seit 2007 seine wohnzimmerkanzlei.com.
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
