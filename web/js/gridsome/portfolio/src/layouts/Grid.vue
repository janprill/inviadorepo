<template>
  <div class="m-0">

    <header class="flex items-center justify-between px-4 py-3 bg-black">
      <div class="text-white font-neuzeit font-bold">
        inviado
      </div>
      <div>
        <button type="button" class="block text-gray-500 hover:text-white focus:text-white focus:outline-none">
          <svg class="h-6 w-6 fill-current" viewBox="0 0 24 24">
            <path fill-rule="evenodd" d="M4 5h16a1 1 0 0 1 0 2H4a1 1 0 1 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2z"/>
          </svg>
        </button>
      </div>
    </header>

    <div class="m-2 md:m-3 xl:m-6 mx-auto">
      <div class="flex flex-row">
        <div class="bg-black w-full mx-1 md:mx-4 xl:mx-7 p-4 pb-64">
          <div class="md:justify-center mx-auto max-w-6xl">
            <h1 class="text-white font-neuzeit font-semibold leading-none w-128 text-2xl md:text-3xl lg:text-5xl xl:text-8xl">
              5 Wege, Dein Gehalt zu verdoppeln.
            </h1>
            <p class="mt-6 text-gray-300 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
              Für zwei davon musst Du <span class="font-bold text-white">nicht einmal verhandeln</span>. Kaum jemand kennt sie. Wir zeigen Dir Schritt für Schritt den Weg. 
              Als Entwickler, Tech PM oder Data Scientist gibt es keine bessere Zeit als heute, um Dein Leben auf allen Ebenen massiv zu verbessern.
            </p>
            <p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
              Lade jetzt Deinen kostenlosen 80-seitigen Report herunter, um die Tricks der 'High-Achiever' zu lernen, die bei gleicher Arbeit mehr als das doppelte verdienen.
            </p>
            <form class="flex flex-grow w-full mt-16 justify-start">
              <div class="md:flex md:items-center mb-6 justify-start w-full">
                <div class="w-1/3 p-2">
                  <input placeholder="Dein Vorname*" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500" id="inline-email" type="email">
                </div>
                <div class="w-1/3 p-2">
                  <input placeholder="Email*" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500" id="inline-email" type="email">
                </div>
                <div class="w-1/3 p-2">
                  <button class="text-white font-copy font-bold leading-none text-xl ml-4 bg-gradient hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">
                    Schickt mir 5 Wege, mein Gehalt zu verdoppeln.
                  </button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="m-2 md:m-3 xl:m-6 mx-auto mt-64">
      <div class="lg:flex lg:flex-row mx-1 md:mx-4 xl:mx-7">
        <div class="w-full bg-gradient lg:w-1/2 p-8">
          <parallax-container class="image-container" :animationDuration=700>
            <parallax-element type="translation" :parallaxStrength=5 tag="img" src="./balloons/balloons_middle.png" class="parallaximage" />
            <parallax-element type="translation" :parallaxStrength=10 tag="img" src="./balloons/balloons_left.png" class="parallaximage" />
            <parallax-element type="translation" :parallaxStrength=-5 tag="img" src="./balloons/balloons_bottom.png" class="parallaximage" />
          </parallax-container>
        </div>
        <div class="w-full bg-black lg:w-1/2 p-6">
          <h2 class="text-white leading-none font-semibold font-neuzeit md:text-3xl lg:text-5xl xl:text-6xl">
            Frei wie ein Vogel sollst Du sein.
          </h2>
          <div class="text-white font-copy text-2xl leading-tight">
            <p class="mt-6">
              Wir möchten, dass Du frei bist. Und wir möchten helfen, dass Du reich wirst.
            </p>
            <p class="mt-6">
              Ja! Wir haben das wirklich geschrieben. Verursacht Dir diese Vorstellung ein klammes Gefühl? 
              So das Du direkt vor dem Ausblick auf Wohlstand weglaufen möchtest?
              Dann lies unbedingt weiter!
            </p>
            <p class="mt-6">
              Du wirst gerade von Deiner langjährigen Mittelschichtserziehung gebeutelt:
              "Geld macht doch nicht glücklich. Geld ist mir nicht so wichtig."
            </p>
            <p class="mt-6">
              Aber das sollte es, zumindest wenn Du frei sein möchtest.
              Ethisch korrekter Wohlstand ist möglich. Ihn zu erreichen ist Deine Pflicht.
              Denn - glaube uns - andere haben mit dem Geld weniger 
              hehre Ziele als Du. Denk' mal darüber nach!
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="m-6 mx-auto mt-64">
      <div class="flex flex-row">
        <div class="flex bg-black w-full mx-1 md:mx-4 xl:mx-7 p-4">
          <div class="md:justify-center mx-auto max-w-6xl">
            <h1 class="text-white font-neuzeit font-semibold leading-none w-128 text-2xl md:text-3xl lg:text-5xl xl:text-8xl">
              Wir öffnen Dir Türen.
            </h1>
            <p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
              Bereits in unserem kostenlosen eBook zeigen wir Dir, ohne jedes Risiko für Dich, wie Du Deine Karriere auf 
              Steroide setzt. Du lernst dort die Maßnahmen, die Dich zum wichtigsten Player in Deinem Team machen und wie 
              Du erreichst, dass dies auch von denjenigen Entscheidern wahrgenommen wird, die über Deine Gehaltserhöhung entscheiden.
              Du wirst Dich wundern, welche Türen plötzlich aufgehen, sobald Du den glasklaren Maßnahmen aus unserem eBook folgst.
            </p>
            <p>
              Wenn Du mit der inviado Methode beginnst, Deine Karriere zu beschleunigen und Dein Gehalt zu erhöhen, dann wirst Du
              Dein Mindset verändern. Du wirst staunen, welche Türen aufgehen. Ich freue mich sehr darauf, Dich zu begleiten, die zur 
              helfen, die Hürden aus dem Weg zu räumen und die Türen aufzustoßen.
            </p>
          </div>
        </div>
      </div>
      <div class="flex flex-row">
        <div class="flex w-full mx-auto justify-center mt-64">
          <img src="../../static/door.jpg" />
        </div>
      </div>
    </div>

    <div class="m-6 mx-auto">
      <div class="flex flex-row">
        <div class="flex min-h-screen bg-black w-full mx-1 md:mx-4 xl:mx-7 p-4">
          <div class="min-h-screen md:justify-center mx-auto max-w-6xl">
            <h1 class="text-white font-neuzeit font-semibold leading-none w-128 text-2xl md:text-3xl lg:text-5xl xl:text-8xl">
              Grüner wird es nicht
            </h1>
            <p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
              Bitte sieh' den Tatsachen ins Auge. Auch Du hast nicht ewig Zeit. Es wird Zeit, aus dem Quark zu kommen. 
              Die Zeiten sind für Dich, als Dev, als Tech PM oder als Data Scientist günstig wie nie. Du hast aktuell
              die absolut realistische Chance Geld zu verdienen, wie Dein Zahnarzt. Du gehörst zu einer Berufsgruppe, 
              die gesucht ist, wie keine andere. Aber was machst Du derzeit daraus. Bohrst Du so dicke Bretter, wie es
              Dein Potential erlaubt? Wir helfen Dir, das Leben zu leben, das Du Dir wünschst. Das Geld auf Deinem Konto 
              eingehen zu sehen, dass Du wirklich verdienst. Zögere nicht zu lange! Du wirst es Dir nicht verzeihen..
            </p>
          </div>
        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-2/3 h-64 bg-gray-100">
          But!
        </div>
        <div class="w-1/3 h-64 bg-gray-300">
          We've got your back!
        </div>
      </div>
      <div class="flex flex-row flex-grow w-full bg-gray-300">
        Call to action
      </div>
    </div>
    <div class="m-6 mx-auto">
      <div class="flex flex-row">
        <div class="w-full bg-gray-500 p-10">
          Bullet points
          <ul class="list-disc">
            <li class="mt-16" data-aos="slide-up" data-aos-easing="linear" data-aos-duration="800">
              <h3>80-Seiten geballte Informationen</h3>
              <p>Wie Du jetzt Dein Gehalt verdoppelst und mit dem Vermögenaufbau beginnst.</p>
            </li>
            <li class="mt-16" data-aos="slide-up" data-aos-easing="linear" data-aos-duration="800">
              <h3>Leck-mich-Geld...</h3>
              <p>sagen einige und es ist für Dich der Einstieg in eine viel größere Freiheit.</p>
            </li>
            <li class="mt-16" data-aos="slide-up" data-aos-easing="linear" data-aos-duration="800">
              <h3>Fünf kreative Wege zur Gehaltserhöhung</h3>
              <p>von denen Du wahrscheinlich noch nie gehört hast.</p>
            </li>
            <li class="mt-16" data-aos="slide-up" data-aos-easing="linear" data-aos-duration="800">
              <h3>Ein unfairer Vorteil gegenüber Deinen Kollegen</h3>
              <p>Ohne diese Informationen, werden Sie nie die gleiche Chance auf ein ähnliches Gehalt haben.</p>
            </li>
            <li class="mt-16 mb-32" data-aos="slide-up" data-aos-easing="linear" data-aos-duration="800">
              <h3>Wut! Nachdem Dir die Schuppen von den Augen fallen</h3>
              <p>Du wirst staunen, was Deine Vorgesetzten und Geschäftsführer verdienen. Vorsicht, Du könntest wütend werden. Aber darin liegt eine große Chance.</p>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <div class="m-6 mx-auto">
      <div class="flex flex-row">
        <div class="flex bg-black w-full mx-1 md:mx-4 xl:mx-7 p-4">
          <div class="md:justify-center mx-auto max-w-6xl">
            <h1 class="text-white font-neuzeit font-semibold leading-none w-128 text-2xl md:text-3xl lg:text-5xl xl:text-8xl">
              Ich freue mich sehr für Dich!
            </h1>
            <p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
              Das Du diese Seite nun entdeckt hast, kann ein echter Wendepunkt in Deinem Leben sein. Lass Dich doch erstmals ein auf den Gedanken,
              das Du ethisch korrekt endlich das Geld verdienen kannst, dass Du für Dein Unternehmen tatsächlich wert bist. Einfach die wirklich 
              faire Kompensation für Deine extrem wertvollen Leistungen. Wir werden das für Dich erreichen. Und dann ist plötzlich nach oben alles offen.
              Ein paar Beispiele was unsere Kunden mit dieser Freiheit gemacht haben:
            </p>
            <p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
              Ein höheres Gehalt bringt Dir klar erkennbare, nicht bestreitbare Vorteile und gerade deswegen ist es so absolut unverständlich, warum 
              Du Dein Recht, auf ein faire Kompensation, nicht ganz regelmäßig durchsetzt. Du bist es Deinen Lieben, Dir und vor allem Deinem Potential
              schuldig, jetzt damit zu beginnen, Dich auf eine faire, über dem Marktdurchschnitt liegende Vergütungsstufe zu heben.
            </p>
            <ul class="list-disc min-h-screen text-white font-copy text-xl md:text-2xl lg:text-3xl xl:text-4xl mt-16">
              <li>Dein aktuelles Gehalt beeinflusst jedes weitere, höhere Gehalt, das Du im Laufe Deiner Karriere erreichst.</li>
              <li>Dein Gehalt bestimmt Deinen Rentenanspruch und Deine Möglichkeiten zur privaten Altersvorsorge.</li>
              <li>Dein Verdienst determiniert Status und Deine Möglichkeiten, Freiheit zu kaufen.</li>
              <li>Deine Kompensation ist die am klarsten sichtbare Wertschätzung, die Dir Dein Arbeitgeber entgegenbringt und bestimmt zwangsläufig auch Dein Selbstwertgefühl. Ob Du willst oder nicht.</li>
              <li>Dein Gehalt beeinflusst, welche Bildungsmöglichkeiten Du Deinen Kinder eröffnen kannst und wie Du später, in ihrem Alter für Deine Eltern sorgen kannst.</li>
            </ul>
          </div>
        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-2/3 bg-gray-100">
          <div class="w-108">
            <h3 class="text-gray-400 font-2xl font-neuzeit">
              Die Welt umsegeln.
            </h3>
            <p>
              Eine Weltumsegelung ist ein synonym für eines der erreichbaren, letzten Abenteuer unserer Zeit. Und es muss ja nicht gleich die ganze
              Welt sein. Eine Atlantiküberquerung vorzubereiten, alle Schritte sorgfältig zu planen. Eventuell überhaupt die ersten Schläge zu segeln, 
              um sich an die große Aufgabe herantasten. Das wäre ein Paradebeispiel, wie Du in Deinem Leben von der Seitenlinie wegtritts und auf das
              Spielfeld wechselst. Es ist ein Synonym für jede, vielleicht viel kleinere Maßnahme, mit der Du Deine Komfortzone verlässt und Erfahrungen 
              machst, die Du sonst nur bei anderen bewundert und auf Youtube staunend betrachtet hast. 
            </p>
            <p>
              Was Du auch tust, welches Hobby Du neu erlernst. Sei es Modellbootsegeln, Segelfliegen oder einfach die Leidenschaft, Uhren zu sammeln:
              Du wirst Geld benötigen, für diese Erfahrung und deswegen ist unser gemeinsamer erster Schritt, das Erhöhen Deines Gehalts und die
              Beschleunigung Deiner Karriere. -> 
            </p>
          </div>
        </div>
        <div class="w-1/3 h-64 bg-gray-200">
          Bild
        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-1/3 h-64 bg-gray-300">
          Bild
        </div>
        <div class="w-2/3 h-64 bg-gray-400">
          <h3>Deine Villa? Dein Gehalt macht den Unterschied.</h3>
          <p>
            Die Immobilienpreise besonders in guten Lagen sind in den letzten Jahren explodiert. Du hast Dich wahrscheinlich auch schon öfter gefragt,
            wer eigentlich so viel Geld hat, eine Villa in guter Lage zu kaufen. Du könntest dieses Geld haben. Dein Gehalt macht den Unterschied. 
            Für die meisten ist es ein Traum in weiter Ferne. Aber es gibt Menschen, bei denen macht der Kaufpreis so einer Villa ein Zehntel ihres Jahresgehalts 
            aus (Vorstandsmitglieder von DAX-Unternehmen), oder aber 3 Jahresgehälter (Geschäftsführer großer Mittelständler), wir können Dich, als Spezialisten
            in einer extrem gesuchten Berufsgruppe dahin coachen, dass es 6-10 Jahresgehälter für Dich sind und das ist dann schon sehr überschaubar und 
            bestens finanzierbar. Dein Gehalt macht den Unterschied. Würdest Du so ein Haus nicht gerne Deinen Kindern hinterlassen?
          </p>
        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-2/3 h-64 bg-gray-500">
          <h3>Weiter wachsen.</h3>
          <p>
            Für viele ist mehr Gehalt nur der erste Schritt. Gerade Entwickler, mit ihrem tief verwurzelten Wunsch, neues zu schaffen - eben zu entwickeln, 
            sind letztlich für angestellte Arbeit nicht geschaffen. Sie möchten etwas eigenes machen. Nicht nur für jemand anderen entwickeln, sondern 
            ihr eigenes Unternehmen schaffen. Aber auch hier ist die Grundlage eine Vermögensbildung, denn selbst wenn Kapital von Kapitalgebern eingeworben wird,
            braucht man einige persönliche "Runway". Letztlich also Geld, um seine Träume zu verwirklichen. Wir sorgen dafür, dass Deine Träume freie Fahrt bekommen ->
          </p>
        </div>
        <div class="w-1/3 h-64 bg-gray-600">
          Bild
        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-1/3 h-64 bg-gray-300">
          Bild
        </div>
        <div class="w-2/3 h-64 bg-gray-400">
          <h3>Weiter wachsen.</h3>
          <p>
            Für viele ist mehr Gehalt nur der erste Schritt. Gerade Entwickler, mit ihrem tief verwurzelten Wunsch, neues zu schaffen - eben zu entwickeln, 
            sind letztlich für angestellte Arbeit nicht geschaffen. Sie möchten etwas eigenes machen. Nicht nur für jemand anderen entwickeln, sondern 
            ihr eigenes Unternehmen schaffen. Aber auch hier ist die Grundlage eine Vermögensbildung, denn selbst wenn Kapital von Kapitalgebern eingeworben wird,
            braucht man einige persönliche "Runway". Letztlich also Geld, um seine Träume zu verwirklichen. Wir sorgen dafür, dass Deine Träume freie Fahrt bekommen ->
          </p>
        </div>
      </div>
      <div class="flex flex-row flex-grow w-full bg-gray-300">
        Call to action
      </div>
    </div>

    <main>
    </main>

    <slot />

    <footer>
      footer 
    </footer>
    
  </div>
</template>


<script>
import { ParallaxContainer, ParallaxElement } from 'vue-mouse-parallax'
export default {
  props: [],
  data() {
    return {
      isOpen: false,
    }
  },
  methods: {
    toggle() {
      this.isOpen = !this.isOpen
    },
  },
  components: {
     ParallaxContainer,
     ParallaxElement,
  },
}
</script>

<style src="../css/main.css" />



