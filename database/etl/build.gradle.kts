plugins {
    java
	application
    kotlin("jvm") version "1.3.61"
	kotlin("kapt") version "1.3.61"
}

group = "com.inviado.database"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
	jcenter()
}

dependencies {
	implementation(kotlin("stdlib-jdk8"))
	testCompile("junit", "junit", "4.12")
	compile("com.squareup.moshi", "moshi", "1.9.2")
	compile("com.squareup.moshi", "moshi-kotlin", "1.9.2")
	compile("com.squareup.moshi", "moshi-kotlin-codegen", "1.9.2")
	// kapt("com.squareup.moshi:moshi-kotlin-codegen:1.9.2")
	compile("org.jetbrains.exposed", "exposed-core", "0.19.3")
	compile("org.jetbrains.exposed", "exposed-dao", "0.19.3")
	compile("org.jetbrains.exposed", "exposed-jdbc", "0.19.3")
	compile("org.postgresql:postgresql:42.2.2")
}

configure<JavaPluginConvention> {
    sourceCompatibility = JavaVersion.VERSION_1_8
}
tasks {
    compileKotlin {
        kotlinOptions.jvmTarget = "11"
    }
    compileTestKotlin {
        kotlinOptions.jvmTarget = "11"
    }
}
