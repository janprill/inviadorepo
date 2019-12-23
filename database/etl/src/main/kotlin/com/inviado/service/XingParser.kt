package com.inviado.service

import com.inviado.model.dao.Links
import com.inviado.model.dao.Organization
import com.inviado.model.dao.Organizations
import com.inviado.model.xing.XingPeopleSearch
import com.squareup.moshi.JsonReader
import com.squareup.moshi.Moshi
import com.squareup.moshi.kotlin.reflect.KotlinJsonAdapterFactory
import okio.BufferedSource
import okio.Okio
import org.jetbrains.exposed.sql.Database
import org.jetbrains.exposed.sql.SchemaUtils
import org.jetbrains.exposed.sql.StdOutSqlLogger
import org.jetbrains.exposed.sql.addLogger
import org.jetbrains.exposed.sql.transactions.transaction
import java.io.File
import com.inviado.utils.insertOrUpdate

object XingParser {

	@JvmStatic
	fun main(args: Array<String>) {
		Database.connect("jdbc:postgresql://localhost:5432/inviado", driver = "org.postgresql.Driver",
			user = "jan.prill", password = "")

		val moshi = Moshi.Builder()
			.add(KotlinJsonAdapterFactory())
			.build()

		val adapter = moshi.adapter<XingPeopleSearch>(XingPeopleSearch::class.java)

		transaction {
			// print sql to std-out
			addLogger (StdOutSqlLogger)

			SchemaUtils.create (Links, Organizations)


			File("/Users/jan.prill/Documents/workspace/msp/inviadorepo/data/XING/devs/01")
				.walk()
				.filter { file -> file.path.endsWith("json", true) }
				.forEach {
					println(it.absolutePath)
					val	source: BufferedSource = Okio.buffer(Okio.source(it.absoluteFile))
					val fromJson = adapter.nullSafe().fromJson(JsonReader.of(source))
					println(fromJson)
					// insert new organizations into the db
					fromJson!!.items.forEach {
						Organizations.insertOrUpdate(Organizations.name) { org ->
							org[name] = it.occupation?.link_text?:""
						}
						println(it.occupation?.link_text?:"")
					}
				}
		}


	}

}
