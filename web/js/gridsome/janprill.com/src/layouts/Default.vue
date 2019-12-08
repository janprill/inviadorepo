
<template>
	<main class="antialiased bg-primary w-full h-full text-white flex flex-col justify-start items-start font-body">
    <header class="container mx-auto p-4">
      <div class="text-3xl text-white font-copy font-light">
        janprill
      </div>
    </header>
    <main class="container mx-auto">
  		<slot />
    </main>
    <footer class="container mx-auto shadow-primary">
      <div class="flex bg-primary">
        <div class="flex-auto text-gray-700 bg-gray-400 px-4 py-2 m-2">
          Short
        </div>
        <div class="flex-auto text-gray-700 bg-gray-400 px-4 py-2 m-2">
          Medium length
        </div>
        <div class="flex-auto text-gray-700 text-right bg-gray-400 px-4 py-2 m-2">
          Significantly larger amount of content
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
