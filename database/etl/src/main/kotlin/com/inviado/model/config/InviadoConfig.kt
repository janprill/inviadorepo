package com.inviado.model.config

import com.squareup.moshi.Moshi
import com.squareup.moshi.kotlin.reflect.KotlinJsonAdapterFactory
import okio.Okio
import java.io.File
import kotlin.properties.Delegates

data class Config(
	val bing: Bing

) {
	override fun toString(): String {
		return "Config(bing=$bing)"
	}
}

data class Bing(
	val key: String

) {
	override fun toString(): String {
		return "Bing(key='$key')"
	}
}

class InviadoConfig {

	var config: Config?

	init {
		val moshi = Moshi.Builder()
			.add(KotlinJsonAdapterFactory())
			.build()

		val adapter = moshi.adapter(Config::class.java)
		config =
			adapter.fromJson(Okio.buffer(Okio.source(File("/Users/jan.prill/.secrets/inviado.settings.json"))))
	}
}

