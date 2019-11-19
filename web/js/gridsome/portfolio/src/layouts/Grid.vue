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
        <div class="flex min-h-screen bg-black w-full mx-1 md:mx-4 xl:mx-7 p-4">
          <div class="min-h-screen md:justify-center mx-auto max-w-6xl" v-prlx.mobile="{}">
            <h1 class="text-white font-neuzeit font-semibold leading-none w-128 text-2xl md:text-3xl lg:text-5xl xl:text-8xl">
              5 Wege, Dein Gehalt zu verdoppeln.
            </h1>
            <p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
              Für zwei davon musst Du nicht einmal verhandeln. Kaum jemand kennt sie. Wir zeigen Dir Schritt für Schritt den Weg. 
              Als Entwickler, Tech PM oder Data Scientist gibt es keine bessere Zeit als heute, um Dein Leben auf allen Ebenen massiv zu verbessern.
            </p>
            <p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
              Lade jetzt Deinen kostenlosen 80-seitigen Report herunter, um die Tricks der 'High-Achiever' zu lernen, die bei gleicher Arbeit mehr als das doppelte verdienen.
            </p>
          </div>
        </div>
      </div>
      <div class="lg:flex lg:flex-row mx-10 mt-32">
        <div class="bg-gray-200 lg:w-1/2">
          <parallax-container class="image-container m-auto max-w-6xl" :animationDuration="duration" :easing="easing" style="position: relative;height: 70vh;">
            <parallax-element type="translation" perspective="100" parallaxStrength="-5" tag="div" class="bg-gradient" />
            <parallax-element type="translation" perspective="100" parallaxStrength="10" tag="img" src="./balloons/balloons.png" class="parallaximage" />
          </parallax-container>
        </div>
        <div class="bg-gray-400 lg:w-1/2 p-6">
          <h2 class="text-white font-semibold font-neuzeit md:text-3xl lg:text-5xl xl:text-6xl">
            (reich && frei) == true
          </h2>
          <div class="text-white font-copy text-2xl leading-tight">
            <p class="mt-6">
              Wir wollen Dich wohlhabend machen. Wir möchten, dass Du frei bist. 
              Seien wir doch mal ehrlich. Wer von uns will nicht, dass der Ausdruck oben wahr ist?
            </p>
            <p class="mt-6">
              Oder verursacht Dir diese Vorstellung Nackenschauer? Schlägt Deine langjährige Mittelschichterziehung durch?
              "Geld macht doch nicht glücklich. Geld ist mir nicht so wichtig." Bitte mach' Dich frei von diesen ablehnenden Gedanken. 
              Wir sind überzeugt davon, dass ethisch korrekter Wohlstand möglich ist. 
              Ihn zu erreichen ist Deine Pflicht! Denn - glaube uns - andere haben mit dem Geld weniger 
              hehre Ziele als Du.
            </p>
            <p class="mt-6">
              Erkläre bitte: Was wäre schlimm daran, wenn Geld nicht mehr zu Deinen Problemen gehören würde? Wir helfen Dir dabei.
            </p>
          </div>
        </div>
      </div>
      <div class="flex flex-row flex-grow w-full bg-gray-300">
        Call to action
      </div>
    </div>

    <div class="m-6 mx-auto">
      <div class="flex flex-row">
        <div class="flex min-h-screen bg-black w-full mx-1 md:mx-4 xl:mx-7 p-4">
          <div class="min-h-screen md:justify-center mx-auto max-w-6xl" v-prlx.mobile="{}">
            <h1 class="text-white font-neuzeit font-semibold leading-none w-128 text-2xl md:text-3xl lg:text-5xl xl:text-8xl">
              Wir öffnen Dir Türen.
            </h1>
            <p class="mt-6 text-gray-200 font-copy leading-tight text-xl md:text-2xl lg:text-3xl xl:text-4xl">
              Bereits in unserem kostenlosen eBook zeigen wir Dir, ohne jedes Risiko für Dich, wie Du Deine Karriere auf 
              Steroide setzt. Du lernst dort die Maßnahmen, die Dich zum wichtigsten Player in Deinem Team machen und wie 
              Du erreichst, dass dies auch von denjenigen Entscheidern wahrgenommen wird, die über Deine Gehaltserhöhung entscheiden.
              Du wirst Dich wundern, welche Türen plötzlich aufgehen, sobald Du den glasklaren Maßnahmen aus unserem eBook folgst.
            </p>
          </div>
        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-1/2 h-64 bg-gray-100">
          Wenn Du mit der inviado Methode beginnst, Deine Karriere zu beschleunigen und Dein Gehalt zu erhöhen, dann wirst Du
          Dein Mindset verändern. Du wirst staunen, welche Türen aufgehen. Ich freue mich sehr darauf, Dich zu begleiten, die zur 
          helfen, die Hürden aus dem Weg zu räumen und die Türen aufzustoßen.
        </div>
        <div class="w-1/2 h-64 bg-gray-300">
          Bild: Tür auf
        </div>
      </div>
      <div class="flex flex-row flex-grow w-full bg-gray-300">
        Call to action
      </div>
    </div>

    <div class="m-6 mx-auto">
      <div class="flex flex-row">
        <div class="flex min-h-screen bg-black w-full mx-1 md:mx-4 xl:mx-7 p-4">
          <div class="min-h-screen md:justify-center mx-auto max-w-6xl" v-prlx.mobile="{}">
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
        <div class="w-full bg-gray-500">
          Bullet points
          <ul>
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
      <div class="flex flex-row mx-10">
        <div class="flex w-full bg-gray-500 h-screen">
          <div class="flex flex-col justify-center items-center mx-auto w-2/3" v-prlx.mobile="{}">
            <h1 class="text-white mx-auto text-center text-4xl font-neuzeit font-extrabold leading-none">
              Ich freue mich sehr für Dich!
            </h1>
            <p class="text-gray-200 font-copy text-2xl leading-tight text-center mt-6">
              Das Du diese Seite nun entdeckt hast, kann ein echter Wendepunkt in Deinem Leben sein. Lass Dich doch erstmals ein auf den Gedanken,
              das Du ethisch korrekt endlich das Geld verdienen kannst, dass Du für Dein Unternehmen tatsächlich wert bist. Einfach die wirklich 
              faire Kompensation für Deine extrem wertvollen Leistungen. Wir werden das für Dich erreichen. Und dann ist plötzlich nach oben alles offen.
              Ein paar Beispiele was unsere Kunden mit dieser Freiheit gemacht haben:
            </p>
            <p>
              Ein höheres Gehalt bringt Dir klar erkennbare, nicht bestreitbare Vorteile und gerade deswegen ist es so absolut unverständlich, warum 
              Du Dein Recht, auf ein faire Kompensation, nicht ganz regelmäßig durchsetzt. Du bist es Deinen Lieben, Dir und vor allem Deinem Potential
              schuldig, jetzt damit zu beginnen, Dich auf eine faire, über dem Marktdurchschnitt liegende Vergütungsstufe zu heben.
            </p>
            <ul>
              <li>Dein aktuelles Gehalt beeinflusst jedes weitere, höhere Gehalt, das Du im Laufe Deiner Karriere erreichst.</li>
              <li>Dein Gehalt bestimmt Deinen Rentenanspruch und Deine Möglichkeiten zur privaten Altersvorsorge.</li>
              <li>Dein Verdienst determiniert Status und Deine Möglichkeiten, Freiheit zu kaufen.</li>
              <li>Deine Kompensation ist die am klarsten sichtbare Wertschätzung, die Dir Dein Arbeitgeber entgegenbringt und bestimmt zwangsläufig auch Dein Selbstwertgefühl. Ob Du willst oder nicht.</li>
              <li>Dein Gehalt beeinflusst, welche Bildungsmöglichkeiten Du Deinen Kinder eröffnen kannst und wie Du später, in ihrem Alter für Deine Eltern sorgen kannst.</li>
            </ul>
          </div>
        </div>
      </div>>
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
          <h3>Die Welt retten</h3>
          <p>
            Geld, das Du verdienst und nicht für Dein eigenes Wohlergehen brauchst, kannst Du einsetzen, um Gutes zu tun. Häufig wirst Du, wenn ein 
            Grundstock an Vermögen vorhanden ist, dieses so investieren können, dass es Gutes tut und sich dabei sogar vermehrt. Du wirst Unternehmer und 
            setzt Dein Kapital ein, um nachhaltig zu wirtschaften und dabei Menschen zu helfen. Klingt das nach einer lohnenswerten Investition Deiner Zeit
            und Deines Geldes? Dann sieh' zu, dass Du mit unserer Hilfe den ersten Schritt gehst und jetzt damit beginnst, Dein Gehalt so zu erhöhen, das 
            Vermögensaufbau (endlich) möglich wird. -> 
          </p>
        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-2/3 h-64 bg-gray-500">
          Weiter wachsen.
        </div>
        <div class="w-1/3 h-64 bg-gray-600">
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
<link rel="stylesheet" href="https://use.typekit.net/qqr0xyz.css">

<style scoped>
  .parallaximage {
    position:absolute;top: 0;left: 0;height: 100%;
  }
  .transformer {
    transform: scale(calc(var(--parallax-value) / 70 ));
  }
</style


