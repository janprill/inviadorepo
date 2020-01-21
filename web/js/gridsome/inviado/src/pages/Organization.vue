<template>
  <Layout>
    <div class="container mx-auto text-gray-200">
      <div class="md:flex mt-8 m-3">
        <!-- broader left column -->
        <div class="md:w-2/3">
          <section class="max-w-xl text-xl leading-snug">
            <h2 class="text-2xl font-bold mt-8">
              Links
            </h2>
            <p class="mt-4">
              We will help you, <span class="font-bold text-white">as an IT talent</span>, to find a job at one of the software development companies 
              in Hamburg that shows the highest net profit. A key figure such as a company's net profit can help you find the business 
              that really values you and your work and is willing to pay you according to the outstanding value you can create for the organization.
            </p>
          </section>
          <!-- image section -->
          <section class="mt-12 flex">
            <div class="flex-shrink">
              <img src="/images/inviado/891.png"/> 
            </div>
            <div class="flex-grow">
              <h1 class="text-3xl font-bold ml-4">
                Inviado Ltd &amp; Co KG
              </h1>
              <section class="flex ml-1 mt-2">
                <a class="inline-block bg-red-800 rounded-lg px-2 ml-3">
                  Java
                </a>
                <a class="inline-block bg-red-800 rounded-lg px-2 ml-3">
                  Javascript
                </a>
                <a class="inline-block bg-red-800 rounded-lg px-2 ml-3">
                  Scala
                </a>
              </section>
              <SocialIcons />
            </div>
          </section>
          <!-- Link section -->
          <section>
            <h2 class="text-2xl font-bold mt-8">
              Links
            </h2>
            <ul class="mt-2">
              <li class="list-disc list-inside">
                <a class="hover:underline" href="https://kununu.com" target="_blank">
                  Impressum der Inviado Ltd &amp; Co KG
                </a>
              </li>
              <li class="list-disc list-inside">
                <a class="hover:underline" href="https://kununu.com" target="_blank">
                  Karriereseite der Inviado Ltd &amp; Co KG
                </a>
              </li>
              <li class="list-disc list-inside">
                <a class="hover:underline" href="https://kununu.com" target="_blank">
                  Kununuprofil der Inviado Ltd &amp; Co KG
                </a>
              </li>
            </ul>
          </section>
          <section class="max-w-xl text-lg leading-snug text-gray-200">
            <article>
              <h2 class="text-2xl font-bold mt-10 inline flex">
                <div class="-ml-10 mr-2 items-center">
                  <font-awesome :icon="['fas', 'eye']" class="text-white h-4 w-4 shadow-lg m-1 rounded"/>
                </div> 
                <div>
                  Our first impression
                </div>
              </h2>
              <p class="mt-1 pl-3 border-l border-white text-sm">
                <em>
                  A short explanaition why this is important and why it needs to be taken with a grain of salt.
                </em>
              </p>
              <p class="mt-2">
                The Inviado Ltd provides a <span class="font-bold text-white">modern looking responsive website</span>. 
                They mention <span class="font-bold text-white">usual benefits</span> on their career site and
                seem to do <span class="font-bold text-white">some employer branding.</span> 
                The main domain Inviado Ltd is working in seems to be <span class="font-bold text-white">Software Development.</span>
                They've got some nice case studies and reference customers available. 
              </p>
            </article>
            <article>
              <h2 class="text-2xl font-bold mt-10 inline flex">
                <div class="-ml-10 mr-2 items-center">
                  <font-awesome :icon="['fas', 'chart-bar']" class="text-white h-4 w-4 shadow-lg m-1 rounded"/>
                </div> 
                <div>
                  Key performance indices
                </div>
              </h2>
              <p class="mt-1 pl-3 border-l border-white text-sm">
                <em>
                  A short explanaition why this is important and why it needs to be taken with a grain of salt.
                </em>
              </p>
              <p class="mt-2">
                The Inviado Ltd provides a <span class="font-bold text-white">modern looking responsive website</span>. 
                They mention <span class="font-bold text-white">usual benefits</span> on their career site and
                seem to do <span class="font-bold text-white">some employer branding.</span> 
                The main domain Inviado Ltd is working in seems to be <span class="font-bold text-white">Software Development.</span>
                They've got some nice case studies and reference customers available. 
              </p>
            </article>
            <article>
              <h2 class="text-2xl font-bold mt-10">
                What people think
              </h2>
              <p class="mt-1 pl-3 border-l border-white text-sm">
                <em>
                  A short explanaition why this is important and why it needs to be taken with a grain of salt.
                </em>
              </p>
              <p class="mt-2">
                The Inviado Ltd provides a <span class="font-bold text-white">modern looking responsive website</span>. 
                They mention <span class="font-bold text-white">usual benefits</span> on their career site and
                seem to do <span class="font-bold text-white">some employer branding.</span> 
                The main domain Inviado Ltd is working in seems to be <span class="font-bold text-white">Software Development.</span>
                They've got some nice case studies and reference customers available. 
              </p>
            </article>
            <article>
              <h2 class="text-2xl font-bold mt-10">
                Who you would work with
              </h2>
              <p class="mt-1 pl-3 border-l border-white text-sm">
                <em>
                  A short explanaition why this is important and why it needs to be taken with a grain of salt.
                </em>
              </p>
              <p class="mt-2">
                The Inviado Ltd provides a <span class="font-bold text-white">modern looking responsive website</span>. 
                They mention <span class="font-bold text-white">usual benefits</span> on their career site and
                seem to do <span class="font-bold text-white">some employer branding.</span> 
                The main domain Inviado Ltd is working in seems to be <span class="font-bold text-white">Software Development.</span>
                They've got some nice case studies and reference customers available. 
              </p>
            </article>
          </section>
        </div>
        <!-- tighter right column -->
        <div class="md:w-1/3">
          <!-- our service -->
          <article class="mt-8 md:m-3 md:p-3 shadow-service bg-red-800 leading-tight"> 
            <h2 class="text-2xl font-bold">
              Our service
            </h2>
            <p class="text-md mt-3">
              We help you to secure an outstandingly well-paid job with a top company. With our know-how you will increase your chances considerably.
            </p>
            <p class="text-md mt-3">
              We’ll find hidden champions for you. Companies you might not have considered otherwise. 
            </p>
            <p class="text-md mt-3">
              We believe securing such a job can take your life to a whole new level. Once you are no longer plagued by a constant worry about money, opportunities will open up in all areas of your life. 
            </p>
            <p class="text-md mt-3">
              We are curious how you will develop with our help. Arrange a first, completely non-binding telephone conversation now. 
              You will be surprised what insights we can give you in this first telephone conversation. 
              And we promise: We will not get on your nerves with marketing gibberish. 
              We will help you get the job and our service will be paid by the company that hires you. 
            </p>
            <p class="text-md mt-3">
              It's that simple.
            </p>
            <div class="flex justify-between mt-6">
              <div class="">
                <button class="bg-transparent hover:bg-green-100 font-semibold hover:text-white py-2 px-4 border border-blue hover:border-transparent rounded">
                    Schedule a free call
                </button>
              </div>
              <div class="">
                <button class="bg-transparent hover:bg-green-100 font-semibold hover:text-white py-2 px-4 border border-blue hover:border-transparent rounded">
                    Chat with me
                </button>
              </div>
            </div>
          </article>
        </div>
      </div>
    </div>
  </Layout>
</template>

<script>
  import SocialIcons from '@/components/SocialIcons'
  export default {
    components: {
      SocialIcons
    }
  }
</script>