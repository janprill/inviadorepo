package com.inviado.service

import com.inviado.model.dao.Links
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
import com.squareup.moshi.JsonAdapter

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


			File("/Users/jan.prill/Documents/workspace/msp/inviadorepo/data/XING/devs")
				.walkTopDown()
				.filter { file -> file.path.endsWith("json", true) }
				.forEach {
					upsertRecord(it, adapter)
				}
		}


	}

	private fun upsertRecord(
		file: File,
		adapter: JsonAdapter<XingPeopleSearch>
	) {
		println(file.absolutePath)
		val source: BufferedSource = Okio.buffer(Okio.source(file.absoluteFile))
		val fromJson = adapter.nullSafe().fromJson(JsonReader.of(source))
		println(fromJson)
		// insert new organizations into the db
		fromJson!!.items.forEach {
			val linkText = it.occupation?.link_text?:""

			val organizationId = Organizations.insertOrUpdate(Organizations.name) { org ->
				org[name] = linkText
				org[description] = ""
				org[isActive] = true
			} get Organizations.id

			Links.insertOrUpdate(Links.uri) { link ->
				link[text] = linkText + " (XING)"
				link[target] = "_blank"
				link[uri] = it.occupation?.link ?: ""
				link[type] = "xing"
				link[organization] = organizationId
			}

			println(it.occupation?.link_text ?: "")
		}
	}

}
