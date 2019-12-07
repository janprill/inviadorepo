
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
    <footer></footer>
	</main>
</template>

<static-query>
query {
  metadata {
    siteName
  }
}
</static-query>
