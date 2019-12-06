
<template>
	<main class="antialiased bg-primary w-full h-full text-white flex flex-col justify-start items-start bg-gray-300">
    <header>
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
