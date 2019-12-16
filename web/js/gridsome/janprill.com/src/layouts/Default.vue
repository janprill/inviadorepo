
<template>
	<main class="antialiased bg-primary w-full h-full text-white flex flex-col justify-start items-start font-copy">
    <header class="container mx-auto p-4">
      <div class="text-3xl text-white font-copy font-light">
        janprill
      </div>
    </header>
    <main class="container mx-auto font-copy text-xl">
  		<slot />
    </main>
    <footer class="container mx-auto shadow-primary mb-16">
      <div class="flex bg-primary">
        <div class="flex-auto text-gray-700 bg-gray-400 px-4 py-2 m-2">
          Impressum
        </div>
        <div class="flex-auto text-gray-700 bg-gray-400 px-4 py-2 m-2">
          Datenschutz
        </div>
        <div class="flex-auto text-gray-700 text-left bg-gray-400 px-4 py-2 m-2">
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
