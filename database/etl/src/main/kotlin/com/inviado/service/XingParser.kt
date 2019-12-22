package com.inviado.service

import com.inviado.model.xing.XingPeopleSearch
import com.squareup.moshi.JsonReader
import com.squareup.moshi.Moshi
import com.squareup.moshi.kotlin.reflect.KotlinJsonAdapterFactory
import okio.BufferedSource
import okio.Okio
import java.io.File

object XingParser {

	@JvmStatic
	fun main(args: Array<String>) {
		val moshi = Moshi.Builder()
			// ... add your own JsonAdapters and factories ...
			.add(KotlinJsonAdapterFactory())
			.build()


		val adapter = moshi.adapter<XingPeopleSearch>(XingPeopleSearch::class.java)

		File("/Users/jan.prill/Documents/workspace/msp/inviadorepo/data/XING/devs/01")
			.walk()
			.filter { file -> file.path.endsWith("json", true) }
			.forEach {
			    val	source: BufferedSource = Okio.buffer(Okio.source(it.absoluteFile))
				val fromJson = adapter.fromJson(JsonReader.of(source))
				println(fromJson)
			}

	}


}
